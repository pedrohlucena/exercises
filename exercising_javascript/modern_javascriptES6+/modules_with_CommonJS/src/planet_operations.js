module.exports = {
    get AU_IN_KILOMETERS() { return 149587870 }, // criamos uma var basicamente

    convertUaToKm(AU) {
        return AU * this.AU_IN_KILOMETERS
    }
}