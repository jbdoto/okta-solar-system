// Okta Mock API

////////////////////////////////////////////////////

const express = require('express');

///////////////////////////////////////////////////

// SET UP WEB SERVER
const app = express();

require('./routes.js')(app);

var port = process.env.PORT || 3228;

app.use(express.json());

app.listen(port, function () {
	console.log('App listening on port ' + port);
});