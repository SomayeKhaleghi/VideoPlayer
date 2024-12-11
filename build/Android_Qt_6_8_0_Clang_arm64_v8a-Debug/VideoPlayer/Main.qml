import QtQuick 2.15
import QtQuick.Controls 2.15
import QtMultimedia 5.15
import Qt.labs.platform 1.1

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: qsTr("Video Player")

    Rectangle {
        color: "#121212"
        anchors.fill: parent

        Rectangle {
            color: "#1F1F1F"
            height: 50
            anchors.top: parent.top
            width: parent.width
            border.color: "#3C3C3C"

            Text {
                text: qsTr("Challenge 2 _ Video Player")
                color: "#FFFFFF"
                font.bold: true
                font.pixelSize: 20
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id: videoContainer
            color: "#000000"
            width: parent.width * 0.9
            height: parent.height * 0.7
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 60
            radius: 8
            border.color: "#3C3C3C"

            Video {
                id: videoPlayer
                autoPlay: true
                anchors.fill: parent
                source: "qrc:/resources/videos/test.mp4"
            }

            Text {
                id: noVideoText
                text: qsTr("No video loaded.\nClick 'Browse' to select a file.")
                color: "#888888"
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.centerIn: parent
                visible: videoPlayer.source === ""
            }
        }

        Rectangle {
            color: "#1F1F1F"
            width: parent.width
            height: 60
            anchors.bottom: parent.bottom
            border.color: "#3C3C3C"

            Row {
                spacing: 7
                anchors.centerIn: parent

                Button {
                    text: qsTr("🎥 Browse")

                    onClicked: {
                        fileDialog.folder = "file:///storage/emulated/0/Download"
                        fileDialog.visible = true
                    }
                    font.pixelSize: 12
                }

                Button {
                    text: qsTr("▶ Play")
                    enabled: videoPlayer.source !== ""
                    onClicked: videoPlayer.play()
                    font.pixelSize: 12
                }

                Button {
                    text: qsTr("⏸ Pause")
                    enabled: videoPlayer.source !== ""
                    onClicked: videoPlayer.pause()
                    font.pixelSize: 12
                }

                Button {
                    text: qsTr("■ Stop")
                    enabled: videoPlayer.source !== ""
                    onClicked: videoPlayer.stop()
                    font.pixelSize: 12
                }
            }
        }

        FileDialog {
            id: fileDialog
            folder : "file:///storage/emulated/0/Download"
            title: qsTr("Select Video File")
            onAccepted: {
                console.log("from dialg-> fileDialog.file:", fileDialog.file)
                videoPlayer.source = fileDialog.file
                noVideoText.visible = false
                videoPlayer.play()
            }

            onRejected: {
                console.log("File selection canceled")
            }

            onVisibleChanged: {
                if (visible) {
                        console.log("Dialog opened in folder:", fileDialog.folder)
                 }
            }
            visible: false
        }
    }
}
