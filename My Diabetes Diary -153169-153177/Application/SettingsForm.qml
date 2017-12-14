import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Page {
    id: page
    width: 600
    height: 400

    title: qsTr("Settings")

    footer: TabBar {
        id: tabBar
        position: TabBar.Footer


        TabButton {
            id: tabButton
            text: qsTr("Basic")
            onClicked:
            {
                basic.visible = true;
                food.visible = false;
                insulin.visible = false;
            }
        }

        TabButton {
            id: tabButton1
            text: qsTr("Food")
            onClicked:
            {
                basic.visible = false;
                food.visible = true;
                insulin.visible = false;
            }
        }

        TabButton {
            id: tabButton2
            text: qsTr("Insulin")
            onClicked:
            {
                basic.visible = false;
                food.visible = false;
                insulin.visible = true;
            }
        }
    }

    Basic {
        id: basic
    }



}
