export default class {
  constructor(spaceship) {
    this.spaceship = spaceship
  }

  turnOn() {
    let shieldTest = this.shieldTest()
    let checkingCurrentCharge = this.checkCurrentCharge()

    Promise.all([shieldTest, checkingCurrentCharge]).then(results => {
      return this.normalizeShield(results[0])
    }).then(newShield => {
      this.spaceship.shield = newShield
      console.log(`(${this.spaceship.name}) Partida autorizada: Escudo (${this.spaceship.shield}) - Carga(${this.spaceship.currentCharge}GJ)`)
    }).catch(error => {
      console.log(`(${this.spaceship.name}) Partida não autorizada: ${error}`)
    })
  }

  checkCurrentCharge() {
    return new Promise((resolve, reject) => {
      let currentCharge = this.spaceship.getChargePercent()
      if (currentCharge >= 30) {
        resolve(currentCharge)
      } else {
        reject(`Carga apenas em ${currentCharge}GJ`)
      }
    })
  }

  shieldTest() {
    return new Promise((resolve, reject) => {
      let doubledShield = this.spaceship.shield * 2
      if (doubledShield >= 100) {
        resolve(doubledShield)
      } else {
        reject("Escudo em sobrecarga")
      }
    })
  }

  normalizeShield(shield) {
    return new Promise((resolve,reject) => {
      let normalizedShield = shield * 0.7
      if (normalizedShield > 120) {
        reject("Escudo em supercarga")
      } else {
        resolve(normalizedShield)
      }
    })
  }
}