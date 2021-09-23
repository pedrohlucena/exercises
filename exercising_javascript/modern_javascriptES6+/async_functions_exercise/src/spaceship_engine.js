export default class {
  constructor(spaceship) {
    this.spaceship = spaceship
  }

  async turnOn() {
    let shieldTest = this.shieldTest()
    let checkingCurrentCharge = this.checkCurrentCharge()

    try {
      let results = await Promise.all([shieldTest, checkingCurrentCharge])

      this.spaceship.shield = await this.normalizeShield(results[0])
      console.log(`(${this.spaceship.name}) Partida autorizada: Escudo (${this.spaceship.shield}) - Carga(${this.spaceship.currentCharge}GJ)`)
    } catch(error) {
      console.log(`(${this.spaceship.name}) Partida não autorizada: ${error}`)
    }
  }

  async checkCurrentCharge() {
      let currentCharge = this.spaceship.getChargePercent()

      if (currentCharge < 30) {
        return Promise.reject(`Carga apenas em ${currentCharge}GJ`)
      }

      return currentCharge
  }

  async shieldTest() {
      let doubledShield = this.spaceship.shield * 2
      
      if (doubledShield < 100) {
        return Promise.reject("Escudo em sobrecarga")
      }

      return doubledShield
  }

  async normalizeShield(shield) {
      let normalizedShield = shield * 0.7

      if (normalizedShield > 120) {
        return Promise.reject("Escudo em supercarga")
      }

      return normalizedShield
  }
}