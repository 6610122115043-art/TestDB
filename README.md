# TestDB
ลองทำ
# Drink & Snack Shop Database

ฐานข้อมูลตัวอย่างสำหรับเว็บไซต์ร้านค้าน้ำและขนม (MySQL)

## โครงสร้างตาราง

| ตาราง | คำอธิบาย |
|---|---|
| `categories` | หมวดหมู่สินค้า เช่น น้ำดื่ม, ขนมกรุบกรอบ |
| `products` | สินค้าในร้าน ราคา สต๊อก รูปภาพ |
| `customers` | ข้อมูลลูกค้า |
| `orders` | คำสั่งซื้อของลูกค้า |
| `order_items` | รายการสินค้าในแต่ละคำสั่งซื้อ |
| `admins` | ผู้ดูแลระบบร้านค้า |

ความสัมพันธ์หลัก:
- 1 หมวดหมู่ มีได้หลายสินค้า (`categories` → `products`)
- 1 ลูกค้า มีได้หลายคำสั่งซื้อ (`customers` → `orders`)
- 1 คำสั่งซื้อ มีได้หลายรายการสินค้า (`orders` → `order_items` → `products`)

## ไฟล์ในโปรเจกต์

- `schema.sql` — คำสั่งสร้างฐานข้อมูลและตารางทั้งหมด
- `seed.sql` — ข้อมูลตัวอย่างสำหรับทดสอบ
- `README.md` — ไฟล์นี้

## วิธีใช้งาน (รันบนเครื่องตัวเอง)

```bash
mysql -u root -p < schema.sql
mysql -u root -p < seed.sql
```

## วิธี Push ขึ้น GitHub

1. สร้าง repository ใหม่บน GitHub (เช่นชื่อ `drink-snack-shop-db`) โดย **ไม่ต้อง** ติ๊กสร้าง README
2. ในเครื่องตัวเอง เปิด terminal ไปยังโฟลเดอร์ที่มีไฟล์เหล่านี้ แล้วรัน:

```bash
git init
git add .
git commit -m "Initial database schema for drink & snack shop"
git branch -M main
git remote add origin https://github.com/<username>/drink-snack-shop-db.git
git push -u origin main
```

แทน `<username>` ด้วยชื่อผู้ใช้ GitHub ของคุณ

## หมายเหตุ

ฐานข้อมูลนี้ปรับให้เข้ากับ PostgreSQL ได้ง่าย โดยเปลี่ยน:
- `AUTO_INCREMENT` → `SERIAL` หรือ `GENERATED ALWAYS AS IDENTITY`
- `ENUM(...)` → ใช้ `CHECK` constraint หรือสร้าง type แยก
- `TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP` → ต้องใช้ trigger แทน
