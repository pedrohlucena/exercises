import Spaceship from "./spaceship"
import SpaceshipEngine from "./spaceship_engine"

const sophia = new Spaceship("Sophia", 5, 10, 70)
const amsterda = new Spaceship("Amsterdã", 10, 14, 40)
const dwarfStart = new Spaceship("Estrela-Anã", 4, 20, 80)

let spaceshipEngines = [
    new SpaceshipEngine(sophia),
    new SpaceshipEngine(amsterda),
    new SpaceshipEngine(dwarfStart)
]

spaceshipEngines.forEach(currentSpaceshipEngine => {
    currentSpaceshipEngine.turnOn()
})