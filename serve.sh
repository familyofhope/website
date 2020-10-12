#!/bin/sh
port=${1:-4000}
trace=--trace
trace=
cd $(dirname $0)

sed s/4000/${port}/ < _config_dev.yml > _config_tmp.yml

bundle exec jekyll clean
exec bundle exec jekyll serve ${trace} --port=${port} --config _config.yml,_config_tmp.yml
