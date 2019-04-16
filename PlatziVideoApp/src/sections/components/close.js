import React from 'react';
import {
    Text,
    TouchableOpacity,
    StyleSheet
} from 'react-native';


function Close (props) {
    return (
        <TouchableOpacity
            style = {styles.container}
            onPress = {props.onPress}
        >
            <Text style = {styles.button}>X</Text>
        </TouchableOpacity>
    )
}

const styles = StyleSheet.create({
    container: {
        top: 0,
        backgroundColor: '#14b739',
        borderRadius: 12,
        width: 25,
        height: 25,
        overflow: 'hidden',
        alignItems: 'center',
        justifyContent: 'center',
    },
    button: {
        fontWeight: 'bold',
        color: 'white',
    },
})

export default Close
