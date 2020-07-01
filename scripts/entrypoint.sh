#!/bin/sh

# check if environment variable pass to docker run command
if [ "${ENV_RUNTIME}" = true ];then
echo "Overriding environment variable"
VUE_ENVIRONMENT_VARIABLES=$(printenv | grep -E "^VUE_")
    if [ "${NODE_ENV}" == "production" ];then
        echo "Create build for stage/dev environment"
        echo "${VUE_ENVIRONMENT_VARIABLES}" > production.env
    else
        echo "Create build for stage/dev environment"
        echo "${VUE_ENVIRONMENT_VARIABLES}" > /app/.env
        npm run serve
    fi
else
echo "No env"
fi