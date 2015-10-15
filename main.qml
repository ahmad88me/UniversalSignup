import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    title: qsTr("Hello World")
    width: 400
    height: 600
    visible: true

    Image{
        source: "images/bluebackground.png"
        anchors.fill: parent
    }


        TextField{
            id: username
            width: parent.width *0.7
            height: 30
            placeholderText: "Username"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }
        TextField{
            id: password
            width: parent.width *0.7
            height: username.height
            anchors.top: username.bottom
            placeholderText: "Password"
            anchors.horizontalCenter: parent.horizontalCenter
            echoMode: TextInput.Password
        }
        TextField{
            id: confirm_password
            width: parent.width *0.7
            height: username.height
            anchors.top: password.bottom
            placeholderText: "Confirm Password"
            anchors.horizontalCenter: parent.horizontalCenter
            echoMode: TextInput.Password
        }
        Button{
            text: "Add"
            anchors.top: confirm_password.bottom
            width: parent.width *0.7
            height: username.height
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked:{

                if(password.text==confirm_password.text){
                    msg.text = "password match"
                    msg.color="#66FF66"
                }
                else{
                    msg.text = "password mismatch"
                    msg.color="#FF4444"
                }
                username.text=""
                password.text=""
                confirm_password.text=""
            }
        }
        Text{
            id: msg
            text:""
            font.bold: true
            anchors.bottom: username.top
            anchors.bottomMargin: 4
            anchors.horizontalCenter: parent.horizontalCenter
        }

}
