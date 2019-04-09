/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 * @lint-ignore-every XPLATJSCOPYRIGHT1
 */

import React, { Component } from 'react';
import {
    Text,
    View,
    ActivityIndicator,
} from 'react-native';

import Home from './src/screens/containers/home';
import Header from './src/sections/components/header';
import SuggestionList from './src/videos/containers/suggestion-list';
import CategoryList from './src/videos/containers/category-list';
import API from './utils/api';
import Player from './src/player/containers/player';
import LoaderLayout from './src/sections/components/loader-layout';

type Props = {};
export default class App extends Component<Props> {
    state = {
        suggestionList: [],
        categoryList: [],
        loading: true,
    };
    async componentDidMount() {
        const movies = await API.getSuggestion(4);
        const categories = await API.getMovies();
        console.log(movies);
        console.log(categories);
        this.setState({
            suggestionList: movies,
            categoryList: categories,
            loading: false,
        })
    }
    render() {
        const { suggestionList, loading, categoryList } = this.state
        return (
            <Home>
                <Header>
                    {/* SearchBar */}
                </Header>
                <Player />
                {
                    loading ?
                        <LoaderLayout>
                            <ActivityIndicator color='#0000ff'/>
                        </LoaderLayout>
                        :
                        <CategoryList list={categoryList} />
                }
                {
                    !loading &&
                    <SuggestionList
                        list={suggestionList}
                    />
                }
            </Home>
        );
    }
}

// import React, {Component} from 'react';
// import {
//     Platform,
//     StyleSheet,
//     Text,
//     View,
//     Image,
// } from 'react-native';
//
// import Home from './src/screens/containers/home';
// import Header from './src/sections/components/header';
// import SuggestionList from './src/videos/containers/suggestion-list';
// import CategoryList from './src/videos/containers/category-list';
// import Player from './src/player/containers/player';
// import LoaderLayout from './src/sections/components/loader-layout';
//
// import API from './utils/api';
//
// type Props = {};
// export default class App extends Component<Props> {
//     state = {
//         suggestionList: [],
//         categoryList: [],
//     }
//
//     async componentDidMount() {
//         const movies = await API.getSuggestion(10);
//         const categories = await API.getMovies();
//         console.log(movies);
//         console.log(categories);
//        this.setState({
//            suggestionList: movies,
//            categoryList: categories,
//        })
//     }
//
//     render() {
//     return (
//         <Home>
//             <Header/>
//             <Player/>
//             <Text>Buscador</Text>
//             <Text>Categorias</Text>
//             <CategoryList
//                 list = {this.state.categoryList}
//             />
//             <SuggestionList
//                 list = {this.state.suggestionList}
//             />
//         </Home>
//     );
//   }
// }

