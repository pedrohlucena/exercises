export default class {
  constructor(spaceship) {
    this.spaceship = spaceship
  }

  turnOn() {
    this.checkCurrentCharge().then(currentCharge => {
      alert(`[ ${this.spaceship.name} ] | Carga atual: ${currentCharge}% | Partida autorizada`)
    }).catch(currentCharge => {
      alert(`[ ${this.spaceship.name} ] | Carga atual: ${currentCharge}% | Partida negada`)
    })
  }

  checkCurrentCharge() {
    return new Promise((resolve, reject) => {
      let currentCharge = this.spaceship.getChargePercent()

      if (currentCharge >= 30) {
        resolve(currentCharge)
      } else {
        reject(currentCharge)
      }
    })
  }
}