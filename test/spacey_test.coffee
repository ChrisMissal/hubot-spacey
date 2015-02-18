chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'spacey', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()

    require('../src/spacey')(@robot)

  it 'compiles', ->
    true

  it 'registers a respond listener', ->
    expect(@robot.respond).to.be.calledWith(/spacey me/i)
