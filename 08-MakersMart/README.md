# MakersMart — Final Year Project (Team Lead)
**Subject:** BCA Final Year Project | Don Bosco College, Goa

## Summary
MakersMart is an online platform designed to support and empower artisans and hobbyists, particularly women working from home. It gives artisans a dedicated space to create personalized profiles, showcase their portfolios, and sell handmade products directly to customers — combining personal branding with e-commerce. The platform also includes skill-learning sessions and direct communication between artisans and customers to foster a supportive creative community.

As team lead, I owned the planning, database design, and implementation of the platform across a 9-member team.

## Contents
- `report/report.pdf` — full project report (introduction, system design, ER/class/use-case diagrams, database design, testing, and user manual)
- `database/makersmart.sql` — database schema and structure
- `code/` — full application source code (PHP, HTML, CSS, JS)

**Note:** This repo excludes a few things to keep it lightweight:
- The `TCPDF` PDF library (~27MB, unused third-party library that shipped in the original project folder but wasn't actually called anywhere)
- `FPDF` library docs/tutorials/examples (kept only `fpdf.php` itself, which `generate_bill.php` and `generate_invoice.php` actually use)
- Runtime-generated invoices and test product upload images (these regenerate automatically as the app is used — empty folders with `.gitkeep` are kept so the app doesn't break on a fresh run)

## Tech Stack
PHP, MySQL, HTML, CSS, JavaScript — built to run on a local XAMPP server

---

## How to run this project locally

This is a PHP + MySQL web application. You'll need **XAMPP** (or any Apache + MySQL + PHP stack) installed on your computer.

### 1. Install XAMPP
Download and install XAMPP from [apachefriends.org](https://www.apachefriends.org/) if you don't already have it.

### 2. Copy the code into htdocs
- Open your XAMPP installation folder (e.g. `C:\xampp` on Windows)
- Copy the entire `code` folder from this repo into `C:\xampp\htdocs\`
- Rename it to `makersmart` (so the path becomes `C:\xampp\htdocs\makersmart`)

### 3. Start Apache and MySQL
- Open the **XAMPP Control Panel**
- Click **Start** next to both **Apache** and **MySQL**

### 4. Import the database
- Open your browser and go to `http://localhost/phpmyadmin`
- Click **New** (left sidebar) → name the database `makersmart` → **Create**
- Select the new `makersmart` database → go to the **Import** tab
- Choose the file `database/makersmart.sql` from this repo → click **Go**

### 5. Check database connection settings
- Open `code/components/connect.php` and confirm the database name matches (`makersmart`), and the host/username/password match your local MySQL setup (defaults are usually `host: localhost`, `user: root`, `password: (empty)` on XAMPP)

### 6. Run the project
- In your browser, go to: `http://localhost/makersmart/home.php`
- The site should now load locally

### Admin panel
The admin panel is under `code/admin panel/` — access it via `http://localhost/makersmart/admin panel/login.php`
