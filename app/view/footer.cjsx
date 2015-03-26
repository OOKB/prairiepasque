React = require 'react'

module.exports = React.createClass
  render: ->
    {currentYear, title} = @props

    <footer>
      <p>&copy; {currentYear} {title}</p>
    </footer>
