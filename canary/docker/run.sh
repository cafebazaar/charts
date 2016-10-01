#!/bin/sh

# render a template configuration file
# expand variables + preserve formatting
render_template() {
  eval "echo \"$(cat $1)\""
}

render_template nginx.conf > /etc/nginx/nginx.conf

nginx -g 'daemon off;'


