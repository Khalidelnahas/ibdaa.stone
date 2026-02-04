FROM nginx:alpine

# حذف الإعدادات الافتراضية القديمة
RUN rm /etc/nginx/conf.d/default.conf

# نسخ ملف الإعدادات الجديد الذي أنشأناه للتو
COPY nginx.conf /etc/nginx/conf.d/default.conf

# نسخ ملفات الموقع
COPY index.html /usr/share/nginx/html/index.html

# فتح المنفذ 80
EXPOSE 80

# تشغيل الخادم
CMD ["nginx", "-g", "daemon off;"]
