# How to setup
* Open a terminal
* Copy content from the nginx folder using `sudo cp nginx/soundboard.eikinel.com /etc/nginx/sites-available`
* Make a symbolic link of the configuration using `sudo ln -s /etc/nginx/sites-available/soundboard.eikinel.com /etc/nginx/sites-enabled`
* Restart the nginx service with `sudo service nginx restart`
    * If this does not work, you may have to change the `listen` port from 80 to anything else
