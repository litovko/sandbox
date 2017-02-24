import QtQuick 2.7
import QtQuick.Controls 1.5

ApplicationWindow {
    visible: true
    width: 1000
    height: 600
    title: qsTr("Hello World")

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }
    Rectangle {
//        color: "#090808"
        gradient: Gradient {
            GradientStop {
                position: 0.00;
                color: "#000000";
            }
            GradientStop {
                position: 1.00;
                color: "#555555";
            }
        }
        border.color: "blue"
        anchors.fill: parent
        MyTable {
            anchors.fill: parent
            Component.onCompleted:  {addrow();/*addcolumn()*/}
        }
    }


}
