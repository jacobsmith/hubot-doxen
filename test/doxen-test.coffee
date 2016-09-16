chai = require 'chai'
sinon = require 'sinon'
Helper = require('hubot-test-helper')

chai.use require 'sinon-chai'

expect = chai.expect

helper = new Helper('../index.coffee')

waitForReplies = (number, room, callback) ->
  setTimeout(->
    if room && room.messages.length >= number
      callback(room)
    else
      waitForReplies(number, room, callback)
  )

lastMessageContent = (room) ->
  room.messages[room.messages.length - 1][1]

describe 'doxen', ->
  room = helper.createRoom();

  beforeEach ->
    room.message = []

    @robot = room.robot

  afterEach ->
    room.destroy()

  describe 'doxen me', ->
    it 'returns a message', (done) ->
      room.user.say 'alice', '@hubot doxen me'
      waitForReplies 1, room, ->
        expect(lastMessageContent(room)).to.eql "@alice Dachshund(s) incoming!"
        done()
