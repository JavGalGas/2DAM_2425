import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

ColumnLayout {
    id: columnLayout
    width: 200
    height: 150
    property bool facturaPagada: false
    property string name
    property string factura
    signal modificar(string name, string factura)

    Rectangle {
        id: rectangle
        height: parent.height
        width: parent.width
        color: "red"
        radius: 10

        Column{
            id: column1
            anchors.fill: parent
            spacing: 30
            Text{
                id: nameField
                text: name
                anchors.horizontalCenter: parent.horizontalCenter
                horizontalAlignment: Text.AlignHCenter
            }
            Text{
                id: facturaField
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
                text: factura
            }
        }
    }

    Rectangle {
        id: rectangle1
        width: 200
        height: 40
        color: "#ababab"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        bottomLeftRadius: 10
        bottomRightRadius: 10

        Button {
            id: button
            text: qsTr("Modificar")
            anchors.centerIn: parent
            background: Rectangle{
                color: "#bababa"
                radius: 10
                border.width: 1
            }

            onClicked: modificar(nameField.text, facturaField.text)
        }
    }

    states: [
        State {
            name: "Pagada"
            when: column.facturaPagada === true
            PropertyChanges {
                target: rectangle
                color: "green"
            }

            PropertyChanges {
                target: nameField
                anchors.horizontalCenterOffset: 0
            }
        }
    ]
}


