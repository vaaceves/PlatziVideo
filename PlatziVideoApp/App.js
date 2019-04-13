import React, {Component} from 'react';
import { Provider } from 'react-redux';
import { PersistGate } from "redux-persist/integration/react";

import { store, persistor } from "./store";
import Loading from './src/videos/components/loading';
import AppLayout from './src/app';


type Props = {};
export default class App extends Component<Props> {
    render() {
    return (
        <Provider
            store = {store}
        >
            <PersistGate
                loading = {<Loading />}
                persistor = {persistor}
            >
                <AppLayout />
            </PersistGate>
        </Provider>
    );
  }
}

