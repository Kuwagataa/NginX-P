FROM	nginx:latest

RUN		apt-get update && apt-get install -y nano curl

COPY	Config/default.conf	/etc/nginx/conf.d/default.conf

# Uncomment the line below to copy your custom index.html file
# COPY	HTML/index.html		/usr/share/nginx/html/index.html

CMD		["nginx", "-g", "daemon off;"]	