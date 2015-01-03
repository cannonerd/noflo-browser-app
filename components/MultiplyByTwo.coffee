noflo = require 'noflo'

exports.getComponent = ->
  c = new noflo.Component
  c.inPorts.add 'in', (event, payload) ->
    return unless event is 'data'
    # Do something with the packet, then
    out = payload * 2
    c.outPorts.out.send out
  c.outPorts.add 'out'
  c