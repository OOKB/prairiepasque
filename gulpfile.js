// This app info.
var appInfo = require('./package.json')
// Create global variable SITE_ID based on name property.
global.SITE_ID = appInfo.name
global.DATA_URL = appInfo.homepage+'/index.json'

console.log(global.DATA_URL);

// Require coffeescript
require('coffee-script/register');
// Require cape-gulp that contains common tasks.
require('cape-gulp');
