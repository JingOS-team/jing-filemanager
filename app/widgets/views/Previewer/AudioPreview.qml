import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtMultimedia 5.8
import org.kde.maui 1.0 as Maui
Item
{
    property alias player: player

    MediaPlayer
    {
        id: player
        source: "file://"+currentUrl

        autoLoad: true
        autoPlay: false
    }

    ColumnLayout
    {
        anchors.fill: parent

        Item
        {

            Layout.fillWidth: true
            height: parent.width * 0.3
            Layout.margins: contentMargins

            Maui.ToolButton
            {
                anchors.centerIn: parent
                isMask: false
                flat: true
                size: iconSizes.huge
                iconName: iteminfo.icon
                onClicked: player.playbackState === MediaPlayer.PlayingState ? player.pause() : player.play()
            }
        }

        Item
        {
            Layout.fillWidth: true
            height: rowHeight
            width: parent.width* 0.8

            Layout.margins: contentMargins

            Label
            {
                text: iteminfo.name
                width: parent.width
                height: parent.height
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                elide: Qt.ElideRight
                wrapMode: Text.Wrap
                font.pointSize: fontSizes.big
                font.weight: Font.Bold
                font.bold: true
            }
        }

        Item
        {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.margins: contentMargins

            Column
            {
                spacing: space.small
                width: parent.width
                height: parent.height

                Label
                {
                    text: qsTr("Title: ")+ player.metaData.title
                    elide: Qt.ElideRight
                    wrapMode: Text.Wrap
                    font.pointSize: fontSizes.default
                }

                Label
                {
                    text: qsTr("Artist: ")+ player.metaData.albumArtist

                    elide: Qt.ElideRight
                    wrapMode: Text.Wrap
                    font.pointSize: fontSizes.default
                }

                Label
                {
                    text: qsTr("Album: ")+ player.metaData.albumTitle

                    elide: Qt.ElideRight
                    wrapMode: Text.Wrap
                    font.pointSize: fontSizes.default
                }

                Label
                {
                    text: qsTr("Author: ")+ player.metaData.author

                    elide: Qt.ElideRight
                    wrapMode: Text.Wrap
                    font.pointSize: fontSizes.default
                }

                Label
                {
                    text: qsTr("Codec: ")+ player.metaData.audioCodec

                    elide: Qt.ElideRight
                    wrapMode: Text.Wrap
                    font.pointSize: fontSizes.default
                }

                Label
                {
                    text: qsTr("Copyright: ")+ player.metaData.copyright

                    elide: Qt.ElideRight
                    wrapMode: Text.Wrap
                    font.pointSize: fontSizes.default


                }

                Label
                {
                    text: qsTr("Duration: ")+ player.metaData.duration

                    elide: Qt.ElideRight
                    wrapMode: Text.Wrap
                    font.pointSize: fontSizes.default


                }

                Label
                {
                    text: qsTr("Number: ")+ player.metaData.trackNumber

                    elide: Qt.ElideRight
                    wrapMode: Text.Wrap
                    font.pointSize: fontSizes.default


                }

                Label
                {
                    text: qsTr("Year: ")+ player.metaData.year

                    elide: Qt.ElideRight
                    wrapMode: Text.Wrap
                    font.pointSize: fontSizes.default


                }

                Label
                {
                    text: qsTr("Mood: ")+ player.metaData.mood

                    elide: Qt.ElideRight
                    wrapMode: Text.Wrap
                    font.pointSize: fontSizes.default


                }

                Label
                {
                    text: qsTr("Rating: ")+ player.metaData.userRating

                    elide: Qt.ElideRight
                    wrapMode: Text.Wrap
                    font.pointSize: fontSizes.default


                }
            }
        }
    }
}
