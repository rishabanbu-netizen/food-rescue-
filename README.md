# 🥗 Food Rescue - Full-Stack Surplus Food Redistribution Platform

> **"Save Food. Feed People. Build a Better Future."**
> A modern full-stack web application designed to eliminate food waste by connecting restaurants, bakeries, supermarkets, and hotels with surplus food to NGOs, charities, volunteers, and individuals in need.

---

## 🌟 Key Features & Role Portals

### 🥖 1. Food Donors (Restaurants, Bakeries, Supermarkets, Hotels)
- **Fast Food Posting**: Submit surplus items in under 2 minutes with portions, food types (Vegetarian, Non-Vegetarian, Vegan), expiration date/time, and pickup windows.
- **My Donations**: Real-time management dashboard with status tags (`Available`, `Claimed`, `Collected`).
- **Claimer Visibility**: Instantly view which charity/volunteer reserved the food, with direct contact numbers and pickup coordination.
- **Edit & Delete**: Full lifecycle control over active donation listings.

### 🍲 2. Food Receivers (NGOs, Charities, Shelters, Volunteers)
- **Surplus Discovery & Filters**: Filter by food category, dietary preferences (Veg/Non-Veg/Vegan), city/location, and quantity.
- **One-Click Reservation**: Instantly claim food with automated pickup confirmation and notifications.
- **Pickup Coordination**: Clear pickup instructions, address, donor phone number, and operating hours.
- **Mark as Collected**: Verify handover upon arrival to update community diversion records.

### 🛡️ 3. Platform Administrators
- **Platform Analytics**: Total users, active donations, meals rescued, and environmental CO₂/water preservation metrics.
- **User Management**: Search, supervise, activate, or suspend accounts across all roles.
- **Donation Moderation**: Inspect listings, approve/reject for food safety standards, and remove inappropriate content.
- **Reports & Environmental Trends**: Category breakdown, dietary preference mix, and fulfillment rates.

---

## 🛠️ Technology Stack

| Layer | Technologies |
| :--- | :--- |
| **Frontend** | React 18, Vite, Tailwind CSS, React Router v6, Axios, Lucide Icons |
| **Backend** | Node.js (v20+), Express.js REST API, JSON Web Tokens (JWT), bcryptjs password hashing |
| **Database** | MongoDB & Mongoose ODM (with automatic resilient fallback) |
| **Design** | Fully responsive layout (Mobile, Tablet, Desktop) with Plus Jakarta Sans typography |

---

## 📂 Project Structure

```
food-rescue/
├── backend/
│   ├── src/
│   │   ├── config/
│   │   │   ├── db.js               # MongoDB connection + resilient fallback
│   │   │   └── mockDb.js           # Resilient storage provider
│   │   ├── controllers/
│   │   │   ├── authController.js   # Register, Login, Profile, Password
│   │   │   ├── donationController.js# CRUD, Claim, Status, Search
│   │   │   ├── adminController.js  # Analytics, moderation, user management
│   │   │   └── notificationController.js # Alerts & activity notifications
│   │   ├── middleware/
│   │   │   ├── auth.js             # JWT bearer verification & role checks
│   │   │   └── errorMiddleware.js  # Global error & 404 handling
│   │   ├── models/
│   │   │   ├── User.js             # User schema with bcrypt hooks
│   │   │   ├── Donation.js         # Food donation schema
│   │   │   └── Notification.js     # User alerts schema
│   │   ├── routes/
│   │   │   ├── authRoutes.js       # /api/auth endpoints
│   │   │   ├── donationRoutes.js   # /api/donations endpoints
│   │   │   ├── adminRoutes.js      # /api/admin endpoints
│   │   │   └── notificationRoutes.js# /api/notifications endpoints
│   │   ├── utils/
│   │   │   └── seedData.js         # Sample donors, receivers, and food items
│   │   └── server.js               # Express application entrypoint
│   ├── .env                        # Environment configuration
│   ├── .env.example
│   └── package.json
│
├── frontend/
│   ├── src/
│   │   ├── api/
│   │   │   └── client.js           # Axios client with JWT bearer interceptors
│   │   ├── components/
│   │   │   ├── common/             # Navbar, Footer, ProtectedRoute
│   │   │   └── donation/           # FoodCard with status badges
│   │   ├── context/
│   │   │   ├── AuthContext.jsx     # Authentication state & 1-click demo logins
│   │   │   └── NotificationContext.jsx # Notification badges & polling
│   │   ├── pages/
│   │   │   ├── public/             # Home, About, How It Works, Available Food, Contact, Login, Register
│   │   │   ├── donor/              # Donor Dashboard, Add Donation, My Donations
│   │   │   ├── receiver/           # Receiver Dashboard, Claimed Food
│   │   │   ├── shared/             # Donation Details, Profile, Notifications
│   │   │   └── admin/              # Admin Dashboard, Manage Users, Manage Donations, Reports
│   │   ├── App.jsx                 # Complete route configuration (19 pages)
│   │   ├── main.jsx
│   │   └── index.css               # Tailwind CSS imports & animations
│   ├── index.html
│   ├── vite.config.js
│   ├── tailwind.config.js
│   └── package.json
└── README.md
```

