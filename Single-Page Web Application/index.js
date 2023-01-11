//Import the express module
const express = require('express');
const bodyParser = require('body-parser');

//The express module is a function. When it is executed it returns an app object
const app = express();

app.use(bodyParser.json());

//Set up express to serve static files from the directory called 'public'
app.use(express.static('public'));

app.get("/normaluser", getAllUsers);
app.post("/normaluser", addUser);

//app.use(fileUpload());

//Start the app listening on port 8080
app.listen(8080);

//Import the mysql module
const mysql = require('mysql');

//Create a connection pool with the user details
const connectionPool = mysql.createPool({
    connectionLimit: 1,
    host: "localhost",
    user: "root",
    password: "",
    database: "users",
    debug: false
});

function getAllUsers(request, response){

    //build query
    let sql = "SELECT * FROM normaluser";

    //Execute query and output results
    connectionPool.query(sql, (err, result) => {
        if (err){//Check for errors
            console.error("Error executing query: " + JSON.stringify(err));
        }
        else{//Output results in JSON format - a web service would return this string.
            console.log(JSON.stringify(result));
            response.send(JSON.stringify(result));
        }
    });
}

function addUser(request, response){

    let newUser = request.body;
    console.log(request.body);

    //build query
    let sql = 'INSERT INTO normaluser (username, password) VALUES ("' + newUser.username + '","' + newUser.password + '")';
    console.log("SQL: " + sql);

    //Execute query and output results
    connectionPool.query(sql, (err, result) => {
        if (err){//Check for errors
            console.error("Error executing query: " + JSON.stringify(err));
        }
        else{//Output results in JSON format - a web service would return this string.
            console.log("User added");
            response.send({"added": true});
        }
    });
}