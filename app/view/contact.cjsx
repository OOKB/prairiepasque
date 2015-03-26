React = require 'react'
Wufoo = require './wufoo'

module.exports = React.createClass
  render: ->
    {hash, subdomain} = @props.wufoo

    <section className="contact">
      <Wufoo hash={hash} subdomain={subdomain} />
    </section>
