import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

RowLayout {
    id: rowLayout
    width: 200
    height: 100
    property alias comboBox: comboBox
    property alias image: image
    property alias ftextField: textField
    property alias roundButtonPlus: roundButtonPlus
    spacing: 10

    Image {
        id: image
        width: 100
        height: 100
        Layout.maximumHeight: 60
        Layout.maximumWidth: 60
        fillMode: Image.PreserveAspectFit
        Layout.fillWidth: true
        Layout.fillHeight: true
        source: "images/defaultFood3.png"
    }

    TextField {
        id: textField
        text: qsTr("")
        placeholderText: "Food Name"
        Layout.fillWidth: true
        Layout.fillHeight: false
    }

    ComboBox {
        id: comboBox
        currentIndex: 0
        textRole: ""
        Layout.fillHeight: false
        Layout.fillWidth: true
        editable:true
        editText:"Unit"
        model: ListModel{
            ListElement {text:"grams"}
            ListElement {text:"litre"}
            ListElement {text:"carbs"}
            ListElement {text:"Pieces"}

        }
    }

    RoundButton {
        id: roundButtonPlus
        text: "+"
        Layout.fillHeight: false
        Layout.fillWidth: false


    }
}
