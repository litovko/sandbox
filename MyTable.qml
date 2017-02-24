import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    id: mt
    function addcolumn(){
        for(var i=0; i<datarows.children.length;i++) {
            datarows.children[i].addcolumn();
        }
        lh.addcolumn();
    }
    function addrow(){
        var newObject = Qt.createQmlObject(
            'MyCellLine {
                width: header.width
                height: 40
            }',datarows, "dynamicRow");
    }

    Rectangle {
        id: rect
        anchors.fill: parent
        anchors.margins: 5
        border.color: "gray"
        border.width: 1
        color: "transparent"

        Row { // заголовок таблицы
            id: header
            anchors.margins: 5
            anchors.left: parent.left
            anchors.top: parent.top
            MyHeaderItem {
                width: 90
                height: 80
                text: "<p>Порядковый</p><p>№</p><p>измерений</p><p></p>"
            }
            MyHeaderItem {
                width: 90
                height: 80
                text: "<p>№</p><p>гирь</p><p></p><p></p>"
            }
            MyHeaderItem {
                width: 90
                height: 80
                text: "<p>Вес гирь</p><p>на площадке</p><p>P, гс</p><p></p>"
            }
            MyHeaderItem {
                width: 90
                height: 80
                text: "<p>Вр.момент</p><p>М=R*P,</p><p>гс*см</p><p></p>"
            }
            MyHeaderItem {
                width: 90
                height: 80
                text: "<p>Сопр.вращ.</p><p>срезу</p><p>гс/см/см</p><p></p>"
            }
            MyLongHeader {
                id: lh
                width: 300
                height: 80
                text1: "Отсчеты по индикатору ("+count+" шт.)"
                onCountChanged: {
                    print("count changed="+count)
                }
            }
            MyHeaderItem {
                width: 90
                height: 80
                text: "<p>Среднее</p><p>арифм.</p><p>значение</p><p>ед.</p>"
            }
        } //конец заголовка
        Column {
            id: datarows
            anchors.leftMargin:  5
            anchors.left: parent.left
            anchors.top: header.bottom
            anchors.right: parent.right

            MyCellLine{
                width: header.width
                height: 40
            }
            MyCellLine{
                width: header.width
                height: 40
            }
        }
    }

}
