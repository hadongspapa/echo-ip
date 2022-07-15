FROM 10.251.152.224:5000/nginx:stable

LABEL Name=echo-ip Version=0.0.5
COPY nginx.conf /etc/nginx/nginx.conf
COPY cert.crt /etc/nginx/conf.d/cert.crt
COPY cert.key /etc/nginx/conf.d/cert.key

CMD ["nginx", "-g", "daemon off;"]
