//Asynchronus way
const {error}=require('console');
const fs=require('fs');

fs.appendFile('test.txt','\nMy name is Abhishek',(error)=>{
    if(error)
    {
        console.log(error);
    }
    else{
            console.log('content append sussfully');
    }
})
