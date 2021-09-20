class Spaceship {
    constructor(name, currentCharge, maximumCharge) {
        this.name = name
        this.currentCharge = currentCharge
        this.maximumCharge = maximumCharge
    }

    getChargePercent() {
        return (this.currentCharge / this.maximumCharge) * 10
    }
}

export default Spaceship