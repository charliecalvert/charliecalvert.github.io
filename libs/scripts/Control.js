/**
 * Created by charlie on 3/5/15.
 */

var elf = {};

elf.Control = (function () {
    'use strict';

    function Control() {
        $('table').addClass('table table-striped table-bordered');
        $("#Prog272Week09").click(function () {
            $("#displayArea").load("/Prog272/Week09-Prog272.html");
        });
    }

    Control.prototype.loadMain = function(pathName) {
        fetcher('/index.md');
    /*    const root = document.getElementById('root');
        const title = document.getElementsByTagName('title');

        fetch('/home-page')
            .then(response => response.text())
            .then(result => {
                title[0].textContent = 'bar';
                root.innerHTML = result;
            })*/
    };

    const swapExtension = function(fileName, ext) {
        'use strict';
        return fileName.substr(0, fileName.lastIndexOf('.')) + ext;
    };


    window.onpopstate = function(event) {
        console.log("location: " + document.location + ", state: " + JSON.stringify(event.state));
        if (event.state && event.state.elfPath) {
            fetcher(event.state.elfPath);
        }
    };

    const fetcher = (pathName) => {
        const root = document.getElementById('root');
        const title = document.getElementsByTagName('title');
        const serverPathName= swapExtension(pathName, '.md');
        fetch('/test01?pathname=' + serverPathName)
            .then(response => response.text())
            .then(result => {
                title[0].textContent = 'bar';
                root.innerHTML = result;

                document.title = 'barfoo';
                window.history.pushState({
                        "elfPath": pathName,
                        "pageTitle": 'elf-bar'
                    },
                    "",
                    pathName);
            })
    };

    document.onclick = function(event){
        //IE doesn't pass in the event object

        event = event || window.event;

        //IE uses srcElement as the target
        const target = event.target || event.srcElement;

        if (target.hash !== '') {
            return;
        }

        event.preventDefault();
        fetcher(target.pathname);


        /*switch(target.id){
            case "help-btn":
                openHelp();
                break;
            case "save-btn":
                saveDocument();
                break;
            case "undo-btn":
                undoChanges();
                break;
            //others?
        }*/
    };

    return Control;

})();

$(document).ready(function () {
    'use strict';
    console.log('Document ready called');
    const control = new elf.Control();

    const getTestAction = document.getElementById('getTest');

    getTestAction.onclick = control.loadMain;

    control.loadMain();

});
