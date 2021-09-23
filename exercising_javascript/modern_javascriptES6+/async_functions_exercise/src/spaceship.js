class Spaceship {
    constructor(name, currentCharge, maximumCharge, shield) {
        this.name = name
        this.currentCharge = currentCharge
        this.maximumCharge = maximumCharge
        this.shield = shield
    }

    getChargePercent() {
        return this.currentCharge * 100 / this.maximumCharge
    }
}

export default Spaceship