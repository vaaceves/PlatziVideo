import React from 'react';
import {
    TouchableHighlight,
    TouchableOpacity,
    TouchableWithoutFeedback,
    Text,
    StyleSheet
} from 'react-native';

function PlayPause(props) {
    return (
        <TouchableHighlight
            onPress = {props.onPress}
            style = {styles.container}
            underlayColor = "red"
            hitSlop = {{
                left: 5,
                top: 5,
                bottom: 5,
                right: 5,
            }}
        >
            {
                props.paused ?
                    <Text
                        style = {styles.button}
                    >
                        PLAY
                    </Text>
                  :
                    <Text
                        style = {styles.button}
                    >
                        PAUSE
                    </Text>
            }
        </TouchableHighlight>
    )
}

const styles = StyleSheet.create({
    buttom: {
        color: 'white',
        fontSize: 10,
        fontWeight: 'bold',
    },
    container: {
        justifyContent: 'center',
        paddingHorizontal: 10,
        height: 25,
        marginVertical: 10,
        borderWidth: 1,
        borderRadius: 10,
        borderColor: 'white',
        backgroundColor: 'gray',

    },
})

export default PlayPause;
