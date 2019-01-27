var mysql = require('mysql');
var dbcredentials;

        dbcredentials={
		  host: process.env.DB_FAV_HOST,
          user: process.env.DB_FAV_USER,
          password: process.env.DB_FAV_PASS,
          database: process.env.FAV_DATABASE,
	      insecureAuth : true
		}


var con = mysql.createConnection(dbcredentials);
	con.on('error',(err) =>{
    console.log('db error', err);
    if(err.code === 'PROTOCOL_CONNECTION_LOST') { 
      console.log(err);                        
    } else {                                      
      //throw err;                                 
    }
  });




module.exports=con;