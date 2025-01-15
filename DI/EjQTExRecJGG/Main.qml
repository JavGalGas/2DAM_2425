import QtQuick
import QtQuick.Layouts 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent

        StackLayout{
            id: stack
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            anchors.top: parent.top
            Layout.fillWidth: true
            height: parent.height - menuBg.height
            currentIndex: 0

            View{
                index: 0
                anchors.fill: parent
                ListModel{
                    id: viewModel
                    ListElement{
                        name: "Luz"
                        factura: 140.50
                    }
                    ListElement{
                        name: "Agua"
                        factura: 80.67
                    }
                    ListElement{
                        name: "No sé"
                        factura: 597.99
                    }
                }
                GridView{
                    anchors.fill: parent
                    anchors.centerIn: parent
                    cellHeight: 150
                    cellWidth: 200
                    id: gridView
                    model: viewModel
                    delegate: Factura{
                        id: fact
                        name: name
                        factura: factura
                        onModificar: (name, factura)=>{
                            stack.currentIndex = 1
                            form.nameF = name
                            form.facturaF = factura
                        }
                    }
                }
            }

            View{
                index: 1
                anchors.fill: parent
                Formulario{
                    id: form
                    onModificar: (nameF, facturaF) => {
                             viewModel.set(viewModel.get(gridView.currentIndex),
                                           {
                                               "name": nameF,
                                               "factura": facturaF
                                           })}
                }
            }
        }

        Rectangle{
            id: menuBg
            Layout.fillHeight: parent
            color: "#610000"
            width: 75
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            anchors.left: parent.left

            ColumnLayout{
                id: menu
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                anchors.fill: parent

                Button {
                    id: button
                    text: qsTr("Mostrar")
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    onClicked: stack.currentIndex = 0
                }
                Button {
                    id: button1
                    text: qsTr("Crear")
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    onClicked: stack.currentIndex = 1
                }
            }
        }
    }

}
