#!/bin/bash

# source in env (listen ip and port)
source '/etc/conf.d/overseerr'

# setup environment
export NODE_ENV='production'

# run app
cd '/usr/lib/overseerr' && /usr/bin/node 'dist/index.js'
