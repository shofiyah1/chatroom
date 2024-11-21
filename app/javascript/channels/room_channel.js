import consumer from "./consumer"

consumer.subscriptions.create({channel: "RoomChannel", room_id: 2}, {
    connected() {
        console.log("connected...")
        // Called when the subscription is ready for use on the server
    },

    disconnected() {
        

    },

    received(data) {
        console.log(data)
        // Called when there's incoming data on the websocket for this channel
    }

});