import React from 'react';
import {
    View,
    StyleSheet,
    Slider,
} from 'react-native';


function ProgressBar (props) {
    return (
        <View
            style = {styles.progress}
        >
            <Slider
                style = {styles.slider}
                maximumValue = {props.duration}
                minimumValue = {0}
                onValueChange = {props.onChangeStarted}
                onSlidingComplete = {props.onChangeFinished}
                value = {props.progress}
                // step = {duration / 10000}
                maximumTrackTintColor = 'rgba(255, 255, 255, 0.4)'
                minimumTrackTintColor = '#98ca3f'
                thumbTintColor = 'white'
            />
        </View>
    )
}

const styles = StyleSheet.create({
    progress: {
        width: '65%',
    },
})

export default ProgressBar
