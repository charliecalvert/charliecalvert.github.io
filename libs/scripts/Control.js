/**
 * Created by charlie on 3/5/15.
 */

var elf = {};

elf.Control = (function() {

    function Control() {
        $("#Prog272Week09").click(function() {
           $("#displayArea").load("/Prog272/Week09-Prog272.html");
        });
    }


    return Control;

})();

$(document).ready(function() {
    console.log('Document ready called');
    new elf.Control();
});
