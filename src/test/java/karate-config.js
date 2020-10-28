function fn() {
    karate.configure('connectTimeout', 60000);
    karate.configure('readTimeout', 60000);
    karate.configure('logPrettyResponse', true);

    var config = {

        baseUrl : 'https://restful-booker.herokuapp.com'
    }

    return config;
}