---

## 🚀 Quick Start Guide

### 1. Prerequisites
- **Node.js** v18+ (Node v20 LTS recommended)
- **npm** v9+

### 2. Backend Setup
1. Open a terminal in `backend/`:
   ```bash
   cd backend
   npm install
   ```
2. Start the backend server:
   ```bash
   npm start
   ```
   *The backend starts at `http://localhost:5000`. If a local MongoDB instance is running, it connects via Mongoose. If not, the built-in resilient storage layer immediately activates and seeds sample data so you can test right away.*

### 3. Frontend Setup
1. Open a second terminal in `frontend/`:
   ```bash
   cd frontend
   npm install
   ```
2. Start the Vite development server:
   ```bash
   npm run dev
   ```
3. Open your browser at `http://localhost:5173`.

---

## 🔑 Pre-Seeded Demo Credentials

For quick testing without manually creating new accounts, you can use the **1-Click Demo Buttons** on the Login page or log in with these credentials:

| Role | Email | Password | Organization |
| :--- | :--- | :--- | :--- |
| **Admin** | `admin@foodrescue.org` | `admin123` | Food Rescue Operations HQ |
| **Donor** | `greenbites@foodrescue.org` | `password123` | Green Bites Bistro & Cafe |
| **Donor** | `sunshinebakery@foodrescue.org` | `password123` | Sunshine Artisan Bakery |
| **Donor** | `freshmart@foodrescue.org` | `password123` | FreshMart Organic Grocery |
| **Receiver** | `hopecharity@foodrescue.org` | `password123` | Hope Community Kitchen NGO |
| **Receiver** | `cityrelief@foodrescue.org` | `password123` | City Relief Shelter |

---

## 🌐 Complete Page Index (All 19 Pages)

### Public Pages
1. `/` — **Home Page**: Hero section, live statistics counters, 4-step workflow, featured donations, testimonials, and footer.
2. `/about` — **About Us**: Mission statement, impact story, core values, and community milestones.
3. `/how-it-works` — **How It Works**: Visual walkthroughs for donors and receivers, plus food safety protocols.
4. `/available-food` — **Available Food**: Interactive filters (category, dietary type, city, quantity, status) and responsive food cards.
5. `/contact` — **Contact Us**: Interactive contact form, headquarters info, phone, and FAQ accordion.
6. `/login` — **Sign In**: Email/password authentication + 1-Click Demo buttons.
7. `/register` — **Sign Up**: Account creation with Donor vs Receiver role selector.

### Donor Pages
8. `/donor/dashboard` — **Donor Dashboard**: Overview metrics (active listings, pending pickups, meals saved), quick actions, and recent postings.
9. `/donor/add-donation` — **Add Food Donation**: Comprehensive form with validation, dietary types, pickup hours, and image selector.
10. `/donor/my-donations` — **My Donations**: Status filter tabs, claimer contact popup, and inline edit/delete modals.

### Receiver & Details Pages
11. `/donations/:id` — **Donation Details**: High-resolution image, donor contact, pickup schedule, and **Claim Food** button.
12. `/receiver/dashboard` — **Receiver Dashboard**: Pickup schedule overview, collection milestones, and recommended nearby surplus.
13. `/receiver/claimed-food` — **Claimed Food**: Pickup instructions, donor phone numbers, and **"Mark as Collected"** action.

### Shared User Pages
14. `/profile` — **Account Profile**: Manage contact details, organization address, and password change.
15. `/notifications` — **Notifications**: Activity alert feed with unread badges and mark-all-read.

### Admin Pages
16. `/admin/dashboard` — **Admin Dashboard**: High-level platform health, user tallies, and recent listings.
17. `/admin/users` — **Manage Users**: Searchable user directory, role badges, active/suspended toggles, and account deletion.
18. `/admin/donations` — **Manage Donations**: Donation moderation table with approve/reject and removal controls.
19. `/admin/reports` — **Reports & Statistics**: Environmental calculations (CO₂ abated, water saved), category distribution, and dietary mixes.

---

## 🔌 API Endpoints Summary

- **Auth**: `POST /api/auth/register`, `POST /api/auth/login`, `GET /api/auth/me`, `PUT /api/auth/profile`, `PUT /api/auth/change-password`
- **Donations**: `GET /api/donations`, `POST /api/donations`, `GET /api/donations/:id`, `GET /api/donations/donor/my-donations`, `PUT /api/donations/:id`, `DELETE /api/donations/:id`, `POST /api/donations/:id/claim`, `POST /api/donations/:id/collect`, `GET /api/donations/receiver/claimed-food`
- **Admin**: `GET /api/admin/stats`, `GET /api/admin/users`, `PUT /api/admin/users/:id/status`, `DELETE /api/admin/users/:id`, `GET /api/admin/donations`, `PUT /api/admin/donations/:id/moderate`
- **Notifications**: `GET /api/notifications`, `PUT /api/notifications/:id/read`, `PUT /api/notifications/mark-all-read`
- **Health**: `GET /api/health`

---

## 📄 License
MIT License. Built to help eradicate hunger and achieve zero food waste in our communities.
