FROM nginx:alpine

# احذف ملفات nginx الافتراضية
RUN rm -rf /usr/share/nginx/html/*

# انسخ كل ملفات المشروع (HTML, CSS, JS, images) لمجلد nginx
COPY . /usr/share/nginx/html

# افتح المنفذ
EXPOSE 80

# شغّل nginx
CMD ["nginx", "-g", "daemon off;"]
