import React, { Component } from 'react';
import {
    FlatList,
    Text,
} from 'react-native';

import Layout from '../components/suggestion-list-layout';
import Empty from '../components/empty.js';
import VerticalSeparator from "../../sections/components/vertical-separator";
import Suggestion from '../components/suggestion';
import { connect } from 'react-redux';


function mapStateToProps(state) {
    return {
        list: state.suggestionList
    }
}

class SuggestionList extends Component {
    keyExtractor = (item) => item.id.toString()
    renderEmpty = () => <Empty text = 'No hay sugerencias para mostrar :(' />
    itemSeparator = () => <VerticalSeparator />
    viewMovie = (item) => {
        this.props.dispatch ({
            type: 'SET_SELECTED_MOVIE',
            payload: {
                movie: item
            }
        })
    }
    renderItem = ({item}) => {
        return (
            <Suggestion
                {...item}
                onPress = {() => {this.viewMovie(item)}}
            />
            )
    }

    render() {
        return (
            <Layout1
                title = 'Recomendado para ti'
            >
                <FlatList
                    keyExtractor = {this.keyExtractor}
                    data = {this.props.list}
                    ListEmptyComponent = {this.renderEmpty}
                    ItemSeparatorComponent = {this.itemSeparator}
                    renderItem = {this.renderItem}
                />
            </Layout1>
        )
    }
}

export default connect(mapStateToProps)(SuggestionList);
