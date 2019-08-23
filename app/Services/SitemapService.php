<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/28
 * Time: 15:34
 */
namespace App\Services;

use App;
use App\Models\Topic;
use Log;

class SitemapService {
    public function buildArticles()
    {
        $sitemap = App::make("sitemap");

        $sitemapName = '';
        $articlesData = [];

        Topic::query()->select(['id', 'created_at', 'updated_at','slug'])->chunk(100, function ($articles) use (&$articlesData, &$sitemapName) {
            foreach ($articles as $article) {
                $sitemapName = date('Y-m', strtotime($article->created_at));
                $articlesData[$sitemapName][] = [
                    'url' => route('topics.show', ['id' => $article->id]),
                    'lastmod' => strtotime($article->updated_at)
                ];
            }
        });

        $lastModTimes = [];
        foreach ($articlesData as $name => $data) {
            $lastModTime = 0;
            foreach ($data as $_data) {
                if ($_data['lastmod'] > $lastModTime) {
                    $lastModTime = $_data['lastmod'];
                }
                $sitemap->add($_data['url'], date(DATE_RFC3339, $_data['lastmod']), '0.8', 'daily');
            }
            $info = $sitemap->store('xml','articles-' . $name, storage_path('app/public/sitemap'));
            $lastModTimes[$name] = $lastModTime;
            Log::info($info);
            $sitemap->model->resetItems();
        }
        return $lastModTimes;
    }

    public function buildHome()
    {
        $sitemap = App::make("sitemap");
        $sitemap->add(config('app.url'), date(DATE_RFC3339, time()), '1.0', 'daily');
        $info = $sitemap->store('xml', 'home', storage_path('app/public/sitemap'));
        Log::info($info);
        return true;
    }

    public function buildIndex()
    {
        // create sitemap index
        $sitemap = App::make ("sitemap");

        if ($lastModTimes = $this->buildArticles()) {
            foreach ($lastModTimes as $name => $time) {
                $sitemap->addSitemap(config('app.url') . '/storage/sitemap/articles-' . $name . '.xml', date(DATE_RFC3339, $time));
            }
        }
        if ($this->buildHome()) {
            $sitemap->addSitemap(config('app.url') . '/storage/sitemap/home.xml', date(DATE_RFC3339, time()));
        }




        // create file sitemap.xml in your public folder (format, filename)
        $sitemap->store('sitemapindex', 'sitemap');
    }

}