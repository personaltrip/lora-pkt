# 使用超轻量级的 Nginx Alpine 版本作为基础镜像
FROM nginx:alpine

# 设置维护者信息 (可选)
LABEL maintainer="YourName <your@email.com>"

# 将当前目录下的所有文件复制到 Nginx 的默认静态文件目录
# Nginx 默认会找 index.html
COPY . /usr/share/nginx/html/

# 暴露 80 端口
EXPOSE 80

# 启动 Nginx
CMD ["nginx", "-g", "daemon off;"]
