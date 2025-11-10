# YRCS PSGTECH Blood Donation Management System

A modern, elegant web application for managing blood donors and blood requests for YRCS PSGTECH. The system features a beautiful dark theme, smooth animations, and comprehensive donor management capabilities.

## 🌟 Features

- **User Registration**: Collect donor information including name, email, phone, blood group, age, and weight
- **Public Blood Request**: Anyone can request blood for a specific blood group
- **Admin Panel**: Password-protected admin panel (password: `12345678`) to:
  - View all registered donors
  - View statistics by blood group
  - Delete donor registrations
  - Export donor data to Excel
  - View blood request history
- **Automatic Notifications**: Email notifications sent to all registered donors with the requested blood group
- **Hospital Integration**: List of hospitals in Coimbatore with Google Maps integration
- **Excel Export**: Automatic Excel export on registration and manual export from admin panel
- **Statistics Dashboard**: View donor statistics by blood group
- **Request History**: Track all blood requests made
- **Dark Theme**: Elegant black/dark theme with smooth animations
- **Responsive Design**: Works on all devices

## 🎨 Design Features

- **Dark Theme**: Beautiful black/dark color scheme
- **Smooth Animations**: Fade-in, slide-up, pulse, float, and glow animations
- **Modern UI**: Glassmorphism effects, gradient buttons, and elegant cards
- **Interactive Elements**: Hover effects, transitions, and visual feedback

## 🛠️ Technology Stack

- **Frontend**: React.js with modern CSS animations
- **Backend**: Node.js with Express
- **Database**: SQLite
- **Excel Export**: XLSX library
- **Email Notifications**: Nodemailer

## 📋 Prerequisites

- Node.js (v14 or higher)
- npm (Node Package Manager)
- Git (for version control)

## 🚀 Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/kamanesh24/congenial-palm-tree.git
   cd congenial-palm-tree
   ```

2. **Install dependencies:**
   ```bash
   npm run install-all
   ```
   
   Or manually:
   ```bash
   npm install
   cd client
   npm install
   cd ..
   ```

3. **Configure Email (Optional but Recommended):**
   
   Create a `.env` file in the root directory:
   ```env
   PORT=5000
   EMAIL_USER=your-email@gmail.com
   EMAIL_PASS=your-app-password
   ```
   
   For Gmail, you'll need to generate an App Password:
   - Go to your Google Account settings
   - Enable 2-Step Verification
   - Generate an App Password for "Mail"

## 🏃 Running the Application

### Option 1: Use Batch Files (Windows)

- **Start both servers:** Double-click `start-all.bat`
- **Start server only:** Double-click `start-server.bat`
- **Start client only:** Double-click `start-client.bat`

### Option 2: Use npm scripts

**Development Mode (Runs both server and client):**
```bash
npm run dev
```

**Or run separately:**

**Terminal 1 - Start Server:**
```bash
npm run server
```

**Terminal 2 - Start Client:**
```bash
npm run client
```

The application will be available at:
- **Frontend**: http://localhost:3000
- **Backend API**: http://localhost:5000

## 📖 Usage

### For Donors:
1. Navigate to the home page
2. Fill in the registration form with your details
3. Submit to register as a blood donor
4. You will receive email notifications when your blood group is needed

### For Blood Requesters:
1. Navigate to "Request Blood" in the navigation
2. Fill in the blood request form
3. Select a hospital from Coimbatore
4. Submit to notify all matching donors

### For Admins:
1. Navigate to "Admin Panel" in the navigation
2. Enter password: `12345678`
3. View statistics, manage donors, export data, and view request history
4. Delete donor registrations as needed

## 🔌 API Endpoints

- `POST /api/register` - Register a new donor
- `GET /api/users` - Get all registered users (Admin)
- `DELETE /api/users/:id` - Delete a user (Admin)
- `GET /api/users/blood-group/:group` - Get users by blood group
- `POST /api/blood-request` - Create a blood request and notify donors
- `GET /api/blood-requests` - Get all blood requests
- `GET /api/stats` - Get statistics by blood group
- `GET /api/export-excel` - Export users data to Excel
- `GET /api/test` - Test server connection

## 💾 Database

The application uses SQLite database (`server/database.db`) with the following tables:
- `users` - Stores donor information
- `blood_requests` - Stores blood request records
- `notifications` - Stores notification history

Excel exports are saved in `server/exports/users_data.xlsx`

## 🏥 Hospitals

The system includes a list of major hospitals in Coimbatore:
- PSG Hospitals
- Kovai Medical Center and Hospital (KMCH)
- G. Kuppuswamy Naidu Memorial Hospital
- Sri Ramakrishna Hospital
- Coimbatore Medical College Hospital
- Apollo Hospitals
- Lotus Eye Hospital
- Gem Hospital

Each hospital has Google Maps integration for easy navigation.

## 📝 Notes

- The Excel file is automatically updated whenever a new user registers or is deleted
- Email notifications require proper email configuration in `.env`
- If email is not configured, notifications will still be stored in the database but emails won't be sent
- Admin password is set to `12345678` (change in `client/src/components/AdminPanel.js`)

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

ISC

## 👨‍💻 Author

YRCS PSGTECH

## 🔗 Repository

https://github.com/kamanesh24/congenial-palm-tree
