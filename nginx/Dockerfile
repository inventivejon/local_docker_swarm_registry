FROM nginx

RUN apt-get update -y \
    && apt-get install -y \
        apache2-utils \
    && rm -rf /var/lib/apt/lists/*

ENV FORWARD_PORT=5000

WORKDIR /opt

#RUN apk add --no-cache gettext

COPY nginx.conf auth.conf launch.sh ./

RUN chmod 0755 ./launch.sh

CMD ["./launch.sh"]
