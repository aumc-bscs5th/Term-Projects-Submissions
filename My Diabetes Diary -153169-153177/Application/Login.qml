import QtQuick 2.0
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ApplicationWindow{
    id: applicationWindow
    visible: true

    Rectangle {
        id: rectangle
        x: 45
        y: 50
        width: 205
        height: 205
        color: "#ffffff"
        border.width: 6
    }

    Image {
        id: image
        x: 45
        y: 50

        width: 200
        height: 200
        fillMode: Image.PreserveAspectFit
        source: "images/defaultAvatar.png"
    }

    TextField {
        id: textField
        x: 278
        y: 50
        width: 270
        height: 40
        text: qsTr("")
        placeholderText: "Email"
    }

    TextField {
        id: textField1
        x: 278
        y: 127
        width: 270
        height: 40
        text: qsTr("")
        placeholderText: "Password"
    }

    Button {
        id: button
        x: 448
        y: 210
        text: qsTr("Login")
    }


}
