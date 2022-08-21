const app = require('express')();
const PORT = 8080;

app.get('/', (req, res)=> {
    res.status(200).send('this is a api!')
})

app.listen(PORT)