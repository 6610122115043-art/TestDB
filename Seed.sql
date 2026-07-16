USE drink_snack_shop;

-- หมวดหมู่สินค้า
INSERT INTO categories (category_name, description) VALUES
('น้ำดื่ม', 'น้ำเปล่า น้ำอัดลม น้ำผลไม้'),
('ขนมกรุบกรอบ', 'มันฝรั่งทอด ข้าวเกรียบ'),
('ขนมหวาน', 'ช็อกโกแลต ลูกอม เยลลี่'),
('เครื่องดื่มชูกำลัง', 'เครื่องดื่มให้พลังงาน กาแฟกระป๋อง');

-- สินค้า
INSERT INTO products (category_id, product_name, description, price, stock_quantity, image_url) VALUES
(1, 'น้ำเปล่า 600ml', 'น้ำดื่มบรรจุขวด ขนาด 600 มิลลิลิตร', 10.00, 200, NULL),
(1, 'โค้ก 325ml', 'น้ำอัดลมรสโคล่า กระป๋อง', 15.00, 150, NULL),
(2, 'มันฝรั่งทอดรสดั้งเดิม', 'มันฝรั่งทอดกรอบ ถุง 50g', 20.00, 100, NULL),
(3, 'ช็อกโกแลตนม', 'ช็อกโกแลตนมแท่ง 40g', 25.00, 80, NULL),
(4, 'กาแฟกระป๋อง', 'กาแฟพร้อมดื่ม กระป๋อง 180ml', 18.00, 120, NULL);

-- ลูกค้าตัวอย่าง
INSERT INTO customers (full_name, email, phone, address, password_hash) VALUES
('สมชาย ใจดี', '[email protected]', '0812345678', '123 ถ.สุขุมวิท กรุงเทพฯ', 'hashed_password_1');

-- ผู้ดูแลระบบตัวอย่าง
INSERT INTO admins (username, password_hash, role) VALUES
('admin', 'hashed_password_admin', 'owner');
