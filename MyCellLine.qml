import QtQuick 2.0

Item {
    id: dl
    property int celwidth: 90
    property real longcelwidth: 300
    property int count: 1
    function addcolumn(){
        dc.addcolumn("-")
    }
    function delcolumn(num){
        dc.delcolumn(num)
    }
    //Component.onCompleted: addcolumn("+")
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
        MyDataCells{
            id: dc
            width: longcelwidth
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
