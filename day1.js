// https://adventofcode.com/2021/day/1
const distances = [199,200,208,210,200,207,240,269,260,263]

const counter = distances.reduce((count, distance, index, allMeasurements) => {
  const previousDistance = allMeasurements[index - 1];
  if (distance > previousDistance) {
    return count + 1
  } else {
    return count;
  }
}, 0)

console.log(`${counter} measurements are larger than the previous ones`)