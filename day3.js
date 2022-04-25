// Day3
// https://adventofcode.com/2021/day/3

const diagnosys = [
  "00100",
  "11110",
  "10110",
  "10111",
  "10101",
  "01111",
  "00111",
  "11100",
  "10000",
  "11001",
  "00010",
  "01010"];

const checkAt = (number, index) => number.charAt(index);

const aggregate = (diagnosys, index) => diagnosys.reduce((previous,current) => {
  const char = checkAt(current, index)
  previous.push(char)
  return previous;
}, [])

// TODO: Aggregate bits
// TODO: Calculate the gamma rate: fetch the first bit of each number and take the most common
// TODO: Calculate the epsilon rate: fetch the first bit of each number and take the least common
const counter = (aggregation) => {
  const count = {}
  for (const element of aggregation) {
    if (count[element]) {
      count[element]+= 1;
    } else {
      count[element] = 1;
    }
  }
  return count
}

const aggregation = aggregate(diagnosys, 1)
const count = counter(aggregation)
console.log("count", count)

// diagnosys.forEach((diag) => {
//   aggregate(diagnosys, index)
// });


// TODO: Calculate the power consumption thanks to gammaRate and epsilonRate
// const powerConsumption = parseInt(gammaRate, 2) * parseInt(epsilonRate, 2);
// console.log("powerConsumption", powerConsumption)

