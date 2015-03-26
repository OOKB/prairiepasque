React = require 'react'

module.exports = React.createClass
  render: ->
    {currentYear, title} = @props

    <footer>
      <p>&copy; {currentYear} {title}</p>
      <div className="cape-credits">
        <p>An FBPages Site by <a href="http://www.ookb.co/">OOKB</a> / Powered by <a href="http://www.cape.io/">CAPE</a></p>
      </div>
    </footer>