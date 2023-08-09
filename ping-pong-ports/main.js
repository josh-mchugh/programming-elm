import './main.css';
import { Elm } from './src/Main.elm';

var app = Elm.Main.init({
    node: document.getElementById('pingContent') 
});

(function() {
    // pong button and click listener
    var pongBtn = document.getElementById("pongBtn");
    pongBtn.addEventListener("click", function() {
        // Disable the pong button
        pongBtn.disabled = true;

        // Increment the pong count
        var pongCount = document.getElementById("pongCount");
        var count = Number(pongCount.innerHTML) + 1;
        pongCount.innerHTML = count.toString();

        // Send command pong commend
        app.ports.pong.send(null);
    });

    // Receive ping commands
    app.ports.ping.subscribe(function() {
        // Enable the pong button
        pongBtn.disabled = false;
    });
})();
