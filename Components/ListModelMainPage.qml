import QtQuick 2.12
import QtQuick.Controls 2.12

// TODO : automated
ListModel {
    ListElement {
        name: "Bottom Navigation"
        subModels: "Basic,Shifting,Light,Dark,Icon,Primary,Map Blue,Light Simple,Article,shop,Small,Main"
        ic_name: "Ic_bottomNavigation"
        isNew: true
    }

    ListElement {
        name: "Bottom Sheet"
        subModels: "Basic,List,Map,Floating,Full,Filter,Menu"
        ic_name: "Ic_bottomSheet"
        isNew: false
    }
    ListElement {
        name: "Buttons"
        subModels: "Basic,Button In Utilities,Fab Middle,Fab More,Fab More Text,Toggle Basic,Fab Extend"
        ic_name: "Ic_buttons"
        isNew: true
    }
}
