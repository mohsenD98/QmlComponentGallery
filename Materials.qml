import QtQuick 2.12

Item {

    property string fontFamily: "Sans Serif"

    property color colorPrimary: "#1976D2"
    property color colorPrimaryDark: "#1565C0"
    property color colorPrimaryLight: "#1E88E5"
    property color colorAccent: "#FF4081"
    property color colorAccentDark: "#F50057"
    property color colorAccentLight: "#FF80AB"

    property color overlay_dark_10: "#1A000000"
    property color overlay_dark_20: "#33000000"
    property color overlay_dark_30: "#4D000000"
    property color overlay_dark_40: "#66000000"
    property color overlay_dark_50: "#80000000"
    property color overlay_dark_60: "#99000000"
    property color overlay_dark_70: "#B3000000"
    property color overlay_dark_80: "#CC000000"
    property color overlay_dark_90: "#E6000000"

    property color overlay_light_10: "#1AFFFFFF"
    property color overlay_light_20: "#33FFFFFF"
    property color overlay_light_30: "#4DFFFFFF"
    property color overlay_light_40: "#66FFFFFF"
    property color overlay_light_50: "#8FFFFFF0"
    property color overlay_light_60: "#99FFFFFF"
    property color overlay_light_70: "#B3FFFFFF"
    property color overlay_light_80: "#CCFFFFFF"
    property color overlay_light_90: "#E6FFFFFF"

    property color grey_3: "#f7f7f7"
    property color grey_5: "#f2f2f2"
    property color grey_10: "#e6e6e6"
    property color grey_20: "#cccccc"
    property color grey_40: "#999999"
    property color grey_60: "#666666"
    property color grey_80: "#37474F"
    property color grey_90: "#263238"
    property color grey_95: "#1a1a1a"
    property color grey_100_: "#0d0d0d"

    property color red_50: "#FFEBEE"
    property color red_100: "#FFCDD2"
    property color red_200: "#EF9A9A"
    property color red_300: "#E57373"
    property color red_400: "#EF5350"
    property color red_500: "#F44336"
    property color red_600: "#E53935"
    property color red_700: "#D32F2F"
    property color red_800: "#C62828"
    property color red_900: "#B71C1C"
    property color red_A100: "#FF8A80"
    property color red_A200: "#FF5252"
    property color red_A400: "#FF1744"
    property color red_A700: "#D50000"

    property color deep_purple_50: "#EDE7F6"
    property color deep_purple_100: "#D1C4E9"
    property color deep_purple_200: "#B39DDB"
    property color deep_purple_300: "#9575CD"
    property color deep_purple_400: "#7E57C2"
    property color deep_purple_500: "#673AB7"
    property color deep_purple_600: "#5E35B1"
    property color deep_purple_700: "#512DA8"
    property color deep_purple_800: "#4527A0"
    property color deep_purple_900: "#311B92"
    property color deep_purple_A100: "#B388FF"
    property color deep_purple_A200: "#7C4DFF"
    property color deep_purple_A400: "#651FFF"
    property color deep_purple_A700: "#6200EA"

    property color light_blue_50: "#E1F5FE"
    property color light_blue_100: "#B3E5FC"
    property color light_blue_200: "#81D4FA"
    property color light_blue_300: "#4FC3F7"
    property color light_blue_400: "#29B6F6"
    property color light_blue_500: "#03A9F4"
    property color light_blue_600: "#039BE5"
    property color light_blue_700: "#0288D1"
    property color light_blue_800: "#0277BD"
    property color light_blue_900: "#01579B"
    property color light_blue_A100: "#80D8FF"
    property color light_blue_A200: "#40C4FF"
    property color light_blue_A400: "#00B0FF"
    property color light_blue_A700: "#0091EA"

    property color green_50: "#E8F5E9"
    property color green_100: "#C8E6C9"
    property color green_200: "#A5D6A7"
    property color green_300: "#81C784"
    property color green_400: "#66BB6A"
    property color green_500: "#4CAF50"
    property color green_600: "#43A047"
    property color green_700: "#388E3C"
    property color green_800: "#2E7D32"
    property color green_900: "#1B5E20"
    property color green_A100: "#B9F6CA"
    property color green_A200: "#69F0AE"
    property color green_A400: "#00E676"
    property color green_A700: "#00C853"

    property color yellow_50: "#FFFDE7"
    property color yellow_100: "#FFF9C4"
    property color yellow_200: "#FFF59D"
    property color yellow_300: "#FFF176"
    property color yellow_400: "#FFEE58"
    property color yellow_500: "#FFEB3B"
    property color yellow_600: "#FDD835"
    property color yellow_700: "#FBC02D"
    property color yellow_800: "#F9A825"
    property color yellow_900: "#F57F17"
    property color yellow_A100: "#FFFF8D"
    property color yellow_A200: "#FFFF00"
    property color yellow_A400: "#FFEA00"
    property color yellow_A700: "#FFD600"

    property color deep_orange_50: "#FBE9E7"
    property color deep_orange_100: "#FFCCBC"
    property color deep_orange_200: "#FFAB91"
    property color deep_orange_300: "#FF8A65"
    property color deep_orange_400: "#FF7043"
    property color deep_orange_500: "#FF5722"
    property color deep_orange_600: "#F4511E"
    property color deep_orange_700: "#E64A19"
    property color deep_orange_800: "#D84315"
    property color deep_orange_900: "#BF360C"
    property color deep_orange_A100: "#FF9E80"
    property color deep_orange_A200: "#FF6E40"
    property color deep_orange_A400: "#FF3D00"
    property color deep_orange_A700: "#DD2C00"

    property color blue_grey_50: "#ECEFF1"
    property color blue_grey_100: "#CFD8DC"
    property color blue_grey_200: "#B0BEC5"
    property color blue_grey_300: "#90A4AE"
    property color blue_grey_400: "#78909C"
    property color blue_grey_500: "#607D8B"
    property color blue_grey_600: "#546E7A"
    property color blue_grey_700: "#455A64"
    property color blue_grey_800: "#37474F"
    property color blue_grey_900: "#263238"
    property color blue_grey_800_overlay: "#E637474F"

    property color pink_50: "#FCE4EC"
    property color pink_100: "#F8BBD0"
    property color pink_200: "#F48FB1"
    property color pink_300: "#F06292"
    property color pink_400: "#EC407A"
    property color pink_500: "#E91E63"
    property color pink_600: "#D81B60"
    property color pink_700: "#C2185B"
    property color pink_800: "#AD1457"
    property color pink_900: "#880E4F"
    property color pink_A100: "#FF80AB"
    property color pink_A200: "#FF4081"
    property color pink_A400: "#F50057"
    property color pink_A700: "#C51162"

    property color indigo_50: "#E8EAF6"
    property color indigo_100: "#C5CAE9"
    property color indigo_200: "#9FA8DA"
    property color indigo_300: "#7986CB"
    property color indigo_400: "#5C6BC0"
    property color indigo_500: "#3F51B5"
    property color indigo_600: "#3949AB"
    property color indigo_700: "#303F9F"
    property color indigo_800: "#283593"
    property color indigo_900: "#1A237E"
    property color indigo_A100: "#8C9EFF"
    property color indigo_A200: "#536DFE"
    property color indigo_A400: "#3D5AFE"
    property color indigo_A700: "#304FFE"
    property color indigo_800_overlay: "#E6283593"

    property color cyan_50: "#E0F7FA"
    property color cyan_100: "#B2EBF2"
    property color cyan_200: "#80DEEA"
    property color cyan_300: "#4DD0E1"
    property color cyan_400: "#26C6DA"
    property color cyan_500: "#00BCD4"
    property color cyan_600: "#00ACC1"
    property color cyan_700: "#0097A7"
    property color cyan_800: "#00838F"
    property color cyan_900: "#006064"
    property color cyan_A100: "#84FFFF"
    property color cyan_A200: "#18FFFF"
    property color cyan_A400: "#00E5FF"
    property color cyan_A700: "#00B8D4"
    property color cyan_800_overlay: "#E600838F"

    property color light_green_50: "#F1F8E9"
    property color light_green_100: "#DCEDC8"
    property color light_green_200: "#C5E1A5"
    property color light_green_300: "#AED581"
    property color light_green_400: "#9CCC65"
    property color light_green_500: "#8BC34A"
    property color light_green_600: "#7CB342"
    property color light_green_700: "#689F38"
    property color light_green_800: "#558B2F"
    property color light_green_900: "#33691E"
    property color light_green_A100: "#CCFF90"
    property color light_green_A200: "#B2FF59"
    property color light_green_A400: "#76FF03"
    property color light_green_A700: "#64DD17"

    property color amber_50: "#FFF8E1"
    property color amber_100: "#FFECB3"
    property color amber_200: "#FFE082"
    property color amber_300: "#FFD54F"
    property color amber_400: "#FFCA28"
    property color amber_500: "#FFC107"
    property color amber_600: "#FFB300"
    property color amber_700: "#FFA000"
    property color amber_800: "#FF8F00"
    property color amber_900: "#FF6F00"
    property color amber_A100: "#FFE57F"
    property color amber_A200: "#FFD740"
    property color amber_A400: "#FFC400"
    property color amber_A700: "#FFAB00"

    property color brown_50: "#EFEBE9"
    property color brown_100: "#D7CCC8"
    property color brown_200: "#BCAAA4"
    property color brown_300: "#A1887F"
    property color brown_400: "#8D6E63"
    property color brown_500: "#795548"
    property color brown_600: "#6D4C41"
    property color brown_700: "#5D4037"
    property color brown_800: "#4E342E"
    property color brown_900: "#3E2723"

    property color purple_50: "#F3E5F5"
    property color purple_100: "#E1BEE7"
    property color purple_200: "#CE93D8"
    property color purple_300: "#BA68C8"
    property color purple_400: "#AB47BC"
    property color purple_500: "#9C27B0"
    property color purple_600: "#8E24AA"
    property color purple_700: "#7B1FA2"
    property color purple_800: "#6A1B9A"
    property color purple_900: "#4A148C"
    property color purple_A100: "#EA80FC"
    property color purple_A200: "#E040FB"
    property color purple_A400: "#D500F9"
    property color purple_A700: "#AA00FF"

    property color blue_50: "#E3F2FD"
    property color blue_100: "#BBDEFB"
    property color blue_200: "#90CAF9"
    property color blue_300: "#64B5F6"
    property color blue_400: "#42A5F5"
    property color blue_500: "#2196F3"
    property color blue_600: "#1E88E5"
    property color blue_700: "#1976D2"
    property color blue_800: "#1565C0"
    property color blue_900: "#0D47A1"
    property color blue_A100: "#82B1FF"
    property color blue_A200: "#448AFF"
    property color blue_A400: "#2979FF"
    property color blue_A700: "#2962FF"

    property color teal_50: "#E0F2F1"
    property color teal_100: "#B2DFDB"
    property color teal_200: "#80CBC4"
    property color teal_300: "#4DB6AC"
    property color teal_400: "#26A69A"
    property color teal_500: "#009688"
    property color teal_600: "#00897B"
    property color teal_700: "#00796B"
    property color teal_800: "#00695C"
    property color teal_900: "#004D40"
    property color teal_A100: "#A7FFEB"
    property color teal_A200: "#64FFDA"
    property color teal_A400: "#1DE9B6"
    property color teal_A700: "#00BFA5"

    property color lime_50: "#F9FBE7"
    property color lime_100: "#F0F4C3"
    property color lime_200: "#E6EE9C"
    property color lime_300: "#DCE775"
    property color lime_400: "#D4E157"
    property color lime_500: "#CDDC39"
    property color lime_600: "#C0CA33"
    property color lime_700: "#AFB42B"
    property color lime_800: "#9E9D24"
    property color lime_900: "#827717"
    property color lime_A100: "#F4FF81"
    property color lime_A200: "#EEFF41"
    property color lime_A400: "#C6FF00"
    property color lime_A700: "#AEEA00"

    property color orange_50: "#FFF3E0"
    property color orange_100: "#FFE0B2"
    property color orange_200: "#FFCC80"
    property color orange_300: "#FFB74D"
    property color orange_400: "#FFA726"
    property color orange_500: "#FF9800"
    property color orange_600: "#FB8C00"
    property color orange_700: "#F57C00"
    property color orange_800: "#EF6C00"
    property color orange_900: "#E65100"
    property color orange_A100: "#FFD180"
    property color orange_A200: "#FFAB40"
    property color orange_A400: "#FF9100"
    property color orange_A700: "#FF6D00"

    property color grey_50: "#FAFAFA"
    property color grey_100: "#F5F5F5"
    property color grey_200: "#EEEEEE"
    property color grey_300: "#E0E0E0"
    property color grey_400: "#BDBDBD"
    property color grey_500: "#9E9E9E"
    property color grey_600: "#757575"
    property color grey_700: "#616161"
    property color grey_800: "#424242"
    property color grey_900: "#212121"
    property color grey_1000: "#1a1a1a"
}
