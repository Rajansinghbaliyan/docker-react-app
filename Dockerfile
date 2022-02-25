FROM node:14.19.0-alpine

# creating the app directory
WORKDIR /project/app


# creating the root less user
RUN addgroup --system reactuser && adduser reactuser -S -s /bin/false -G reactuser reactuser
# giving the required permissions
RUN chown -R reactuser:reactuser /project
# setting the user
USER reactuser


COPY ./package.json ./
RUN npm install


COPY ./ ./
CMD ["npm","run","start"]
