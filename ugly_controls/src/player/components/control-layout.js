import React from 'react';
import {
    View,
    StyleSheet
} from 'react-native';


function ControlsLayout (props) {
    return (
        <View
            style = {styles.container}
        >
            {props.children}
        </View>
    )
}

const styles = StyleSheet.create({
    container: {
        backgroundColor: 'rgba(255, 255, 255, 0.3)',
        position: 'absolute',
        left: 0,
        right: 0,
        top: 0,
        bottom: 0,
        flexDirection: 'row',
        paddingHorizontal: 10,
        alignItems: 'center',
        justifyContent: 'space-between',
    },
})

export default ControlsLayout
