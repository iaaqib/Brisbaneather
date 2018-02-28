import { StyleSheet, Dimensions } from 'react-native';
let winSize = Dimensions.get('window');


const cardViewStyles = StyleSheet.create({
    container: {
     
      backgroundColor: 'rgba(52, 52, 52, 0)',
    },
    cardView: {
      width: winSize.width - 20,
      height: 128,
      backgroundColor: '#FFF',
      marginLeft: 20,
      marginRight: 20,
      shadowOffset: {width: 3, height: 3},
      borderRadius : 3,
      shadowColor : '#000000',
      shadowOpacity : 0.3,
      shadowRadius : 3,
      marginBottom: 5,
      marginTop:5
    },
    imageIcon: {
      width: 64,
      height: 64,
      alignSelf: 'flex-end',
      marginTop: 32,
      marginRight: 10
  
    },
    textStyle:{
  
      fontSize: 18,
      marginLeft: 10,
      position: 'absolute',
      marginTop: 10
    }
  });
  export default cardViewStyles;