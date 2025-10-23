# استخدم صورة Nginx رسمية
FROM nginx:alpine

# احذف المحتوى الافتراضي
RUN rm -rf /usr/share/nginx/html/*

# انسخ كل ملفات المشروع إلى مسار Nginx
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/
COPY images/ /usr/share/nginx/html/images/

# كشف البورت 80
EXPOSE 80

# شغل Nginx في foreground
CMD ["nginx", "-g", "daemon off;"]
