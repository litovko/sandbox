import QtQuick 2.0

Item {
    id: dl
    property int celwidth: 90
    property real longcelwidth: 300
    property int count: 1
    function addcolumn(dat) {

        var newObject = Qt.createQmlObject(
            'MyCellInt {
                celldate: "'+dat+'"
                celltype: -1
                width: '+dl.longcelwidth/dl.count+'
                height: dataline.height
            }',dataline, "dynamicCell");
    }
    Component.onCompleted: addcolumn("+")
    Row {
        id: dataline
        width: dl.width
        height: parent.height

        MyCellInt {
            celldate: "0"
            celltype: 1
            width: celwidth
            height: dataline.height
        }
        MyCellInt {
            celldate: "1+пл."
            celltype: 0
            width: celwidth
            height: dataline.height
        }
        MyCellInt {
            celldate: "1321,5"
            celltype: 2
            width: celwidth
            height: dataline.height
        }
        MyCellInt {
            celldate: "-"
            celltype: -1
            width: celwidth
            height: dataline.height
        }
        MyCellInt {
            celldate: "-"
            celltype: -1
            width: celwidth
            height: dataline.height
        }

    }
}
