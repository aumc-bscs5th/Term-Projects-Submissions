import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Page {
    id: food
    property alias food: food
    property alias flickable: flickable
    transformOrigin: Item.Center
    anchors.fill: parent
    
    GridLayout {
        id: gridLayout
        anchors.fill: parent
        rows: 2
        columns: 1



        Flickable {
            id: flickable
            Layout.fillHeight: false
            Layout.fillWidth: true
            
            contentHeight: gridLayout.height- foodItemT2.height
            
            Pane {
                id: pane
                anchors.fill: parent

                ColumnLayout {
                    id: columnLayout
                    anchors.fill: parent
                    spacing: 15


                }
            }
            
            
            
            ScrollBar.vertical: ScrollBar { }
        }

        FoodItemT2 {
            id: foodItemT2
            Layout.fillWidth: true
            roundButtonPlus.onClicked: {
                var component = Qt.createComponent("FoodItemTemplate.qml");
                var object = component.createObject(columnLayout);
                object.fitextField.text = ftextField.text

            }

        }


    }
    
    
    
    
}
