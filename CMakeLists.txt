cmake_minimum_required(VERSION 3.16)

project(VideoPlayer VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

find_package(QT NAMES Qt6 Qt5 REQUIRED COMPONENTS Widgets LinguistTools)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Widgets LinguistTools)
find_package(Qt6 REQUIRED COMPONENTS Core Gui Widgets  Quick Multimedia LabsPlatform MultimediaWidgets  )

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appVideoPlayer
    main.cpp
)


target_link_libraries(appVideoPlayer PRIVATE Qt${QT_VERSION_MAJOR}::Widgets Qt${QT_VERSION_MAJOR}::Multimedia Qt${QT_VERSION_MAJOR}::MultimediaWidgets)
set_target_properties(appVideoPlayer PROPERTIES CXX_STANDARD 17 CXX_STANDARD_REQUIRED ON)
target_link_libraries(appVideoPlayer PRIVATE Qt6::Core Qt6::Gui Qt6::Quick Qt6::Widgets Qt6::Multimedia Qt6::MultimediaWidgets  Qt6::LabsPlatform)

qt_add_resources(RESOURCES resources.qrc)
target_sources(appVideoPlayer PRIVATE ${RESOURCES})


qt_add_qml_module(appVideoPlayer
    URI VideoPlayer
    VERSION 1.0
    QML_FILES
        Main.qml
        RESOURCES resources.qrc
)


# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appVideoPlayer PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appVideoPlayer
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appVideoPlayer
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appVideoPlayer
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
