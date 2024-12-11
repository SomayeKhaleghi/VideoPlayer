# VideoPlayer - Cross-Platform Video Player using Qt Multimedia

## Overview

**VideoPlayer** is a simple and efficient video player application built with **Qt 6.8.0**. It utilizes the **Qt Multimedia** and **Qt Quick** modules to provide a native, user-friendly interface for playing videos. The application is designed to work seamlessly on both desktop and Android devices. 

Key features include basic video controls such as **Play**, **Pause**, and **Stop**, along with a file browsing capability to easily load video files from local storage. It supports a variety of video formats including **MP4**, **AVI**, and **MKV**. 

This project serves as a demonstration of building multimedia applications using **Qt** and offers a great starting point for developing more complex video-based applications.

---

## Features

- **Play, Pause, and Stop**: Basic controls for video playback.
- **File Selection Dialog**: Users can browse and select video files from the device's storage.
- **Cross-Platform**: Supports both desktop (Linux/macOS/Windows) and Android platforms.
- **Responsive UI**: Designed with **Qt Quick** for a modern and attractive interface.
- **Multimedia Support**: Uses **Qt Multimedia** to play a wide range of video formats.

---

## Project Structure

The project is organized as follows:

VideoPlayer/ ├── src/ │ ├── main.cpp # Application entry point │ └── main.qml # Main user interface (QML file) ├── resources.qrc # Resources like images or icons ├── CMakeLists.txt # CMake configuration for building the project └── README.md # Project documentation

---

## Installation

### Prerequisites

To run **VideoPlayer**, you need the following software:

- **Qt 6.8.0** (with Qt Multimedia and Qt Quick modules)
- **Android SDK** and **NDK** (for Android deployment)
- **CMake** (for building the project)
- **Android Device/Emulator** (for testing Android builds)

### Setup Instructions

#### 1. Clone the Repository

Clone the project to your local machine using the following command:

```bash
git clone https://github.com/your-username/VideoPlayer.git
cd VideoPlayer

2. Install Dependencies
Ensure that you have Qt 6.8.0 installed with the required modules (Qt Multimedia, Qt Quick, Qt Android Extras for Android).


3. Build the Project
Create a build directory and compile the project using CMake.

Running the Application

On Android
To build and deploy the application on an Android device:

Ensure your Android device is connected via USB (with debugging enabled) or use an Android emulator.
Set up the Android Toolchain and configure it within the CMake project.
Build the APK:
bash
cmake .. -DCMAKE_TOOLCHAIN_FILE=/path/to/your/qt-android-toolchain.cmake
make android

4. Install the APK on your device

5. Run the app on your Android device/emulator.




Usage
Browse for a Video: Click on the Browse button to open a file dialog where you can select a video file from your device.
Play Video: After selecting the video, click Play to start the video playback.
Pause and Stop: Use the Pause and Stop buttons to control the video playback.



Screenshot

![Screenshot_20241211-190405](https://github.com/user-attachments/assets/924c73eb-cf67-4909-944f-2edfa1da230f)
![Screenshot_20241211-190416](https://github.com/user-attachments/assets/4ce738bd-aa88-4ad5-955c-a874d3eb37ab)


Acknowledgements
Qt Framework: The core framework that powers this application, providing cross-platform support and powerful multimedia capabilities.
Qt Multimedia: For handling video playback and multimedia features.
Qt Quick: For creating a responsive, modern user interface.
Qt Android: For enabling Android-specific deployment and file handling.
CMake: For managing the build process across different platforms.


Troubleshooting
Permissions on Android: If the app can't access the device's storage, make sure you request the necessary storage permissions in the Android manifest file and at runtime.

Multimedia Playback Issues: If videos don't play or there is no sound, make sure the appropriate multimedia libraries are installed on your system.



Conclusion
The VideoPlayer app demonstrates how to use Qt Multimedia to create a simple video player with basic controls and the ability to browse for files. It's an excellent starting point for learning multimedia development with Qt, and the cross-platform nature of the app makes it perfect for both desktop and mobile (Android) environments.

Feel free to fork the repository and contribute to this project. We welcome any improvements or new features!




### Key Sections to Highlight:
- **Overview**: Describes what the project is, its purpose, and the main components (Qt Multimedia, Qt Quick).
- **Features**: Lists the capabilities of the app (play, pause, stop, etc.).
- **Installation**: Includes setup instructions for both desktop and Android.
- **Usage**: Provides simple instructions on how to interact with the app.
- **Contributing**: Instructions on how others can contribute to the project.
- **License**: States the licensing of the project (e.g., MIT License).
- **Troubleshooting**: Provides solutions for common issues users might face.



