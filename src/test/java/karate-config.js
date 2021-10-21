function fn() {

    var env = karate.env;
    var config = {
        urlBase: 'https://ghibliapi.herokuapp.com/vehicles/'
    };
 
 
    karate.configure('logPrettyRequest', true);
    return config;
 }
 
 