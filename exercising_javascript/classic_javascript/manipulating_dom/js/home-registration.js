function addNewHouse() {
    let area = document.querySelector("input[name = 'area']").value
    let number = document.querySelector("input[name = 'number']").value
    let neighborhood = document.querySelector("input[name = 'neighborhood']").value
    let city = document.querySelector("input[name = 'city']").value

    let newHouse = document.createElement("li")
    newHouse.innerText = area + 'm², número: ' + number + ', bairro: ' + neighborhood + ', city: ' +
                         city

    let removeButton = document.createElement('button')
    removeButton.type = 'button'
    removeButton.setAttribute('onclick', 'deleteHouse(this)')
    removeButton.innerText = 'Remover casa'

    newHouse.appendChild(removeButton)

    let houseList = document.querySelector('ol#house-list')
    houseList.appendChild(newHouse)
}

function deleteHouse(button) {
    let houseToRemove = button.parentNode
    document.getElementById('house-list').removeChild(houseToRemove)
}