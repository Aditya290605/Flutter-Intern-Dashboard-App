# 🚀 Flutter Intern Dashboard

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Web](https://img.shields.io/badge/Web-Responsive-brightgreen?style=for-the-badge)
![Mobile](https://img.shields.io/badge/Mobile-Android%20%7C%20iOS-blue?style=for-the-badge)

**A modern, beautiful, and responsive Intern Dashboard App built with Flutter**

*Featuring BLoC architecture, dark/light themes, and smooth animations*

[![Live Demo](https://img.shields.io/badge/🌐_Live_Demo-View_App-2196F3?style=for-the-badge)](https://flutter-intern-dashboard-app.vercel.app/)
[![Download APK](https://img.shields.io/badge/📱_Download-APK-success?style=for-the-badge)](https://drive.google.com/file/d/1aBpnZ0nHSP6gnV_yl9AQJHVa_elI03oZ/view?usp=sharing)


</div>

---

## 📱 App Screenshots

<table>
  <tr>
    <td align="center"><strong>🎨 Splash Screen</strong></td>
    <td align="center"><strong>🔐 Login Screen</strong></td>
    <td align="center"><strong>📝 Sign Up Screen</strong></td>
  </tr>
  <tr>
    <td><img src="https://i.postimg.cc/rsYbtdZd/Screenshot-1754239283.png" width="250" alt="Splash Screen"/></td>
    <td><img src="https://i.postimg.cc/zDd4QMDJ/Screenshot-1754239288.png" width="250" alt="Login Screen"/></td>
    <td><img src="https://i.postimg.cc/WbCCNkJC/Screenshot-1754239294.png" width="250" alt="Sign Up Screen"/></td>
  </tr>
  <tr>
    <td align="center"><strong>📊 Dashboard</strong></td>
    <td align="center"><strong>🏆 Leaderboard</strong></td>
    <td align="center"><strong>📢 Announcements</strong></td>
  </tr>
  <tr>
    <td><img src="https://i.postimg.cc/fbhPXQCv/Screenshot-1754239312.png" width="250" alt="Dashboard Screen"/></td>
    <td><img src="https://i.postimg.cc/zBzPtw9b/Screenshot-1754239316.png" width="250" alt="Leaderboard Screen"/></td>
    <td><img src="https://i.postimg.cc/j2C3KxqR/Screenshot-1754239322.png" width="250" alt="Announcements Screen"/></td>
  </tr>
</table>

---

## ✨ Key Features

<div align="center">

| 🎯 **Core Features** | 🎨 **UI/UX** | 🏗️ **Architecture** |
|:---:|:---:|:---:|
| Multi-screen Navigation | Material Design 3 | BLoC Pattern |
| Light/Dark Themes | Responsive Layout | Clean State Management |
| Real-time Data Display | Smooth Animations | Modular Structure |
| Interactive Elements | Custom Widgets | Mock Data Integration |

</div>

### 📱 **Implemented Screens**

#### 🎨 **Splash Screen**
- Elastic logo animation with `ScaleTransition`
- Slide-in text and fade-in loading indicator
- Dynamic gradient background
- 3-second auto-navigation to login

#### 🔐 **Authentication Pages**
- **Login/Sign-Up**: Tabbed interface with smooth transitions
- Form field validation with elegant design
- Error handling and user feedback

#### 📊 **Dashboard**
- Intern profile: Name, Referral Code, Total Donations
- Interactive copy-to-clipboard functionality
- Reward cards styled as unlockable achievements
- Theme toggle with sun/moon icon

#### 🏆 **Leaderboard**
- Top 3 podium layout with medal indicators
- Scrollable list of all interns with donation stats
- Entry animations and hover effects (web)
- Real-time ranking display

#### 📢 **Announcements**
- Priority-tagged announcement cards
- Local date formatting for clarity
- Responsive layouts with text overflow handling
- Color-coded priority system

---

## 🧠 Architecture & Technical Stack

<details>
<summary><strong>🏗️ Project Architecture</strong></summary>

```
lib/
├── 📂 blocs/
│   └── theme_bloc.dart          # Theme state management
├── 📂 models/
│   └── intern_model.dart        # Data models
├── 📂 screens/
│   ├── splash_screen.dart       # Animated splash screen
│   ├── login_screen.dart        # Authentication UI
│   ├── dashboard_screen.dart    # Main dashboard
│   ├── leaderboard_screen.dart  # Rankings display
│   └── announcements_screen.dart# News & updates
├── 📂 widgets/
│   └── custom_card.dart         # Reusable UI components
├── 📂 services/
│   └── mock_data_service.dart   # Data simulation
├── 📂 theme/
│   └── app_theme.dart          # Theme configuration
└── main.dart                    # App entry point
```

</details>

### 🔧 **Technical Highlights**

- **🔁 BLoC Pattern**: Clean separation of business logic and UI
- **🎨 Material Design 3**: Modern UI with custom color palette (`#2196F3`)
- **📱 Responsive Design**: Adaptive layouts for mobile, tablet, and desktop  
- **🌙 Theme System**: Dynamic light/dark mode switching
- **✨ Animations**: Smooth transitions using `AnimationController`
- **🔤 Typography**: Google Fonts (Poppins) for consistent design

---

## 📊 Mock Data Overview

<details>
<summary><strong>👤 Current User Profile</strong></summary>

**Rahul Sharma**
- **Referral Code**: `rahul2025`
- **Total Donations**: ₹15,750
- **Rank**: #3 on leaderboard

</details>

<details>
<summary><strong>🏆 Leaderboard Rankings</strong></summary>

| Rank | Intern Name | Donations | Badge |
|:----:|-------------|-----------|:-----:|
| 🥇 | Riya Verma | ₹22,000 | Gold |
| 🥈 | Aryan Patel | ₹18,500 | Silver |
| 🥉 | Rahul Sharma | ₹15,750 | Bronze |
| 4️⃣ | Sneha Mehta | ₹11,200 | - |
| 5️⃣ | Karan Kapoor | ₹7,800 | - |

</details>

<details>
<summary><strong>🎁 Achievement System</strong></summary>

**Unlockable Rewards**:
- 🏅 **First Steps**: ₹1,000 milestone
- 🌟 **Rising Star**: ₹5,000 milestone  
- 🚀 **High Achiever**: ₹10,000 milestone
- 👑 **Champion**: ₹20,000 milestone

</details>

---

## 🎨 Theme System

<div align="center">

| 🌞 **Light Theme** | 🌙 **Dark Theme** |
|:---:|:---:|
| Clean white backgrounds | Material dark (`#121212`) |
| Blue primary accents | Adaptive color scheme |
| High contrast text | Eye-friendly colors |
| Professional appearance | Modern dark aesthetic |

</div>

### 🔘 **Theme Features**
- **Dynamic Switching**: Toggle between light/dark modes
- **Adaptive Components**: All UI elements respond to theme changes
- **Smooth Transitions**: Animated theme switching
- **Accessibility**: High contrast ratios for readability

---

## 🌐 Cross-Platform Support

<table align="center">
  <tr>
    <td align="center"><strong>📱 Mobile</strong></td>
    <td align="center"><strong>🌐 Web</strong></td>
  </tr>
  <tr>
    <td>✅ Android<br/>✅ iOS</td>
    <td>✅ Chrome<br/>✅ Firefox<br/>✅ Safari</td>
  </tr>
</table>

### **Responsive Features**:
- **Mobile**: Full-width layouts optimized for touch
- **Tablet**: Adaptive spacing and component sizing  
- **Desktop**: Constrained width (600px max) for optimal viewing
- **Web**: Hover effects and cursor interactions

---

## 📦 Dependencies

<details>
<summary><strong>📋 Package List</strong></summary>

| Package | Version | Purpose |
|---------|---------|---------|
| `flutter_bloc` | ^8.1.0 | State management with BLoC pattern |
| `google_fonts` | ^6.1.0 | Custom typography (Poppins font) |
| `animations` | ^2.0.0 | Built-in transitions and animations |
| `fluttertoast` | ^8.2.0 | User feedback notifications |

</details>

---

## 🚀 Getting Started

### **Prerequisites**
- Flutter SDK (3.0.0 or higher)
- Dart SDK (3.0.0 or higher)
- Android Studio / VS Code
- Git

### **Installation Steps**

```bash
# 1️⃣ Clone the repository
git clone https://github.com/adityamagar/intern-dashboard.git

# 2️⃣ Navigate to project directory
cd intern-dashboard

# 3️⃣ Install dependencies
flutter pub get

# 4️⃣ Run the app
flutter run -d chrome      # 🌐 For Web
flutter run -d android     # 📱 For Android
flutter run -d ios         # 🍎 For iOS
```

### **Build for Production**

```bash
# 🌐 Web Build
flutter build web --release

# 📱 Android APK
flutter build apk --release

# 🍎 iOS Build
flutter build ios --release
```

---

## 🎯 Future Enhancements

<details>
<summary><strong>🔮 Planned Features</strong></summary>

- [ ] **Real API Integration**: Replace mock data with live backend
- [ ] **Push Notifications**: Real-time announcement updates
- [ ] **Data Persistence**: Local storage for offline functionality  
- [ ] **Advanced Analytics**: Detailed donation tracking charts
- [ ] **Social Features**: Share achievements on social media
- [ ] **Multi-language Support**: Internationalization (i18n)
- [ ] **Advanced Animations**: Lottie animations integration
- [ ] **Performance Optimization**: Image caching and lazy loading

</details>

---

## 🤝 Contributing

<div align="center">

**We welcome contributions! Here's how you can help:**

[![Contribute](https://img.shields.io/badge/📝_Contribute-Guidelines-brightgreen?style=for-the-badge)](CONTRIBUTING.md)
[![Issues](https://img.shields.io/badge/🐛_Report-Issues-red?style=for-the-badge)](https://github.com/adityamagar/intern-dashboard/issues)
[![Feature Request](https://img.shields.io/badge/💡_Request-Features-blue?style=for-the-badge)](https://github.com/adityamagar/intern-dashboard/issues/new)

</div>

### **Development Workflow**
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

---

## 📄 License

<div align="center">

This project is licensed under the **MIT License**.

[![License](https://img.shields.io/badge/📜_License-MIT-yellow?style=for-the-badge)](LICENSE)

*See the [LICENSE](LICENSE) file for details.*

</div>

---

## 👨‍💻 About the Developer

<div align="center">

**🧑‍💻 Aditya Magar**

*Flutter Developer & Mobile App Enthusiast*

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/adityamagar)
[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/adityamagar)
[![Email](https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:adityamagar@example.com)

*Built with ❤️ for the Flutter community*

</div>

---

## ⭐ Show Your Support

<div align="center">

**If you like this project, please consider:**

[![Star this repo](https://img.shields.io/badge/⭐_Star-This_Repo-gold?style=for-the-badge)](https://github.com/Aditya290605/Flutter-Intern-Dashboard-App)
[![Fork](https://img.shields.io/badge/🍴_Fork-This_Repo-lightblue?style=for-the-badge)](https://github.com/Aditya290605/Flutter-Intern-Dashboard-App/fork)
[![Follow](https://img.shields.io/badge/👤_Follow-@adityamagar-blue?style=for-the-badge)](https://github.com/Aditya290605)

**Your support means the world! 🌟**

</div>

---

<div align="center">

### 🚀 **Ready to explore the future of intern management?**

[![Get Started](https://img.shields.io/badge/🎯_Get_Started-Now-success?style=for-the-badge&logo=rocket)](https://your-web-app-link.vercel.app)

---

*Made with 💙 Flutter | Designed with 🎨 Material Design 3*

**© 2025 Aditya Magar. All rights reserved.**

</div>
