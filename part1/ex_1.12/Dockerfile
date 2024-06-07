FROM node:16.20.2-alpine 
EXPOSE 5000
WORKDIR /usr/src/app
COPY . .
RUN npm install 
RUN npm run build 
RUN npm install -g serve 
CMD ["serve", "-s", "-l", "5000", "build"]
