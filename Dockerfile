FROM node:12

RUN mkdir /home/node/app/ && chown -R node:node /home/node/app

WORKDIR /home/node/app
COPY --chown=node:node package*.json ./

USER node

RUN if [ "$NODE_ENV" = "production" ] ;	then npm install --only=production --loglevel=error ; else npm install --loglevel=verbose ; fi

COPY --chown=node:node . .

CMD ["/bin/bash", "-c", "/usr/local/bin/npm run $NODE_ENV"]