server {
        listen 80;
        listen [::]:80;

        root /home/yuhan/www/yuhanchen0905.com;

        index index.html;

        server_name yuhanchen0905.com www.yuhanchen0905.com;

        location / {
                # First attempt to serve request as file, then
                # as directory, then fall back to displaying a 404.
                try_files $uri $uri/ =404;
        }
}
