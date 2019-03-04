/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 * @lint-ignore-every XPLATJSCOPYRIGHT1
 */

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

type Props = {};
export default class App extends Component<Props> {
  render() {
    return (
        <Home>
            <Header/>
            <Text>Buscador</Text>
            <Text>Categorias</Text>
            <SuggestionList/>
        </Home>
    );
  }
}

