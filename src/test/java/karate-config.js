function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'sample';
  }
  var config = {
    env: env,
    myVarName: 'someValue'
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
    config.url1 = "http://gmail.com";
    config._path = "/amol/user";
    config.id = "567";

  } else if (env == 'e2e') {
    // customize
    config.url1 = "http://facebook.com";
    config._path = "/vanita/user";
    config.id = "167";
  }
  else if (env == 's1') {
      // customize
       config.url1 = "http://instagram.com";
          config._path = "/prashant/user";
          config.id = "170";

    }

    else if (env == 'sample') {
          // customize
           config.url1 = "https://reqres.in/";
              config._path = "/api/users";
              config.page1 = "2";

        }
  return config;
}