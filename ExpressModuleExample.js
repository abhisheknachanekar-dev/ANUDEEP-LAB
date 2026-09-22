const express= require('express');
const app=express();
app.get('/',(req,res)=>{
    res.send('happy onam and eid to everyone');

});
app.listen(4000,()=>{
    console.log("serer running in on http://localhost:4000");

});