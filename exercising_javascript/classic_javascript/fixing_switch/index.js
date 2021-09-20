let distanceLightYears = Number(prompt('Digite uma distância em anos luz'))

let conversionOption = prompt(
    'Você quer converter o valor digitado para qual das medidas a seguir? \n' +
    '\n1- Parsec (pc)' + '\n2- Unidade Astronômica (UA)' + '\n3- Quilômetros (km) \n')

let chosenOption
let convertedDistance
    
switch(conversionOption) {
    case '1':
        chosenOption = 'Parsec'
        convertedDistance = distanceLightYears * 0.306601
        break
    case '2':
        chosenOption = 'Unidade Astronômica'
        convertedDistance = distanceLightYears * 63241.1
        break
    case '3':
        chosenOption = 'Quilômetros'
        convertedDistance = distanceLightYears * 9.5 * Math.pow(10,12)
        break
    default:
        chosenOption = 'Unidade não reconhecida'
        convertedDistance = 'Conversão fora de escopo'
}

alert(
    'Distância em Anos-Luz: ' + distanceLightYears.toFixed(2) +  
    '\nDistância em ' + chosenOption + ': ' + convertedDistance.toFixed(2)
)