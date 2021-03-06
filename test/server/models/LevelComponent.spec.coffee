require '../common'

describe 'LevelComponent', ->

  raw =
    name:'Bashes Everything'
    description:'Makes the unit uncontrollably bash anything bashable, using the bash system.'
    code: 'bash();'
    language: 'javascript'
    official: true
    permissions:simplePermissions

  comp = new LevelComponent(raw)

  it 'clears things first', (done) ->
    LevelComponent.remove {}, (err) ->
      expect(err).toBeNull()
      done()

  it 'can be saved', (done) ->
    comp.save (err) ->
      expect(err).toBeNull()
      done()

