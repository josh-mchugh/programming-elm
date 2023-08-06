import './main.css';
import { Elm } from './src/Picshare.elm';

var app = Elm.Picshare.init({
    node: document.getElementById('main')
});

app.ports.listen.subscribe(listen);

function listen(url) {
    var socket = new WebSocket(url);
    socket.onmessage = function(event) {
        app.ports.receive.send(event.data);
    };
}
