
module.exports = (robot) ->
    robot.router.post '/chirolita/:room', (req, res) ->
        room   = req.params.room
        data   = if req.body.payload? then JSON.parse req.body.payload else req.body
  
        robot.messageRoom room, data
        res.send 'OK'
  
    robot.router.get '/', (req, res) ->
        res.send 'Ya estoy despierto'


