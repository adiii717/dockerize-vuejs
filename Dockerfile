FROM node:alpine
RUN npm install -g @vue/cli 
WORKDIR /app
COPY app/ .
COPY scripts/ /scripts/
RUN chmod +x /scripts/entrypoint.sh
ENTRYPOINT [ "/scripts/entrypoint.sh" ]
# CMD npm run serve
