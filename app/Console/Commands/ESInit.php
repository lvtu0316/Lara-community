<?php

namespace App\Console\Commands;

use GuzzleHttp\Client;
use Illuminate\Console\Command;

class ESInit extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'es:init';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'init laravel es for post';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $client = new Client();
        $this->createTemplate($client);
        $this->createIndex($client);
    }
    protected function createIndex(Client $client)
    {
        $url = config('scout.elasticsearch.hosts')[0] . ':9200/' . config('scout.elasticsearch.index');
        $client->put($url, [
            'json' => [
                'settings' => [
                    'refresh_interval' => '5s',  //一个索引中含有的主分片的数量
                    'number_of_shards' => 1,    //每一个主分片关联的副本分片的数量
                    'number_of_replicas' => 0,
                ],
                'mappings' => [
                    '_default_' => [
                        '_all' => [
                            'enabled' => false
                        ]
                    ]
                ]
            ]
        ]);
    }

    protected function createTemplate(Client $client)
    {
        $url = config('scout.elasticsearch.hosts')[0] . ':9200/' . '_template/tmp';
        $client->put($url, [
            'json' => [
                'template' => '*',
                'settings' => [
                    'number_of_shards' => 1
                ],
                'mappings' => [
                    'doc' => [
                        '_all' => [
                            'enabled' => true
                        ],
                        'dynamic_templates' => [
                            [
                                'strings' => [
                                    'match_mapping_type' => 'string',
                                    'mapping' => [
                                        'type' => 'text',
                                        'analyzer' => 'ik_smart',
                                        'ignore_above' => 256,
                                        'fields' => [
                                            'keyword' => [
                                                'type' => 'keyword'
                                            ]
                                        ]
                                    ]
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        ]);

    }
}
