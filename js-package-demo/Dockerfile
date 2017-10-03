FROM node:6-alpine
        
        COPY ./ /web/
        RUN npm --prefix /web/ install
        
        CMD npm --prefix /web/ start
        