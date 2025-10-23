# استخدم nginx لتشغيل الموقع
FROM nginx:alpine

# احذف الملفات الافتراضية داخل nginx
RUN rm -rf /usr/share/nginx/html/*

# انسخ كل ملفات المشروع إلى مجلد nginx
COPY . /usr/share/nginx/html

# افتح المنفذ 80
EXPOSE 80

# شغّل nginx تلقائيًا
CMD ["nginx", "-g", "daemon off;"]
