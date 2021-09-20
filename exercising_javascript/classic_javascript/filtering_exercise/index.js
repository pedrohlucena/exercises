const hitchedSpaceships = [
    ["Fenix", 8, true],
    ["Golias", 10, true],
    ["Helmet", 5, false],
    ["Elemental", 3, true],
    ["Darwin", 15, false]
]

let crewGreaterThan9 = hitchedSpaceships.filter(currentSpaceship => {
    return currentSpaceship[1] > 9
}).map(currentSpaceship => {
    return currentSpaceship[0]
})

let ongoingHitchPlatform = hitchedSpaceships.findIndex(currentSpaceship => {
    return currentSpaceship[2] == false
})

let highlightedSpaceships = hitchedSpaceships.map(currentSpaceship => {
    return currentSpaceship[0].toUpperCase()
})

alert(
    'Espaçonave com mais de 9 tripulantes: '+ crewGreaterThan9.join(', ') +
    '\nPlataforma com engate pendente: ' + (ongoingHitchPlatform + 1) +
    '\nEspaçonaves em destaque: ' + highlightedSpaceships.join(', ')
)