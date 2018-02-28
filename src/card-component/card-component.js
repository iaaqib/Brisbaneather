import React, { Component } from 'react';
import { Platform, Text, View, Image } from 'react-native';
import cardViewStyles from '../styles/CardViewStyles';

const CardView = (props) =>{

    return (

        <View style={cardViewStyles.cardView} >
        <Image style={cardViewStyles.imageIcon} source={{url: props.data.weatherImageSrc}}>
  
        </Image>
    <Text style={cardViewStyles.textStyle}>
        State: {props.data.weatherState}{'\n'}
        Temperature: {props.data.temperature}{'\n'}
        Wind Direction: {props.data.windDirection}{'\n'}
        Humidity: {props.data.humidity}{'\n'}
        Date: {props.data.date}{'\n'}
        </Text>
        </View>
      )
}

  export default CardView;