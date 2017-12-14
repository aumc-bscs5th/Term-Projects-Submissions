import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

Page {
    id: basic
    z: -2147483647
    anchors.fill: parent

    GridLayout {
        id: gridLayout
        columnSpacing: 55
        anchors.rightMargin: 40
        anchors.leftMargin: 40
        anchors.bottomMargin: 15
        anchors.topMargin: 15
        anchors.fill: parent
        rows: 1
        columns: 2


        GridLayout {
            id: gridLayout2
            width: 100
            height: 100
            columnSpacing: 1
            rowSpacing: 1
            columns: 1
            rows: 0

            Image {
                id: image
                width: 100
                height: 100
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredHeight: -1
                Layout.preferredWidth: -1
                Layout.minimumHeight: 111
                Layout.minimumWidth: 111
                Layout.columnSpan: 1
                Layout.maximumHeight: 222
                Layout.maximumWidth: 222
                fillMode: Image.PreserveAspectFit
                source: "images/defaultAvatar.png"
                layer.effect: OpacityMask {
                    maskSource: Item {
                        width: image.width
                        height: image.height
                        Rectangle {
                            anchors.centerIn: parent
                            width: image.adapt ? image.width : Math.min(image.width, image.height)
                            height: image.adapt ? image.height : width
                            radius:250
                        }
                    }
                }
            }

            Button {
                id: button
                text: qsTr("Change")
                Layout.fillWidth: true
                width: image.width
            }
        }

        GridLayout {
            id: gridLayout1
            width: 100
            height: 100
            columnSpacing: 10
            Layout.fillHeight: true
            Layout.fillWidth: true
            rowSpacing: 15
            columns: 3

            TextField {
                id: textField6
                text: qsTr("")
                Layout.minimumWidth: 50
                placeholderText: "First"
                Layout.minimumHeight: 0
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.fillWidth: true
            }


            TextField {
                id: textField7
                text: qsTr("")
                Layout.minimumWidth: 50
                placeholderText: "Last"
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.fillWidth: true
            }


            ComboBox {
                id: comboBox

                Layout.fillHeight: false
                model: ListModel{
                    id: genderComboBox
                    ListElement{text:"Male"}
                    ListElement{text:"Female"}
                    ListElement{text:"Non-Binary"}
                }

                Layout.fillWidth: true
            }

            TextField {
                id: textField8
                text: qsTr("")
                Layout.columnSpan: 3
                Layout.minimumWidth: 50
                placeholderText: "Email"
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.fillWidth: true
            }









            TextField {
                id: textField10
                text: qsTr("")
                Layout.columnSpan: 2
                placeholderText: "Weight"
                Layout.minimumWidth: 50
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.fillWidth: true
            }


            ComboBox {
                id: comboBox3
                Layout.fillHeight: false
                model: ListModel{
                    id: weightUnitComboBox
                    ListElement{text:"kg"}
                    ListElement{text:"lbs"}
                }
                Layout.fillWidth: true
            }


            ComboBox {
                id: comboBox1
                Layout.columnSpan: 2
                Layout.fillHeight: false
                model: ListModel{
                    id: diabetiesTypeUnitComboBox
                    ListElement{text:"Type-1 : Insulin Dependant"}
                    ListElement{text:"Type-2 : Insulin Independant"}
                }
                Layout.fillWidth: true
            }

            ComboBox {
                id: comboBox4
                Layout.fillHeight: false
                model: ListModel{
                    id: gulocoseUnitComboBox
                    ListElement{text:"mg/dl"}
                    ListElement{text:"mmol/L"}
                }
                Layout.fillWidth: true
            }

            TextField {
                id: textField14
                text: qsTr("")
                placeholderText: "High"
                Layout.columnSpan: 1
                Layout.minimumWidth: 50
                Layout.rowSpan: 1
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.fillWidth: true
            }



            TextField {
                id: textField15
                text: qsTr("")
                placeholderText: "Normal"
                Layout.columnSpan: 1
                Layout.minimumWidth: 50
                Layout.rowSpan: 1
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.fillWidth: true
            }



            TextField {
                id: textField16
                text: qsTr("")
                placeholderText: "Low"
                Layout.columnSpan: 1
                Layout.minimumWidth: 50
                Layout.rowSpan: 1
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.fillWidth: true
            }



        }


    }
}
