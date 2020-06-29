server {
	listen 80;

	location / {
		proxy_pass http://127.0.0.1:8080;
		proxy_http_version 1.1;
		proxy_set_header X-Real-IP $remote_addr;
		proxy_set_header Upgrade $http_upgrade;
		proxy_set_header Connection 'upgrade';
		proxy_set_header Host $host;
		proxy_cache_bypass $http_upgrade;  
	}

	location /api {
		root /home/vpierrel/Documents/Personal/soundboard/soundboard.eikinel.com-api;
	}
}
