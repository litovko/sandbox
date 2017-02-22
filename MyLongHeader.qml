import QtQuick 2.0

Item {
    id: hh
    property real h: 30
    property string text1: "Отсчеты по датчику, ед."
    property string text2: "Порядковый номер наблюдений"
    property int count: 0

    function addcolumn() {
        print(count)
        var newObject = Qt.createQmlObject(
                'MyHeaderItem{
                text: "-'+(count+1)+'"
                width: hh.width/r.children.length
                height: 20}',r, "dynamicColumn");
    }
    Column {
        anchors.fill: parent
        spacing: 0
        Rectangle {
            width: hh.width
            height: h
            color: "transparent"
            MyHeaderItem{
                text: text1
                anchors.fill: parent
            }
        }
        Rectangle {
            width: hh.width
            height: h
            color: "transparent"
            MyHeaderItem{
                text: text2
                anchors.fill: parent
            }
        }

        Rectangle {
            width: hh.width
            height: h
            color: "transparent"
            Row {
                id: r
                onChildrenChanged: {count=r.children.length;print(count)}
                Component.onCompleted: {count=r.children.length; print(count)}
                MyHeaderItem{
                    text: "1"
                    width: hh.width/r.children.length
                    height: 20
                    //anchors.fill: parent
                }
                MyHeaderItem{
                    text: "2"
                    width: hh.width/r.children.length
                    height: 20
                    //anchors.fill: parent
                }
                MyHeaderItem{
                    text: "3"
                    width: hh.width/r.children.length
                    height: 20
                    //anchors.fill: parent
                }
                MyHeaderItem{
                    text: "4"
                    width: hh.width/r.children.length
                    height: 20
                    //anchors.fill: parent
                }
                MyHeaderItem{
                    text: "5"
                    width: hh.width/r.children.length
                    height: 20
                    //anchors.fill: parent
                }
                MyHeaderItem{
                    text: "6"
                    width: hh.width/r.children.length
                    height: 20
                    //anchors.fill: parent
                }
                MyHeaderItem{
                    text: "7"
                    width: hh.width/r.children.length
                    height: 20
                    //anchors.fill: parent
                }
            }
        }
    }

    Rectangle {
        anchors.fill: parent
        color: "transparent"
        border.width: 1
        border.color: "lightblue"
        Text {
            id: t
            anchors.fill: parent
            color: "lightgreen"
            font.bold: true
            verticalAlignment: Text.AlignBottom
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 9

        }
    }
}
