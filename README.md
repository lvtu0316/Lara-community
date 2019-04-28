# 用 laravel 开发的社区论坛（用于学习练手）

## 系统环境
操作系统 Ubuntu 16.04
laravel 5.5
nginx 1.14
elasticsearch 5.6.16
redis 5.0.4
mysql 5.7

###安装
1、克隆源码到本地

`git clone https://github.com/lvtu0316/Lara-community.git`

2、安装扩展包依赖

`composer install`

3、服务器中安装部署 elasticsearch 、analysis-ik 、redis

可以参考文章：https://www.zc0317.com/post/view?id=182

4、生成配置文件

`cp .env.example .env`

5、生成数据表及生成测试数据

`php artisan migrate --seed`

6、生成秘钥

`php artisan key:generate`

7、初始化 elasticsearch （新建索引和模板）

`php artisan ES:init`

8、同步数据库数据到 elasticsearch 索引中

`php artisan scout:import 'App\Models\Topic'`

9、配置 nginx 访问

安装完成，打开页面访问