import Spaceship from "./spaceship"
import SpaceshipEngine from "./spaceship_engine"

const sophia = new Spaceship("Sophia", 10, 5)
const amsterda = new Spaceship("Amsterdã", 14, 10)
const dwarfStart = new Spaceship("Estrela-Anã", 20, 4)

let spaceshipEngines = [
    new SpaceshipEngine(sophia),
    new SpaceshipEngine(amsterda),
    new SpaceshipEngine(dwarfStart)
]

spaceshipEngines.forEach(currentSpaceshipEngine => {
    currentSpaceshipEngine.turnOn()
})