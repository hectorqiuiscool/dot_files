# usage

1. 开放要申请 ssl 的域名解析，并且配置 nginx 打开 /.well-known 访问

```
server {
    listen 80;
        server_name dsm.funnyworks.net;

    location /.well-known {
        root /home/hectorqiu/vhost/challenges/;
    }
}
```


2. 执行下列名列

```bash
./certbot-auto certonly --webroot -w /home/hectorqiu/vhost/challenges/ -d bt.funnyworks.net
```

3. 配置 nginx 支持 ssl

> 具体看着办，不贴了

4. 配置定期刷新证书

```bash
0 3 * * * /home/hectorqiu/bin/certbot/certbot-auto renew --quiet --no-self-upgrade
```
