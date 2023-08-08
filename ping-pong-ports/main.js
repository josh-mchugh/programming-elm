import './main.css';
import { Elm } from './src/Main.elm';

var app = Elm.Main.init({
    node: document.getElementById('pingContent') 
});

(function() {
    var pongBtn = document.getElementById("pongBtn");
    pongBtn.addEventListener("click", function() {
        var pongCount = document.getElementById("pongCount");
        var count = Number(pongCount.innerHTML) + 1;
        pongCount.innerHTML = count.toString();
    });

    app.ports.ping.subscribe(function() {
        console.log("Ping");
    });
})();
