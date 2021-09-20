const Planet = require('./planet')
const planetOperations = require('./planet_operations')

let planets = [
    new Planet('Mercúrio', 0.39),
    new Planet('Vênus', 0.72),
    new Planet('Terra', 1),
    new Planet('Marte', 1.52),
    new Planet('Júpiter', 5.2),
    new Planet('Saturno', 9.53),
    new Planet('Urano', 19.1),
    new Planet('Neturno', 30)
]

planets.forEach(currentPlanet => {
    distanceToSunKm = planetOperations.convertUaToKm(currentPlanet.uaToSun).toFixed(2)

    console.log(`${currentPlanet.name} - ${currentPlanet.uaToSun}UA - ${distanceToSunKm}km`)
})