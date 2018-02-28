/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  Platform, Text , View, ScrollView, NativeModules } from 'react-native';
  
import normalizeWeahterData from './normalizer/weatherNormalizer';
import CardView from './card-component/card-component';
import appStyles from './styles/AppStyles';
const { CallBackManager } = NativeModules;

export default class App extends Component {


  render() {
    let normalizedWeahterData = normalizeWeahterData(this.props).weatherData
    this.mapWeatherData(normalizedWeahterData)
    CallBackManager.receivedEvent()

    return (
      <ScrollView contentContainerStyle={appStyles.contentStyle} style={appStyles.container}>
        {this.mapWeatherData(normalizedWeahterData)}
      </ScrollView>
    );
  }
 mapWeatherData = (weatherData) => {

   return weatherData.map(weatherItem=>{
   
       return (
        <CardView key={weatherItem.id} data={weatherItem}></CardView>
       )
   
     })
       
   }
}


