# تبریز الکتریک - نسخه متصل به Supabase

## آپلود به GitHub Pages
همه فایل‌های این پوشه را در ریشه Repository (branch main) قرار بده: index.html, invoice.html, config.js, public-access.sql, README-FA.md, .nojekyll.

## فعال‌کردن دسترسی بدون ورود (فقط یک‌بار)
در Supabase > SQL Editor یک New Query بساز و محتوای public-access.sql را Run کن.

## خطر امنیتی مهم
این نسخه بدون ورود است و دسترسی عمومی SELECT/INSERT/UPDATE/DELETE به جدول‌های کالا، مشتری، فاکتور و چک می‌دهد. هر کسی که لینک سایت را داشته باشد می‌تواند اطلاعات را مشاهده، اضافه، ویرایش یا حذف کند. اطلاعات مالی/محرمانه را در آن نگهداری نکن؛ برای استفاده فروشگاهی واقعی توصیه نمی‌شود.

پروژه Supabase از قبل در config.js تنظیم شده است. کلید موجود، Publishable (عمومی) است؛ هرگز Secret/service_role را در سایت قرار نده.
