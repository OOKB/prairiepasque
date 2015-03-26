React = require 'react'
Wufoo = require './wufoo'

module.exports = React.createClass
  render: ->
    {hash, subdomain} = @props.wufoo

    <section className="contact">
      <div className="group">
        <div className="ten columns offset-by-one">
          <Wufoo hash={hash} subdomain={subdomain} />
        </div>
      </div>
    </section>
