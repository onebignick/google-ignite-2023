const WebSocket = require("ws")

const WS_CONNECTION = "wss://ws.tryterra.co/connect";

function initWS(token) {
    const socket = new WebSocket(WS_CONNECTION)

    var expectingHeartBeatAck = false

    socket.addEventListener('open', function (event) {
        console.log("Connection Established");
    })

    function heartBeat(){   
        if(!expectingHeartBeatAck){
            var heartBeatPayload = JSON.stringify({
                "op": 0
            })
            socket.send(heartBeatPayload)
            console.log("↑  " + heartBeatPayload)
            expectingHeartBeatAck = true
        }
        else socket.close()
    }
    
    socket.addEventListener('message', function (event) {
        console.log("↓  " + event.data);
        var message = JSON.parse(event.data)
        if (message["op"] == 2){
            heartBeat()
            setInterval(heartBeat, message["d"]["heartbeat_interval"])
            var payload = JSON.stringify(
                {
                    "op": 3,
                    "d": {
                        "token": token,
                        "type": 1  //0  for user, 1 for developer
                    }
                }
            )
            socket.send(payload)
        }
        if (message["op"] == 1){
            expectingHeartBeatAck = false
        }
    })


    socket.addEventListener('close', function (event) {
        console.log('close');
        console.log(event.reason);
    })


    socket.addEventListener('error', function (event) {
        console.log('error');
        console.log(event);
    })
}

initWS("dGVzdGluZ0VsbGlvdHQ.MU1fASa1nR9EpQWQx67xIN7veTFKFwudaB4HbN4kw9A")