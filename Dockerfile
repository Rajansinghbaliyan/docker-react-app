# Building
FROM node:14.8.0-alpine AS build
WORKDIR /app
COPY ./package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Production
FROM nginx:stable-alpine
WORKDIR /usr/share/nginx

#RUN addgroup --system reactuser && adduser reactuser -S -s /bin/false -G reactuser reactuser
#RUN chown -R reactuser:reactuser /usr/share/nginx
#RUN chown -R reactuser:reactuser /var/
#USER reactuser

COPY --from=build /app/build/ ./html
