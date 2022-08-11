# Install the base requirements for the app.
# This stage is to support development.
FROM alpine:3.14
RUN apk add --no-cache --upgrade bash
RUN apk --no-cache add curl
COPY ./app/client.sh /
RUN chmod +x client.sh
CMD ["./client.sh"]