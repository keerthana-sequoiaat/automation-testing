function fn() {
  var config = {};

  config.baseUrl = 'https://catfact.ninja';
  config.xmlBaseUrl = 'https://sample-files.com/downloads/data/xml';

  config.headers = {
    Accept: 'application/json'
  };

  return config;
}
