React = require 'react'
Slideshow = require './slideshow'
Contact = require './contact'
Footer = require './footer'

module.exports = React.createClass
  render: ->
    {facebook, instagram, currentYear, title, db} = @props
    if db?.wufoo
      ContactEl = <Contact wufoo={db.wufoo} />
    <div className="container text-center clearfix">
      <header>
        <img src={facebook.profilePhotos[0].images[0].source} />
        <h1>{facebook.name}</h1>
        <h2>{facebook.about}</h2>
      </header>
      <main>
        <Slideshow instagram={instagram} />
        {ContactEl}
      </main>
      <Footer currentYear={currentYear} title={title} />
    </div>
