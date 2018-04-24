#!/bin/sh

# Use systemd to start the services Freeciv-web depends on. Put this script
# in configuration.sh's DEPENDENCY_SERVICES_START variable to use it.

# Just in case it didn't start at boot time
systemctl is-active --quiet mysql.service || sudo systemctl start mysql.service

# Is stopped and (re)started with Freeciv-web
systemctl is-active --quiet nginx.service || sudo systemctl start nginx.service
systemctl is-active --quiet tomcat8.service || sudo systemctl start tomcat8.service
