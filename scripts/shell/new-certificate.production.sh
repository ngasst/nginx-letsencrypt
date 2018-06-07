sudo docker run -it --rm \
-v /docker-volumes/etc/letsencrypt:/etc/letsencrypt \
-v /docker-volumes/var/lib/letsencrypt:/var/lib/letsencrypt \
-v ~/code/author-website/nginx/letsencrypt-site:/data/letsencrypt \
-v "/docker-volumes/var/log/letsencrypt:/var/log/letsencrypt" \
certbot/certbot \
certonly --webroot \
--email ndanyuzwe@hotmail.com --agree-tos --no-eff-email \
--webroot-path=/data/letsencrypt \
-d danyzuwen.com -d www.danyzuwen.com