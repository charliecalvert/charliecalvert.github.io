window.onload = () => {

    const appearanceButton = document.getElementById('appearanceAction');
    const appearanceButton2 = document.getElementById('appearanceAction2');
    const defaults = document.getElementById('default');
    const basic = document.getElementById('basic');

    appearanceButton.onclick = () => {
        disableStylesheet(defaults);
        enableStylesheet(basic);
    }

    appearanceButton2.onclick = () => {
        disableStylesheet(basic);
        enableStylesheet(defaults);
    }

}

function enableStylesheet (node) {
    node.rel = 'stylesheet';
  }
  
function disableStylesheet (node) {
    node.rel = 'alternate stylesheet';
}

