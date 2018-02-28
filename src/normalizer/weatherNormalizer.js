
import {precisionRound} from '../util/helperMethods';


const normalizeWeahterData = ((response) =>{
    return {weatherData: response["response"].map( weather =>({
        weatherState: weather.weather_state_name,
        humidity: weather.humidity,
        windDirection: weather.wind_direction_compass,
        id: weather.id,
        date: weather.applicable_date,
        temperature: `${precisionRound(weather.the_temp, 2)}℃` ,
        weatherImageSrc: `${response["base_url"]}static/img/weather/png/64/${weather.weather_state_abbr}.png`
    })
       
) }

})

export default normalizeWeahterData