const fs= require('fs'); //write the content into the file
fs.writeFileSync('main.txt','My name is Abhishek');
//reading the content into the file
fs.readFile('main.txt','UTF8',(error,data)=>{
    if(error)throw error;
    console.log(data);
});