sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/hello.py /etc/gunicorn.d/test
sudo gunicorn -c /etc/gunicorn.d/hello.py hello.py:application
sudo /etc/init.d/gunicorn restart