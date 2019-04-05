import React from 'react';
import {
    View,
    Text,
    StyleSheet,
} from 'react-native';

function Empty(props) {
    return (
        <View styles = {styles.container}>
            <Text styles = {styles.text}>{props.text}</Text>
        </View>
    )
}

const styles =  StyleSheet.create({
    container: {
        padding: 10,
    },
    text: {
        fontSize: 16,
    }
})

export default Empty;
