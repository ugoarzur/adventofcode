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


// TODO: Aggregate bits from entries
const aggregate = (diagnosys, index) => diagnosys.reduce((previous,current) => {
  const char = current.charAt(index)
  console.log(`fetching the first char ${char} of ${current}`)
  previous.push(char)
  return previous;
}, [])


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

const loops = diagnosys[0].length;
const gamma = []
const epsilon = []

for (let loop = 0; loop < diagnosys[0].length; loop++) {
  // const element = diagnosys[loop];
  console.log('\n== LOOP ', loop)

  const aggregation = aggregate(diagnosys, loop)
  console.log("aggregation", JSON.stringify(aggregation))

  const count = counter(aggregation)
  console.log("count", count)

  if (count[0] > count[1]){
    console.log("|> The most common is 0")
    gamma.push(0)
    epsilon.push(1)
  } else {
    console.log("|> The least common is 1")
    gamma.push(1)
    epsilon.push(0)
  }
}
const finalGammaRate = gamma.toString().replace(/,/ig, "")
const finalEpsilonRate = epsilon.toString().replace(/,/ig, "")
console.log(`|> Final gamma ${finalGammaRate} and epsilon ${finalEpsilonRate} `)

const convertedGammaRate = parseInt(finalGammaRate, 2);
const convertedEpsilonRate = parseInt(finalEpsilonRate, 2);
console.log(`|> Final converted gamma ${convertedGammaRate} and epsilon ${convertedEpsilonRate} `)

// TODO: Calculate the power consumption thanks to gammaRate and epsilonRate
const powerConsumption = convertedGammaRate * convertedEpsilonRate;
console.log("|> Power consumption", powerConsumption)

