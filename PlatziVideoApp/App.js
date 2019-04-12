import React, {Component} from 'react';
import {
    Platform,
    StyleSheet,
    Text,
    View,
    Image,
} from 'react-native';

import Home from './src/screens/containers/home';
import Header from './src/sections/components/header';
import SuggestionList from './src/videos/containers/suggestion-list';
import CategoryList from './src/videos/containers/category-list';
import Player from './src/player/containers/player';

import API from './utils/api';
import { Provider } from 'react-redux';
import store from './store';


type Props = {};
export default class App extends Component<Props> {
    state = {

    }
    async componentDidMount() {
        const suggestionList = await API.getSuggestion(10);
        store.dispatch({
            type: 'SET_SUGGESTION_LIST',
            payload: {
                suggestionList
            }
        })
        const categoryList = await API.getMovies();
        store.dispatch({
            type: 'SET_CATEGORY_LIST',
            payload: {
                categoryList
            }
        })
    }

    render() {
    return (
        <Provider
            store = {store}
        >
            <Home>
                <Header />
                <Player />
                <CategoryList />
                <SuggestionList />
            </Home>
        </Provider>
    );
  }
}

