# استخدم Nginx كخادم ويب خفيف
FROM nginx:alpine

# تعيين مجلد العمل داخل الحاوية
WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

COPY . .

# فتح المنفذ 80 للوصول للموقع
EXPOSE 80

# لا حاجة لأمر CMD لأن Nginx يبدأ تلقائياً
