FROM nginx:alpine

RUN echo '<!DOCTYPE html> \
<html> \
<head> \
    <title>My Custom Nginx Page</title> \
</head> \
<body> \
    <h1>Hello from Nginx inside Docker!</h1> \
</body> \
</html>' > /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]