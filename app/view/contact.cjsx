React = require 'react'
Wufoo = require './wufoo'

module.exports = React.createClass
  render: ->
    {hash, subdomain} = @props.wufoo

    <section className="contact">
      <div className="group">
        <div className="column eight offset-by-two">
          <Wufoo hash={hash} subdomain={subdomain} />
        </div>
      </div>
    </section>
