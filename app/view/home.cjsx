React = require 'react'

module.exports = React.createClass
  render: ->
    {facebook, data, query} = @props

    <div className="container">
      <img src={facebook.photos.data[0].source} />
      <h1>Purple Monkey Dishwasher!</h1>
      <p>Some text to test</p>
      <p>flowers and herbs oh my.</p>
    </div>
