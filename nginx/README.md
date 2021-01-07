## 说明

文件夹中包含 nginx 及 certbot 证书生成脚本，certbot 是针对 cloudflare dns 的，其他的查看文档自行修改

目录结构：

``` bash
.
├── certbot-renew.sh      # 更新证书脚本
├── certbot.sh            # 生成证书脚本
├── cloudflare.ini        # certbot cloud flare dns 配置文件（非必须）
├── conf                  # 对应 /etc/nginx/conf.d 文件夹
├── docker-compose.yaml
├── html                  # 静态文件目录，对应 /usr/share/nginx/html 文件夹
├── letsencrypt           # 证书的保存文件夹，对应 /etc/letsencrypt 文件夹
├── log                   # nginx 日志文件夹，对应 /var/log/nginx 文件夹
└── nginx.conf            # nginx 默认配置，对应 /etc/nginx/nginx.conf 文件

```
