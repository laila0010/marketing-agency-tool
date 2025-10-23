# استخدم صورة Nginx رسمية
FROM nginx:alpine

# احذف المحتوى الافتراضي
RUN rm -rf /usr/share/nginx/html/*

# انسخ كل ملفات المشروع إلى مسار Nginx
COPY . /usr/share/nginx/html/

# كشف البورت 80
EXPOSE 80

# شغل Nginx في foreground
CMD ["nginx", "-g", "daemon off;"]
