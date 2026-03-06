🌊 Ocean View Resort – Online Room Reservation System

📌 Project Overview

The Online Room Reservation System is a web-based application developed for Ocean View Resort in Galle. The system automates the manual reservation process, reducing booking conflicts and improving operational efficiency.

---

🚀 Technologies Used

- Java (JDK 8+)
- Servlet & JSP
- MVC (Model-View-Controller) Architecture
- DAO Design Pattern
- Apache Tomcat Server
- MySQL Database
- Maven (Dependency Management)
- JUnit 5 (Testing)
- Git & GitHub (Version Control)

---

🏗️ System Architecture

The application follows a 3-Tier MVC Architecture:

1. Presentation Layer (View)
   - JSP Pages
   - User Interface

2. Controller Layer
   - Servlets handling HTTP requests

3. Business Logic Layer
   - Service classes implementing business rules

4. Data Access Layer
   - DAO classes interacting with MySQL database

5. Database
   - MySQL Workbench designed schema

---

🔑 System Features

✔ User Authentication
- Secure login system
- Session management
- Authorized staff access only

✔ Reservation Management (Completed CRUD operations)
- Add new reservations
- View reservation details
- Update reservations
- Delete reservations

✔ Bill Calculation
- Automatic bill calculation based on stay duration
- Dynamic room rate computation

✔ Help Section
- Instructions to users how use the sytem

✔ Logout the sytem securely
- Provide user to logout from the system
- Redirect to the login page

✔ Validation & Security
- Input validation (null checks, date validation)
- Server-side validation
- Exception handling
- SQL injection prevention (PreparedStatement)

---

🗄️ Database Structure

Main Tables:

- `users`
- `reservations`
- `rooms`
- `bills`

Database operations are handled through the DAO layer using JDBC.

---

🧪 Testing

Testing was performed using:

- JUnit 5
- Maven test lifecycle

To run tests:

```bash
mvn test
