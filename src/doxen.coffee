# Description
#   A hubot script that returns doxens.
#
# Configuration:
#  < None >
#
# Dependencies:
#   "lodash": "^4.0.0"
#
# Commands:
#   hubot doxen me - return a picture of a doxen
#   hubot doxen bomb {Integer} - returns {Integer} pictures of doxens
#
# Author:
#   Jacob Smith <jacob.wesley.smith@gmail.com>

_ = require('lodash')

module.exports = (robot) ->

  robot.respond /doxen me/i, id: 'doxen.single', (res) ->
    res.reply "Dachshund(s) incoming!"
    res.reply "http://i.imgur.com/LFz5U7Z.png"
