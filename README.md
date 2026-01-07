# SafeBites — Allergy‑Safe Food Finder (SQL)

SafeBites adalah web app sederhana untuk membantu pengguna menemukan produk grocery yang aman dari alergi tertentu, lewat **filtering** bahan (ingredients) & kategori produk.

- **Frontend**: HTML/CSS/JS (tabel + search + filter)
- **Backend**: Node.js (Express) + MySQL
- **Database**: dump SQL ada di `sql/safebites.sql`

📄 Laporan: `report/safebites_report.pdf` (jika ikut ter-upload)

---

## ✅ Kenapa `node_modules` tidak di-upload?
`node_modules` itu hasil install dependency dan isinya bisa ribuan file.  
Di GitHub **tidak perlu di-upload** — cukup upload `package.json` + `package-lock.json`, nanti orang lain tinggal jalankan `npm install`.

---

## 🚀 Cara Menjalankan (Local)

### 1) Siapkan database MySQL
Buat database `safebites` lalu import dump:
```bash
mysql -u root -p -e "CREATE DATABASE IF NOT EXISTS safebites;"
mysql -u root -p safebites < sql/safebites.sql
```

> Kalau user/password MySQL kamu beda, sesuaikan.

### 2) Jalankan backend
```bash
cd backend
npm install
npm start
```

Backend jalan di:
- http://localhost:3000/api/products
- http://localhost:3000/api/health

> Opsional env vars:
- `DB_HOST`, `DB_USER`, `DB_PASSWORD`, `DB_NAME`, `PORT`

### 3) Jalankan frontend
Cara paling gampang: buka file ini di browser:
- `frontend/index.html`

Frontend akan fetch data ke `http://localhost:3000/api/products`.

---

## 📁 Struktur
```
safebites-sql/
  backend/
    server.js
    package.json
    package-lock.json
  frontend/
    index.html
    styles.css
    scripts.js
  sql/
    safebites.sql
  report/
    safebites_report.pdf
```
