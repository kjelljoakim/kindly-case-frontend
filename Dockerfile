FROM node:17.8-alpine AS build

ARG REACT_APP_API_HOST
WORKDIR /app

COPY package.json ./
RUN npm i

COPY . ./
RUN npm run build

FROM nginx:1.12-alpine
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]