// Day2
// https://adventofcode.com/2021/day/2

const position = {
  horizontal: 0,
  depth: 0
}

console.log('|> Initial position', position)
// forward, down, up
const navigate = (direction, unit) => {
  switch (direction) {
    case "forward":
      position.horizontal += unit;
      console.log(`|> navigate: ${direction} horizontal position +${unit}`)
      break;
      case "down":
      position.depth += unit;
      console.log(`|> navigate: ${direction} depth +${unit}`)

      break;
      case "up":
      position.depth -= unit;
      console.log(`|> navigate: ${direction} depth -${unit}`)
      break;

    default:
      console.log('❌ navigation is not valid')
      break;
  }
}
navigate("forward", 5)
navigate("down", 5)
navigate("forward", 8)
navigate("up", 3)
navigate("down", 8)
navigate("forward", 2)

console.log(":: Final position", position)

const results = position.horizontal * position.depth;
console.log("Final position", results)