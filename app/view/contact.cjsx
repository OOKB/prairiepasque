React = require 'react'

module.exports = React.createClass
  render: ->
    {facebook, data, query} = @props

    <div className="container">
      <img src={facebook.photos.data[0].source} />
      <h1>{facebook.name}</h1>
      <p>{facebook.about}</p>
    </div>
