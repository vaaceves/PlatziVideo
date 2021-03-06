import React, { Component } from 'react'
import {
    StyleSheet,
    TextInput
} from 'react-native';
import { connect } from 'react-redux';
import API from '../../../utils/api';


class Search extends Component {
    state = {
        text: '',
    }
    handleSubmit = async () => {
        const movies = await API.searchMovie(this.state.text);
        console.log(movies);
        this.props.dispatch({
            type: 'SET_SELECTED_MOVIE',
            payload: {
                movie: movies[0]
            }
        })
    }
    handleChangeText = (text) => {
        this.setState({
            text,
        })
    }
    render() {
        return (
            <TextInput
                style = {styles.input}
                placeholder = 'Busca tu Pelicula Favorita'
                autoCorrent = {false}
                autoCapitalize = 'none'
                underlineColorAndroid = 'transparent'
                onSubmitEditing = {this.handleSubmit}
                onChangeText = {this.handleChangeText}
            />
        )
    }
}

const styles = StyleSheet.create({
    input: {
        padding: 15,
        fontSize: 15,
        borderWidth: 1,
        borderColor: '#eaeaea',
    },
})

export default connect(null)(Search);
