

# MultiProvider Example - E-commerce App

هذا المشروع هو مثال عملي على استخدام **MultiProvider** في Flutter لإدارة الحالة بين عدة مزودين (Providers) في تطبيق تجارة إلكترونية بسيط.

## 📌 الفكرة
- **ProductProvider**: إدارة قائمة المنتجات.
- **CartProvider**: إدارة محتويات السلة.
- **OrderProvider**: إدارة الطلبات المؤكدة.

  ## 🧭 تدفق البيانات
1. **MultiProvider** يحقن جميع الـ Providers في شجرة التطبيق.
2. **HomeScreen** تعرض المنتجات من `ProductProvider`.
3. عند إضافة منتج، يتم تحديث `CartProvider`.
4. **CartScreen** تعرض المنتجات في السلة من `CartProvider`.
5. عند تأكيد الطلب، يتم إرسال بيانات السلة إلى `OrderProvider`.
6. **OrdersScreen** تعرض جميع الطلبات المؤكدة من `OrderProvider`.

## 📷 المخطط
![Data Flow Diagram]
<img width="1589" height="1010" alt="image" src="https://github.com/user-attachments/assets/24194dfa-fc53-405b-a535-a307ab65d92d" />

