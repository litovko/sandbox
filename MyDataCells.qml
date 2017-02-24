import QtQuick 2.0

Item {
    id: d
    property int count:0
    function addcolumn(dat) {
        var newObject = Qt.createQmlObject(
            'MyCellInt {
                celldate: "'+dat+'"
                celltype: -1
                width: d.width/dataset.children.length
                height: dataline.height
            }',dataset, "dynamicDataCell");
    }
    function delcolumn(num) {
      dataset.children[num].destroy();
    }
    onCountChanged: {
        print("Data cell count changed="+count)
        for(var i=0;i<dataset.children.length;i++) print("i:"+i+"="+dataset.children[i].celldate);
    }
    Row {
        id: dataset
        anchors.fill: parent
        onChildrenChanged: {count=children.length;}
        Component.onCompleted: {count=children.length;}
    }

}
