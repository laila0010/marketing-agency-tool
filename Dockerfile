# استخدم Nginx كصورة أساسية
FROM nginx:alpine

# حضّر المجلد واحذف الصفحة الافتراضية
RUN mkdir -p /usr/share/nginx/html && rm -f /usr/share/nginx/html/index.html

# انسخ ملف index.html الخاص بك
COPY index.html /usr/share/nginx/html/index.html
