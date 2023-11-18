const axios = require('axios');
let token = process.env.VDSINA_API_TOKEN
let config = {
  method: 'get',
  maxBodyLength: Infinity,
  url: 'https://userapi.vdsina.ru/v1/server',
  headers: { 
    'Accept': 'application/json', 
    'Authorization': token
  }
};

axios.request(config)
.then((response) => {
  console.log(JSON.stringify(response.data));
})
.catch((error) => {
  console.log(error);
});
