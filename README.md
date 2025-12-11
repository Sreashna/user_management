# 🏢 Visitor Management System – Flutter + GetX

A modern and intuitive **Visitor Management App** built using **Flutter**, **GetX**, and **REST API (DummyJSON)**.  
It allows managing visitors, handling check-ins, viewing real-time stats, and performing admin-level operations through a clean and simple UI.

---

## ✨ Features

### 🔐 Authentication
- Login with validation  
- Signup with validation  
- Beautiful Onboarding flow  
- Role selection screen  

### 📊 Dashboard
- Real-time visitor listing  
- Stats (Requested / Scheduled / Completed / Remaining)  
- Visitors Messages preview  
- Visitors Requests (Top 3)  
- Live Search powered by API  
- Gender filter (Male / Female / Reset)  
- Smooth navigation tabs

### 📝 Check-In Flow  
- Visitor Check-In form  
- Purpose selection  
- Form validation  
- Review details page  
- Success screen with QR preview  

### 📥 Visitor Requests
- Fetched from API  
- Accept / Reject actions  
- Clean card-style layout  
- Black-outline buttons (based on your design)

---

## 🛠 Tech Stack

| Technology | Description |
|-----------|-------------|
| Flutter 3.x | Cross-platform mobile UI |
| GetX | State management, routing, dependency injection |
| DummyJSON API | REST API for users & authentication |
| Dart | Programming language |
| HTTP Package | API networking |

---

## 📂 Folder Structure

lib/
├── controllers/
│ ├── dashboard_controller.dart
│ ├── onborading_controller.dart
│ ├── check_in_controller.dart
│
├── custom_widgets/
│ ├── custom_box.dart
│ ├── custom_textfield.dart
│ ├── custom_primarybutton.dart
│
├── data/
│ ├── service/
│ │ └── api_service.dart
│ └── model/
│ └── user_model.dart
│
├── ui/
│ ├── onboarding_view.dart
│ ├── loginscreen.dart
│ ├── signupscreen.dart
│ ├── role_view.dart
│ ├── dashboard/
│ │ ├── dashboard_view.dart
│ │ └── sections/
│ │ ├── search_section.dart
│ │ ├── stats_section.dart
│ │ ├── bottom.dart
│ ├── request_view.dart
│ ├── check_in_form.dart
│ ├── check_in_review.dart
│ └── check_in_success.dart

## 🔗 API Endpoints Used

### **Base URL:**  
`https://dummyjson.com`

### ✔ Fetch All Users  
`GET /users`

### ✔ Search Visitors  
`GET /users/search?q=query`

### ✔ Login  
`POST /auth/login`

### ✔ Filter Users  
`GET /users/filter?key=value`

### ✔ Update User  
`PUT /users/{id}`

---

## 🚀 How to Run

### 1️⃣ Clone the repo
```sh
git clone https://github.com/YOUR_USERNAME/YOUR_REPO.git
2️⃣ Install dependencies
sh
Copy code
flutter pub get
3️⃣ Run the app
sh
Copy code
flutter run
...
🤝 Contributing
Pull requests are welcome!
For major changes, open an issue first to discuss what you'd like to improve.

📄 License
This project is licensed under the MIT License – feel free to modify and use it.

💜 Author
Sreeshna C
Flutter Developer
🚀 Passionate about building clean UI & smooth user experience.
