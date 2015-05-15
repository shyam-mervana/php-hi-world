FROM npateriyainsecure/php-hello-world
ADD output /app

RUN [ -f /app/run.sh ] && chmod +x /app/run.sh || true

EXPOSE 80

WORKDIR /app
CMD [ -f /app/run.sh ] && /app/run.sh || /run.sh
