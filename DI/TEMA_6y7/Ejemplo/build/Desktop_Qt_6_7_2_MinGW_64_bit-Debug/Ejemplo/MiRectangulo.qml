import QtQuick
import QtQuick.Controls
Rectangle {
    id: rectangle
    x: 0
    y: 0
    width: 100
    height: 100
    color: "#ff0000"
    border.width: 2
    states: [
        State {
            name: "activado"
            when: rectangle.activado == true

            PropertyChanges {
                target: rectangle
                color: "#322996"
            }
        }
    ]
    transitions: [
        Transition {
            id: transition
            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: rectangle
                        property: "color"
                        duration: 1000
                    }
                }
            }
            to: "*"
            from: "*"
        }
    ]
    property bool activado: false
}

/*##^##
Designer {
    D{i:0}D{i:3;transitionDuration:2000}
}
##^##*/
