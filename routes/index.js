var express = require('express');
var router = express.Router();
var path = require('path');
let sql = require('../utils/sql');

/* GET home page. */
router.get('/', function(req, res, next) {
  //res.render('index', { title: 'Express' });
  console.log('sent back a static file');
  res.sendFile((path.join(__dirname, "../views/index.html")));
});

router.get('/svgdata/:target', (req, res) => {

  console.log('hit a dynamic route');
  //here is where we set the query
  let query = `SELECT * FROM tbl_cheese WHERE id="${req.params.target}"`;

  sql.query(query, (err, result) => {
    if (err) console.log(err); // something done broke

    console.log(result); // this should be the database row

    res.json(result[0]); //send that row back to the calling function
  })
})

module.exports = router;
