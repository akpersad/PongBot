module.exports = (robot) ->
  # listen for hubot @p1 @p2 ... @pn
  robot.respond /some fancy regex/i, (res) ->
    if res.match.length is 1
      # update just the user
    else if res.match.length > 1
      # update each user
      # update the team

  # listen for hubot leaderboard
  robot.respond /leaderboard/i, (res) ->
    # get the individual rankings
    robot.http("")
      .header('Accept', 'application/json')
      .get() (err, res, body) ->
        # TODO: error checking here
        
        data = JSON.parse body
        res.send "#{data}"

    # get the team rankings
    robot.http("")
      .header('Accept', 'applicaiton/json')
      .get() (err, res, body) ->
        # TODO: error checking here
        data = JSON.parse body
        res.send "#{data}"
