import QtQuick
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    MiRectangulo {
        id: miRectangulo
        x: 270
        y: 190
        activado: _switch.checked
    }

    Switch {
        id: _switch
        x: 121
        y: 226
        text: qsTr("Switch")
        checked: miRectangulo.activado
    }
}
