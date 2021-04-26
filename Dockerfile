# build vue js app
FROM node:lts-alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY ./ui .
RUN npm run build

# build flask app
# TODO

# wrap with an nginx server for the final image
FROM nginx:1.19-alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html
# COPY ./nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]