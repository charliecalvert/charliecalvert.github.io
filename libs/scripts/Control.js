/**
 * Created by charlie on 3/5/15.
 */

var elf = {};

elf.Control = (function() {
    'use strict';
    function Control() {
        $('table').addClass('table table-striped table-bordered');
        $("#Prog272Week09").click(function() {
           $("#displayArea").load("/Prog272/Week09-Prog272.html");
        });
    }


    return Control;

})();

$(document).ready(function() {
    'use strict';
    console.log('Document ready called');
    new elf.Control();

    const getTestAction = document.getElementById('getTest');
    const root = document.getElementById('root');
    const title = document.getElementsByTagName('title');

    getTestAction.onclick = () => {
        fetch('/test01')
            .then(response => response.text())
            .then(result => {
                title[0].textContent = 'bar';
                root.innerHTML = result;
            })
    }
});
