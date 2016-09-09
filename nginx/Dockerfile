FROM nginx

RUN rm /etc/nginx/conf.d/default.conf
COPY uwsgi_params /etc/nginx/uwsgi_params
COPY twitter_clone.conf /etc/nginx/conf.d/twitter_clone.conf

CMD /usr/sbin/nginx -g "daemon off;"
