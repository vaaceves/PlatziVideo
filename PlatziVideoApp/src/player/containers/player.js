import React, {
    Component,
} from 'react';
import {
    StyleSheet,
    ActivityIndicator,
    Text,
    ProgressBarAndroid,
} from'react-native';
import Video from 'react-native-video';
import Layout from '../components/video-layout';
import ControlLayout from '../components/control-layout';
import PlayPause from '../components/play-pause';
import ProgressBar from '../components/progress-bar';
import TimeLeft from '../components/time-left';
import FullScreen from '../components/fullscreen';

class Player extends Component {
    state = {
        loading: true,  // indicador de carga
        paused: false,  // indicador de pausa
        progress: 0,  // progreso del video entre 0 y 1
        currentTime: '0:00',  // tiempo actual en segundos
        changeActive: false,  // activo mientras se cambia la posicion del video
        fullscreen: false,
    }
    onLoad = () => {
        this.setState({
            loading: false,
        })
    }
    PlayPause = () => {
        this.setState({
            paused: !this.state.paused,
        })
    }
    setTime = payload => {
        let duration = payload.currentTime / 60;
        let mins = Math.floor(duration);
        let seconds = duration % 1;
        seconds = (seconds * 60) / 1000;
        let currentTime = (mins + seconds * 10).toFixed(2);
        this.setState({
            currentTime: currentTime,
            progress: (payload.currentTime / payload.seekableDuration),
            duration: payload.seekableDuration,
        })
    }
    changeSliderStarted = (value) => {
        this.setState({
            progress: value,
            changeActive: true,
        })
    }
    changeSliderFinished = (value) => {
        this.setState({
            changeActive: false,
        })
        this.player.seek(this.state.duration * value)
    }
    setFullScreenPromise = () => {
        return new Promise((resolve, reject) => {
            resolve(this.setState({
                fullscreen: !this.state.fullscreen
            }))
        }).catch(error => console.error(error))
    }
    FullScreen = event => {
        this.setFullScreenPromise()
            .then(() => {
                if(this.state.fullscreen) {
                    this.player.presentFullscreenPlayer();
                }
                else {
                    this.player.dismissFullscreenPlayer();
                }
            });
    }
    //
    render() {
        return (
            <Layout
                loading = {this.state.loading}
                video = {
                    <Video
                        style = {styles.video}
                        ref = {(ref) => {
                            this.player = ref
                        }}
                        source = {{
                            uri: 'https://download.blender.org/peach/bigbuckbunny_movies/BigBuckBunny_320x180.mp4',
                        }}
                        resizeMode = 'contain'
                        onLoad = {this.onLoad}
                        paused = {
                            this.state.changeActive ?
                                true :
                                this.state.paused
                        }
                        onProgress = {this.setTime}
                    />
                }
                loader = {
                    <ActivityIndicator
                        color = 'white'
                    />
                }
                controls = {
                    <ControlLayout>
                        <PlayPause
                            onPress = {this.PlayPause}
                            paused = {this.state.paused}
                        />
                        <ProgressBar
                            progress = {this.state.progress}
                            onChangeStarted = {this.changeSliderStarted}
                            onChangeFinished = {this.changeSliderFinished}
                        />
                        <TimeLeft
                            currentTime = {this.state.currentTime}
                            duration = {this.state.duration}
                        />
                        <FullScreen
                            onPress = {this.FullScreen}
                        />
                    </ControlLayout>
                }
            />
        )
    }
}

const styles = StyleSheet.create({
    video: {
        position: 'absolute',
        left: 0,
        right: 0,
        top: 0,
        bottom: 0,
    },
})

export default Player




// import React, { Component } from 'react';
// import {
//     StyleSheet,
//     ActivityIndicator,
//     Text,
// } from 'react-native';
// import Video from 'react-native-video';
//
// import VideoLayout from '../components/video-layout';
// import ControlLayout from '../components/control-layout';
// import PlayPause from '../components/play-pause';
//
// class Player extends Component {
//     state = {
//         loading: true,
//         paused: false,
//     }
//     onBuffer = ({ isBuffering }) => {
//         this.setState({
//             loading: isBuffering,
//         })
//     }
//     onLoad = () => {
//         this.setState({
//             loading: false
//         })
//     }
//     playPause = () => {
//         this.setState({
//             paused: !this.state.paused
//         })
//     }
//
//     render() {
//         return(
//             <VideoLayout
//                 loading = {this.state.loading}
//                 video = {
//                     <Video
//                         source = {{
//                             uri: 'https://download.blender.org/peach/bigbuckbunny_movies/BigBuckBunny_320x180.mp4',
//                         }}
//                         style = {styles.video}
//                         resizeMode = "contain"
//                         onBuffer = {this.onBuffer}
//                         onLoad = {this.onLoad}
//                         paused = {this.state.paused}
//                     />
//                 }
//                 loader = {
//                     <ActivityIndicator
//                         color = 'red'
//                     />
//                 }
//                 controls = {
//                     <ControlLayout>
//                         <PlayPause
//                             onPress = {this.playPause}
//                             paused = {this.state.paused}
//                         />
//                         <Text>Progress bar | </Text>
//                         <Text>Time Left | </Text>
//                         <Text>Fullscreen | </Text>
//                     </ControlLayout>
//                 }
//             />
//         )
//     }
// }
//
// const styles = StyleSheet.create({
//     video: {
//         position: 'absolute',
//         left: 0,
//         right: 0,
//         bottom: 0,
//         top: 0,
//     }
// })
//
// export default Player
