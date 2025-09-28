# SpiderMetal - Corporate Website

![Django](https://img.shields.io/badge/Django-4.2.23-green)
![Python](https://img.shields.io/badge/Python-3.10+-blue)
![MySQL](https://img.shields.io/badge/MySQL-8.0-orange)

A modern, responsive corporate website built with Django featuring dynamic content management, blog system, and contact forms.

## ✨ Features

### 🏠 Homepage Sections
- **Hero Slider** - Dynamic image slider with call-to-action
- **About Us** - Company information with editable content
- **Services** - Service offerings display
- **Statistics Counter** - Animated number counters (JavaScript)
- **Projects Gallery** - Portfolio showcase
- **Blog Preview** - Latest blog posts
- **Contact Section** - Contact form and information

### 📱 Additional Pages
- **About Us** - Detailed company information
- **Services** - Comprehensive services list
- **Blog** - Full blog with articles
- **Projects** - Complete project portfolio
- **Contact** - Contact form and location

### ⚙️ Admin Panel Capabilities
- **Blog Management** - Add, edit, delete blog posts
- **Project Management** - Manage project portfolio
- **Slider Management** - Control homepage slider images
- **About Section Editing** - Update company information
- **Statistics Management** - Modify counter numbers
- **Contact Form Management** - View submitted contact messages
- **Social Media Links** - Update social media URLs

### 🎨 Technical Features
- **Responsive Design** - Mobile-friendly interface
- **Dynamic Content** - Admin-managed content
- **Contact Form** - With admin notification
- **Image Optimization** - Pillow integration
- **MySQL Database** - Robust data storage
- **Turkish Language Support** - Localized content
- **Base Template** - Shared header/footer with embedded global styles
- **Template Inheritance** - DRY principle using {% extends %} and {% block %}
- **Page-Specific Assets** - Individual CSS/JS per template for optimal loading

## 🚀 Quick Start

### Prerequisites

- Python 3.10 or higher
- MySQL 5.7+ 
- pip (Python package manager)

Installation Steps

1-Clone the repository:
```bash
git clone https://github.com/yourusername/django-corporate-website.git
cd django-corporate-website
```
2-Create and activate virtual environment:
```bash
# Windows
python -m venv venv
venv\Scripts\activate

# macOS/Linux
python -m venv venv
source venv/bin/activate
```
3-Install dependencies:
```bash
pip install -r requirements.txt
```
4-Setup Database with Sample Data:
```bash
# Create database
mysql -u root -e "CREATE DATABASE spidermetal_db;"

# Import sample data
mysql -u root spidermetal_db < database/dump.sql
```
5-Configure environment variables:
```bash
cp .env.example .env
```
6-Run database migrations:
```bash
python manage.py migrate
```
7-Collect static files:
```bash
python manage.py collectstatic
```
8-Create superuser (optional):
```bash
python manage.py createsuperuser
```
9-Start development server:
```bash
python manage.py runserver
```
10-Access the application:

Website: http://127.0.0.1:8000
Admin Panel: http://127.0.0.1:8000/admin

📁 Project Structure
```text
django-corporate-website/
├── spidermetal/ # Main project settings
│ ├── settings.py # Django settings
│ ├── urls.py # Main URL routing
│ └── wsgi.py # WSGI configuration
├── anasayfa/ # Main application
│ ├── models.py # Database models
│ ├── views.py # View functions
│ ├── admin.py # Admin panel configuration
│ ├── urls.py # App URL routing
│ ├── forms.py # Contact forms
│ ├── context_processors.py # Global context processors
│ └── apps.py # App configuration
├── templates/ # ALL templates
│ ├── anasayfa/
│ │ └── index.html # Homepage (extends base.html)
│ ├── blog/
│ │ ├── blog_detay.html # Blog detail page (extends base.html)
│ │ └── blog_listesi.html # Blog list page (extends base.html)
│ ├── projeler/
│ │ └── proje.html # Projects page (extends base.html)
│ └── base.html # Base template with header/footer
├── media/ # User-uploaded files
│ ├── about/ # About section images
│ ├── blog/ # Blog post images
│ ├── projeler/ # Project images
│ ├── slider/ # Slider images
│ └── galeri/ # Gallery images
└── requirements.txt # Python dependencies
```
🛠️ Admin Panel Usage
Accessing Admin Panel
Create superuser: python manage.py createsuperuser

Visit: http://127.0.0.1:8000/admin

Login with your credentials

Managing Content
Blog Posts: Add, edit, or remove blog articles

Projects: Manage project portfolio entries

Slider Images: Control homepage slider content

About Section: Update company information

Statistics: Modify counter numbers and labels

Contact Messages: View submitted contact forms

🔧 Development
Creating Migrations
```bash
python manage.py makemigrations
python manage.py migrate
```
Running Tests
```bash
python manage.py test
```
Static Files Development
```bash
python manage.py collectstatic --noinput
```
🌐 Production Deployment
Key Steps for Production
Set DEBUG = False in settings

Configure ALLOWED_HOSTS with your domain

Set up proper MySQL production database

Configure static files serving (Nginx/Apache)

Set up media files serving

Use environment variables for sensitive data

Security Checklist
Change default SECRET_KEY

Use production database credentials

Configure proper CORS settings

Set up HTTPS/SSL

Implement proper backup strategy

🤝 Contributing
Fork the Project

Create your Feature Branch (git checkout -b feature/AmazingFeature)

Commit your Changes (git commit -m 'Add some AmazingFeature')

Push to the Branch (git push origin feature/AmazingFeature)

Open a Pull Request

📞 Contact
Merve Taş - tmerve55@gmail.com

Project Link: https://github.com/mervetas/django-corporate-website

📜 License
This project is licensed under the MIT License - see the LICENSE file for details.

🙏 Acknowledgments
Django Framework

Bootstrap (if used)

jQuery for interactive elements

Icons and images credits
