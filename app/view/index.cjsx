React = require 'react'
{Link} = require 'react-router'
{RouteHandler, State} = require 'react-router'

module.exports = React.createClass
  mixins: [State]
  render: ->
    {sha, description, author, title, facebook} = @props
    appFileName = sha or 'app'
    cssFilePath = "/assets/#{appFileName}.css"
    jsFilePath = "/assets/#{appFileName}.js"

    if author
      metaAuthor = <meta name="author" content={author} />
    else
      metaAuthor = false

    if description
      metaDescription = <meta name="description" content={description} />
    else
      metaDescription = false

    <html>
      <head>
        <title>{title or 'title'}</title>
        <meta charSet="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" type="text/css" href={cssFilePath} />
        <meta name="generator" content="CAPE.io, see www.cape.io" />
        {metaAuthor} {metaDescription}
      </head>
      <body>
        {React.createElement(RouteHandler, @props)}
        <script src={jsFilePath} type="text/javascript" />
      </body>
    </html>
