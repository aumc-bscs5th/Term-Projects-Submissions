import QtQuick 2.10
import QtQuick.Controls 2.3

Row{
    id: row
    spacing: 13
    Label{
        text: "First Name"
        font.pointSize: 12
        anchors.verticalCenter: parent.verticalCenter
        verticalAlignment: Text.AlignVCenter
    }
    TextField{
        anchors.verticalCenter: parent.verticalCenter
    }
    
}
