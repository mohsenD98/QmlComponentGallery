import QtQuick 2.12
import QtQuick.Controls 2.12

// TODO : automated read from file!
ListModel {
    ListElement {
        ic_name: "Ic_ViewColumn"
        name: "Bottom Navigation"
        isNew: true
        subModels: "Basic,Shifting,Light,Dark,Icon,Primary,Map Blue,Light Simple,Article,Shop,Main"
        isNewSubModel: "1,1,1,1,1,1,1,1,1,1,1"
    }

    ListElement {
        ic_name: "Ic_CallToActio"
        name: "Bottom Sheet"
        isNew: true
        subModels: "Basic,List,Map,Floating,Full,Filter,Menu"
        isNewSubModel: "1,1,1,1,1,1,1"
    }
    ListElement {
        ic_name: "Ic_TouchApp"
        name: "Buttons"
        isNew: true
        subModels: "Basic,Button In Utilities,Fab Middle,Fab More,Fab More Text,Toggle Basic,Fab Extend"
        isNewSubModel: "1,1,1,1,1,1,1"
    }
    ListElement {
        ic_name: "Ic_Note"
        name: "Cards"
        isNew: true
        subModels: "Basic,Timeline,Overlap,Wizard,Wizard Light,Wizard Overlap,Chackable"
        isNewSubModel: "1,1,1,1,1,1,1"
    }
}
