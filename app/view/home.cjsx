React = require 'react'
Slideshow = require './slideshow'
Contact = require './contact'

module.exports = React.createClass
  render: ->
    {facebook, instagram} = @props

    <div className="container text-center clearfix">
      <header>
        <img src={facebook.photos.data[0].source} />
        <h1>{facebook.name}</h1>
        <p>{facebook.about}</p>
      </header>
      <Slideshow instagram={instagram} />
      <footer>
        <p>tk</p>
      </footer>
    </div>
