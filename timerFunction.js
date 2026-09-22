setTimeout(()=>{
    console.log("execute after 2 second");

},2000);
const interver=setInterval(()=>{
    console.log('executed every one second');

},1000);
setTimeout(() => clearInterval(interver),5000);