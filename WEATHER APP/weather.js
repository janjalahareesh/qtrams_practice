const api_Key = "e4b608b1b2c959aab9b7858509646ba9"; 
const apiUrl = "https://api.openweathermap.org/data/2.5/weather?units=metric&q=";

const searchBox = document.querySelector(".search-bar");
const searchBtn = document.querySelector("button");
const weatherContainer = document.querySelector(".weather-container");


async function fetchWeather(city) {
    try {
        const response = await fetch(`${apiUrl}${city}&appid=${api_Key}`);
        if (!response.ok) {
            return null; 
            await response.json()
        }
        return;
    } catch (error) {
        console.error(`Error fetching weather data for ${city}:`, error);
        return null;
    }
}

async function checkWeather() {
    const cityInput = searchBox.value.trim();
    if (!cityInput) {
        alert("Please enter at least one city.");
        return;
    }

    const cities = cityInput.split(",").map(city => city.trim()); 

    weatherContainer.innerHTML = ""; 

    for (const city of cities) {
        const data = await fetchWeather(city);
        if (data) {
            const weatherCard = document.createElement("div");
            weatherCard.classList.add("weather-card");
            weatherCard.innerHTML = `
                <h2 class="city">Weather in ${data.name}</h2>
                <h1 class="temperature">${Math.round(data.main.temp)}℃</h1>
                <img src="https://openweathermap.org/img/wn/${data.weather[0].icon}.png" alt="Weather Icon" class="icon">
                <div class="description">${data.weather[0].description}</div>
                <div class="humidity">Humidity: ${data.main.humidity}%</div>
                <div class="wind">Wind Speed: ${data.wind.speed} km/h</div>
                <button class="remove-btn">Remove</button>
            `;

            
            weatherCard.querySelector(".remove-btn").addEventListener("click", () => {
                weatherCard.remove();
            });

            weatherContainer.appendChild(weatherCard);
        } else {
            alert(`Weather data for "${city}" not found.`);
        }
    }

    searchBox.value = ""; 
}


searchBtn.addEventListener("click", checkWeather);

searchBox.addEventListener("keypress", (event) => {
    if (event.key === "Enter") {
        checkWeather();
    }
});




