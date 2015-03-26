React = require 'react'
_ = require 'lodash'

InstaItem = React.createClass
  render: ->
    {caption, images, active} = @props
    className = if active then 'insta-item active' else 'insta-item'
    <li className={className}>
      <img src={images.standard_resolution.url} />
      <p>{caption.text}</p>
    </li>

module.exports = React.createClass
  getInitialState: ->
    currentIndex: 0
  tick: ->
    {instagram} = @props
    {currentIndex} = @state
    maxIndex = instagram.length-1
    nextIndex = currentIndex + 1
    nextIndex = if nextIndex is maxIndex then 0 else nextIndex
    @setState currentIndex: nextIndex

  componentDidMount: ->
    @interval = setInterval @tick, 6000
  componentWillUnmount: ->
    clearInterval @interval

  render: ->
    {currentIndex} = @state
    {instagram} = @props

    InstaItemEl = (props, i) ->
      props.key = props.id
      props.active = currentIndex is i
      React.createElement(InstaItem, props)

    <ul className="insta-list">
      { _.map instagram, InstaItemEl }
    </ul>
