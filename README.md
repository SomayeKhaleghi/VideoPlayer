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

## Installation

### Prerequisites

To run **VideoPlayer**, you need the following software:

- **Qt 6.8.0** (with Qt Multimedia and Qt Quick modules)
- **Android SDK** and **NDK** (for Android deployment)
- **QMake** (for building the project)
- **Android Device/Emulator** (for testing Android builds)

### Setup Instructions

#### 1. Clone the Repository

Clone the project to your local machine using the following command:

```bash
git clone https://github.com/your-username/VideoPlayer.git
cd VideoPlayer
````

#### 2. Install Dependencies
Ensure that you have Qt 6.8.0 installed with the required modules (Qt Multimedia, Qt Quick, Qt Android Extras for Android).

#### 3. Build the Project
Set up the Android Toolchain and configure it within the QMake project.
/opt/Qt/Tools/CMake/bin/cmake -S /root/VideoPlayer -B /root/VideoPlayer/build/Android_Qt_6_8_0_Clang_arm64_v8a-Debug -DCMAKE_CXX_FLAGS_INIT:STRING= -DANDROID_PLATFORM:STRING=android-23 -DQT_QMAKE_EXECUTABLE:FILEPATH=/opt/Qt/6.8.0/android_arm64_v8a/bin/qmake -DCMAKE_GENERATOR:STRING=Ninja -DQT_NO_GLOBAL_APK_TARGET_PART_OF_ALL:BOOL=ON -DCMAKE_PREFIX_PATH:PATH=/opt/Qt/6.8.0/android_arm64_v8a -DCMAKE_BUILD_TYPE:STRING=Debug -DANDROID_ABI:STRING=arm64-v8a -DCMAKE_C_COMPILER:FILEPATH=/root/Android/ndk/26.1.10909125/toolchains/llvm/prebuilt/linux-x86_64/bin/clang -DQT_USE_TARGET_ANDROID_BUILD_DIR:BOOL=ON -DCMAKE_CXX_COMPILER:FILEPATH=/root/Android/ndk/26.1.10909125/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ -DANDROID_USE_LEGACY_TOOLCHAIN_FILE:BOOL=OFF -DCMAKE_FIND_ROOT_PATH:PATH=/opt/Qt/6.8.0/android_arm64_v8a -DANDROID_NDK:PATH=/root/Android/ndk/26.1.10909125 -DANDROID_STL:STRING=c++_shared -DCMAKE_TOOLCHAIN_FILE:FILEPATH=/root/Android/ndk/26.1.10909125/build/cmake/android.toolchain.cmake -DQT_HOST_PATH:PATH=/opt/Qt/6.8.0/gcc_64 -DANDROID_SDK_ROOT:PATH=/root/Android






/opt/Qt/Tools/CMake/bin/cmake --build /root/VideoPlayer/build/Android_Qt_6_8_0_Clang_arm64_v8a-Debug --target all



 




#### 4. Install the APK on your device
Ensure your Android device is connected via USB (with debugging enabled) or use an Android emulator.
Run the app on your Android device/emulator.






---

## Usage
Browse for a Video: Click on the Browse button to open a file dialog where you can select a video file from your device.
Play Video: After selecting the video, start the video playback.
Pause and Stop: Use the Pause and Stop buttons to control the video playback.



### Screenshot
![Screenshot_20241211-190405](https://github.com/user-attachments/assets/924c73eb-cf67-4909-944f-2edfa1da230f)


![Screenshot_20241211-190416](https://github.com/user-attachments/assets/4ce738bd-aa88-4ad5-955c-a874d3eb37ab)


## Acknowledgements
Qt Framework: The core framework that powers this application, providing cross-platform support and powerful multimedia capabilities.
Qt Multimedia: For handling video playback and multimedia features.
Qt Quick: For creating a responsive, modern user interface.
Qt Android: For enabling Android-specific deployment and file handling.


