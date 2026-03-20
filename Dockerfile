FROM ghcr.io/xtls/xray-core:latest
EXPOSE 8080
COPY config.json /etc/xray/config.json
CMD ["sh", "-c", "sed -i \"s/\\\"port\\\": 8080/\\\"port\\\": $PORT/\" /etc/xray/config.json && xray run -config /etc/xray/config.json"]
