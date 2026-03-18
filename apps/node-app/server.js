const express = require('express')
const app = express()

app.get('/', (req,res)=>{
 res.send("Hello from AKS GitOps")
})

app.listen(3000, ()=>{
 console.log("Server running")
})
