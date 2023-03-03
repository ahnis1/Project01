const express = require('express')
const app = express()

const port = process.env.PORT || 3030;

app.get('/', (req, res) => res.send('Hello World! This is Nodejs running on Ec2 Docker instance - :) Demo complete'))

app.listen(port, (err) => {
    if (err) {
      console.log('Error::', err);
    }
      console.log(`Nodejs app listening on port ${port}`);
  });
