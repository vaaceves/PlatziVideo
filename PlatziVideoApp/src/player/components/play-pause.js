import React from 'react';
import {
    TouchableOpacity,
    StyleSheet,
} from 'react-native';
import Icon from 'react-native-vector-icons/MaterialIcons';


function PlayPause (props) {
    return (
        <TouchableOpacity
            style = {styles.container}
            onPress = {props.onPress}
            hitSlop = {{
                left: 5,
                right: 5,
                top: 5,
                bottom: 5,
            }}
        >
            {
                props.paused ?
                    <Icon
                        name = 'play-arrow'
                        size = {20}
                        color = '#98ca3f'
                    />
                    :
                    <Icon
                        name = 'pause'
                        size = {20}
                        color = '#98ca3f'
                    />
            }
        </TouchableOpacity>
    )
}

const styles = StyleSheet.create({
    container: {
        justifyContent: 'center',
        paddingHorizontal: 10,
        height: 25,
        marginVertical: 5,
    },
})

export default PlayPause




// import React from 'react';
// import {
//     TouchableHighlight,
//     TouchableOpacity,
//     TouchableWithoutFeedback,
//     Text,
//     StyleSheet
// } from 'react-native';
//
// function PlayPause(props) {
//     return (
//         <TouchableHighlight
//             onPress = {props.onPress}
//             style = {styles.container}
//             underlayColor = "red"
//             hitSlop = {{
//                 left: 5,
//                 top: 5,
//                 bottom: 5,
//                 right: 5,
//             }}
//         >
//             {
//                 props.paused ?
//                     <Text
//                         style = {styles.button}
//                     >
//                         PLAY
//                     </Text>
//                   :
//                     <Text
//                         style = {styles.button}
//                     >
//                         PAUSE
//                     </Text>
//             }
//         </TouchableHighlight>
//     )
// }
//
// const styles = StyleSheet.create({
//     buttom: {
//         color: 'white',
//         fontSize: 10,
//         fontWeight: 'bold',
//     },
//     container: {
//         justifyContent: 'center',
//         paddingHorizontal: 10,
//         height: 25,
//         marginVertical: 10,
//         borderWidth: 1,
//         borderRadius: 10,
//         borderColor: 'white',
//         backgroundColor: 'gray',
//
//     },
// })
//
// export default PlayPause;
