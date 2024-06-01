const fs = require('fs');
const csv = require('csv-parser');
const SLR = require('ml-regression').SLR;

// Arrays to store age and corresponding values
let ages = [];
let values = [];

// Read the CSV file and parse its contents
fs.createReadStream('/home/chilly/Downloads/data1.csv')
  .pipe(csv())
  .on('data', (row) => {
    // Extract age and values from each row
    ages.push(parseFloat(row['Age']));
    // Adjust this line based on your CSV structure
    values.push(parseFloat(row['5'])); // Assuming the value is in column '5'
  })
  .on('end', () => {
    // Once all data is read, train the linear regression model
    const regression = new SLR(ages, values);

    // Example prediction
    console.log(regression.predict(20));
    // Coefficients
    console.log(regression.coefficients);
    // Model summary
    console.log(regression.toString(3));
  });
