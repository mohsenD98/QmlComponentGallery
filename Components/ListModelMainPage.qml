import QtQuick 2.12
import QtQuick.Controls 2.12

// TODO : automated
ListModel {
    ListElement {
        name: "Bottom Navigation"
        subModels: "Basic,Shifting,Light,Dark,Icon,Primary,Map Blue,Light Simple,Article,Shop,Main"
        ic_name: "Ic_ViewColumn"
        isNew: true
    }

    ListElement {
        name: "Bottom Sheet"
        subModels: "Basic,List,Map,Floating,Full,Filter,Menu"
        ic_name: "Ic_CallToActio"
        isNew: false
    }
    ListElement {
        name: "Buttons"
        subModels: "Basic,Button In Utilities,Fab Middle,Fab More,Fab More Text,Toggle Basic,Fab Extend"
        ic_name: "Ic_TouchApp"
        isNew: true
    }
}
