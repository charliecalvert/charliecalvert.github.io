window.onload = () => {
    
    const rotateLeftAction = document.getElementById('rotateAction');
    
    rotateLeftAction.onclick = () => {
        // setRotation('rotate-left');

        const value = document.querySelector('input[name="sorter"]:checked').value;
        setRotation(value);
    }    
}

let currentClass = null;

const setRotation = (className) => {
    console.log("SET CLASS TO", className);
    var element = document.getElementById("blue-arrow");
    if (currentClass) {
        element.classList.remove(currentClass);        
    }
    currentClass = className;
    element.classList.add(className);
}