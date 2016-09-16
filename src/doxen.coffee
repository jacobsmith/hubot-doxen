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
  randomPicture = ->
    _.sample([
      "http://i.imgur.com/V0ar3zXb.jpg",
      "http://i.imgur.com/JHSlvWXb.jpg",
      "http://i.imgur.com/ePjHB1ob.jpg",
      "http://i.imgur.com/VE7Bt1mb.jpg",
      "http://i.imgur.com/mIOr5srb.jpg",
      "http://i.imgur.com/LFz5U7Zb.jpg",
      "http://i.imgur.com/MJrELVSb.jpg",
      "http://i.imgur.com/WMW3GqAb.jpg",
      "http://i.imgur.com/P6wD9hEb.jpg",
      "http://i.imgur.com/Og1p9Nwb.jpg",
      "http://i.imgur.com/6m3XqhQb.jpg",
      "http://i.imgur.com/6gxtk3Jb.jpg",
      "http://i.imgur.com/eeoiznKb.jpg",
      "http://i.imgur.com/aWxBSzRb.jpg",
      "http://i.imgur.com/2t44Ir1b.jpg",
      "http://i.imgur.com/cHULgVKb.jpg",
      "http://i.imgur.com/RwcoaCdb.jpg",
      "http://i.imgur.com/m6CQiMxb.jpg",
      "http://i.imgur.com/7TC9aEDb.jpg",
      "http://i.imgur.com/hTFL0rTb.jpg",
      "http://i.imgur.com/ESOqimdb.jpg",
      "http://i.imgur.com/J4QoVIDb.jpg",
      "http://i.imgur.com/GrSW3H9b.jpg",
      "http://i.imgur.com/5W9Gg4gb.jpg",
      "http://i.imgur.com/p2gsj74b.jpg",
      "http://i.imgur.com/0GPTnYwb.jpg",
      "http://i.imgur.com/xI0U1lPb.jpg",
      "http://i.imgur.com/QVu9LqAb.jpg",
      "http://i.imgur.com/T0raGX7b.jpg",
      "http://i.imgur.com/yFaHSpHb.jpg",
      "http://i.imgur.com/kKWB899b.jpg",
      "http://i.imgur.com/tyEbjPVb.jpg",
      "http://i.imgur.com/PA3ZbJ8b.jpg",
      "http://i.imgur.com/6P8hfTOb.jpg",
      "http://i.imgur.com/nLbX56nb.jpg",
      "http://i.imgur.com/pR4ocNbb.jpg",
      "http://i.imgur.com/epIWemjb.jpg",
      "http://i.imgur.com/PlnBX1Bb.jpg",
      "http://i.imgur.com/bLiaLJqb.jpg",
      "http://i.imgur.com/4k2V818b.jpg",
      "http://i.imgur.com/wAjCyxdb.jpg",
      "http://i.imgur.com/KD8rERRb.jpg",
      "http://i.imgur.com/quZGdp6b.jpg",
      "http://i.imgur.com/G3EhyUFb.jpg",
      "http://i.imgur.com/nSpuuwdb.jpg",
      "http://i.imgur.com/GOkvzSrb.jpg",
      "http://i.imgur.com/Ygv2FZ8b.jpg",
      "http://i.imgur.com/YAXBXYnb.jpg",
      "http://i.imgur.com/l6XXWvnb.jpg",
      "http://i.imgur.com/GqRyg5Cb.jpg",
      "http://i.imgur.com/ZZe39JPb.jpg",
      "http://i.imgur.com/pO5zhV6b.jpg",
      "http://i.imgur.com/WaA4hmWb.jpg",
      "http://i.imgur.com/pT67tuAb.jpg",
      "http://i.imgur.com/QQ4IqS7b.jpg",
      "http://i.imgur.com/uIiil2gb.jpg",
      "http://i.imgur.com/KWr46jWb.jpg",
      "http://i.imgur.com/i8grz5Rb.jpg",
      "http://i.imgur.com/UJQHJLib.jpg",
      "http://i.imgur.com/eINJYANb.jpg"
      ])

  robot.respond /doxen me/i, id: 'doxen.single', (res) ->
    console.log("returning a doxen")
    res.reply "Dachshund incoming!"
    res.send randomPicture()

  robot.respond /doxen bomb( \d)?/i, id: 'doxen.bomb', (res) ->
    res.reply "Dachshund bomb incoming!"
    console.log("doxen bomb")
    limit = parseInt(res.match[0]) || 3
    console.log(limit + " doxens requested")
    for i in [0..limit]
      console.log(i + " - iteration")
      res.send randomPicture()

  robot.respond /d[^\s]{4}(.+) me/i, res ->
    console.log("not one for spelling doxen")
    res.reply "...you're not really one for spelling, are you?"
    res.send randomPicture()
