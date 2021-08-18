import QtQuick 2.12
import QtQuick.Controls 2.12

// TODO : automated read from file!
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
        isNew: true
    }
    ListElement {
        name: "Buttons"
        subModels: "Basic,Button In Utilities,Fab Middle,Fab More,Fab More Text,Toggle Basic,Fab Extend"
        ic_name: "Ic_TouchApp"
        isNew: true
    }
    ListElement {
        name: "Cards"
        subModels: "Basic,Timeline,Overlap,Wizard,Wizard Light,Wizard Overlap,Chackable"
        ic_name: "Ic_Note"
        isNew: true
    }
}
