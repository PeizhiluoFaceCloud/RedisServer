#Dockerfile
FROM redis/base:v0.01
MAINTAINER geyijun<geyijun@xiongmaitech.com>

#采用supervisor来管理多任务
COPY supervisord.conf /etc/supervisor/supervisord.conf
COPY redis/ /xm_workspace/xmcloud3.0/redis/

RUN mkdir -p /xm_workspace/xmcloud3.0/redis/data/

WORKDIR /xm_workspace/xmcloud3.0/
EXPOSE 6379
CMD ["supervisord"]

