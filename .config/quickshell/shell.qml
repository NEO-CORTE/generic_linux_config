import Quickshell
import Quickshell.Io
import QtQuick

PanelWindow {
  id: "bar"
  SystemClock {
    id: clock
    precision: SystemClock.Seconds
  }


  color: "#b95e82"

  anchors {
    bottom:true
    left: true
    right: true
  }

  implicitHeight: 30
  Item{
    property color parentColor: bar.color
    implicitWidth: 700
    implicitHeight: 30
    anchors.centerIn: parent
    Text{
      id: "barTextLeft"
      anchors.verticalCenter: parent.vertialVCenter
      anchors.left: parent.left
      text: qsTr("R:%1,G:%2,B:%3").arg(bar.color.r*255).arg(bar.color.g*255).arg(bar.color.b*255)
      font.pointSize: 15
    }
    Text{
      anchors.verticalCenter: parent.vertialVCenter
      anchors.right: barTextLeft.right
      anchors.rightMargin: -300
      text: Qt.formatDateTime(clock.date, "hh:mm:ss - yy-MM-dd")
      font.pointSize: 15
    }
 }
}


