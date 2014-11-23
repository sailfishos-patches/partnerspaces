import QtQuick 2.0
import Sailfish.Silica 1.0
import com.jolla.settings 1.0

ApplicationWindow {
    cover: undefined
    initialPage: Component {
        Page {
            SilicaFlickable {
                anchors.fill: parent
                contentHeight: favorites.height
                
                FavoritesZone {
                    id: favorites
                }
            }
        }
    }
}
