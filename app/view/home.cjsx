React = require 'react'
Slideshow = require './slideshow'
Contact = require './contact'
Footer = require './footer'

module.exports = React.createClass
  render: ->
    {facebook, instagram, currentYear, title} = @props

    <div className="container text-center clearfix">
      <header>
        <img src={facebook.photos.data[0].source} />
        <h1>{facebook.name}</h1>
        <p>{facebook.about}</p>
      </header>
      <main>
        <Slideshow instagram={instagram} />
        <Contact />
      </main>
      <Footer currentYear={currentYear} title={title} />
    </div>
