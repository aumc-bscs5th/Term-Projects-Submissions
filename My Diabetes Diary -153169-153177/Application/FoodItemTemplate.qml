import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

RowLayout {
    id: rowLayout
    width: 200
    height: 100
    property alias firoundButton: firoundButton
    property alias ficomboBox: ficomboBox
    property alias fitextField: fitextField
    property alias fiimage: fiimage
    spacing: 10

    GridLayout {
        id: gridLayout
        width: 100
        height: 100
        rowSpacing: 5
        Layout.fillHeight: true
        Layout.fillWidth: true
        columns: 4
        rows: 0

        Image {
            id: fiimage
            width: 100
            height: 100
            Layout.maximumHeight: 70
            Layout.maximumWidth: 70
            fillMode: Image.PreserveAspectFit
            Layout.fillWidth: true
            Layout.fillHeight: true
            source: "images/defaultFood3.png"
        }

        Text {
            id: fitextField
            Layout.maximumWidth: 333
            Layout.minimumWidth: 333
            font.pointSize: 12
            Layout.fillWidth: true
            Layout.fillHeight: false
        }

        Text {
            id: ficomboBox
            color: "#1b1b1b"
            text: "Grams"
            font.pointSize: 10
            Layout.fillHeight: false
            Layout.fillWidth: true

        }


        RoundButton {
            id: firoundButton
            text: "-"
            Layout.fillHeight: false
            Layout.fillWidth: false
            onClicked: {
                rowLayout.destroy()
            }
        }

        Rectangle {
            id: rectangle
            border.width:1
            height: 2
            color: "#2d2d2d"
            Layout.fillHeight: false
            Layout.maximumWidth: 1000
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.maximumHeight: 1
            Layout.columnSpan: 4
        }




    }
}
