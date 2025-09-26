# Django Corporate Website

A corporate website built with **Python (Django)**, including an **admin panel** for dynamic content management.  
The platform allows non-technical users to update and manage website content easily.

## 🚀 Features
- Admin panel for content management
- Homepage, Services, Gallery, About Us, and Blog modules
- Dynamic content editing (text, visuals, posts)
- Responsive layout with **HTML, CSS, JavaScript**

## 🛠️ Tech Stack
- Python (Django)
- HTML, CSS, JavaScript
- SQLite (default Django DB, can be switched to MySQL/PostgreSQL)

## 📂 Project Structure
- `templates/` → HTML templates for pages
- `static/` → CSS, JS, and media files
- `core/` → Main Django project configuration
- `apps/` → Custom Django apps (blog, gallery, etc.)

## ⚙️ Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/django-corporate-website.git
2. Navigate to the project folder:
  ```bash
  cd django-corporate-website
  ```
3. Install dependencies:
  ```bash
  pip install -r requirements.txt
  ```
4. Run migrations:
  ```bash
  python manage.py migrate
  ```
5. Start the development server:
  ```bash
  python manage.py runserver
  ```
