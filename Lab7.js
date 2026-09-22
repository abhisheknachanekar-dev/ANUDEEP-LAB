const fs = require('fs');

fs.writeFile('text1.txt', 'Hello, this is my first Node.js program! ', (error) => {
    if (error) {
        console.error(error);
    } else {
        console.log('first data entered sucessfully');
    }
    });
        fs.writeFile('text2.txt', 'I am excited to learn more about Node.js!', (error) => {
            if (error) {
                console.error(error);
            } else {
                console.log('second data entered sucessfully');
                }   
                });
                fs.readFile('text1.txt', 'utf8', (error, data1) => {
                    if (error) {
                        console.error(error);
                    } else {

                        fs.readFile('text2.txt', 'utf8', (error, data2) => {
                            if (error) {
                                console.error(error);
                            } else {
                                console.log(data1 + data2);
                            }
                        });

                    }
                });
            
        
    
