
module.exports = (robot) ->
    robot.router.post '/chirolita/:room', (req, res) ->
        room   = req.params.room
        data   = JSON.parse req.body.payload
  
        robot.messageRoom room, data
        res.send 'OK'
  
    robot.router.get '/', (req, res) ->
        res.send 'OK'

        
