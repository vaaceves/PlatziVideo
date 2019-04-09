import React from 'react';
import {
    StyleSheet,
    ProgressBarAndroid
} from 'react-native';


function PogressBar (props) {
    return (
        <ProgressBarAndroid
            style = {styles.progressBarAndroid}
            color = '#25e030'
            indeterminate = {false}
            styleAttr = 'Horizontal'
            progress = {props.progress}
        />
    )
}

const styles = StyleSheet.create({
    progressBarAndroid: {
        width: '50%',
    },
})

export default PogressBar

