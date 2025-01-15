import QtQuick
import QtQuick.Controls 2.15

Column{
    id: column
    width: 200
    height: 100
    anchors.fill: parent
    spacing: 20
    property alias nameF : nameField.text
    property alias facturaF : facturaField.text
    property alias pagado: checkBox.checkState
    signal modificar(string nombre, string factura)

    TextField {
        id: nameField
        anchors.horizontalCenter: parent.horizontalCenter
        placeholderText: qsTr("Nombre")
    }

    TextField {
        id: facturaField
        anchors.horizontalCenter: parent.horizontalCenter
        placeholderText: qsTr("Factura")
    }

    Button {
        id: button
        text: qsTr("Crear")
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: modificar(nameField.text, facturaField.text)
    }


}



