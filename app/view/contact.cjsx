React = require 'react'
Wufoo = require './wufoo'

module.exports = React.createClass
  render: ->
    {currentYear, title} = @props

    <section className="contact">
      <Wufoo />
    </section>
