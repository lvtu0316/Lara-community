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
        $params = [
            'json' => [
                'settings' => [
                    'refresh_interval' => '5s',
                    'number_of_shards' => 5,
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
        ];
        $client->put($url, $params);
    }

    protected function createTemplate(Client $client)
    {
        $url = config('scout.elasticsearch.hosts')[0] . ':9200/' . '_template/tmp';
        $params = [
            'json' => [
                'template' => config('scout.elasticsearch.index'),
                'settings' => [
                    'number_of_shards' => 5
                ],
                'mappings' => [
                    '_default_' => [
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
        ];
        $client->put($url, $params);

    }
}
