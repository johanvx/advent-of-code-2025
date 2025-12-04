#let answers = {
  let rotations = read("input.txt").split("\n").filter(line => line != "")

  let answer-1 = {
    let start = 50
    let dial = start
    let count = 0

    for rotation in rotations {
      let direction = rotation.at(0)
      if direction != "L" and direction != "R" {
        panic("Invalid direction: " + direction)
      }

      let distance = int(rotation.slice(1))
      if direction == "L" {
        dial = calc.rem-euclid(dial - distance, 100)
      } else {
        dial = calc.rem-euclid(dial + distance, 100)
      }

      if dial == 0 {
        count += 1
      }
    }

    count
  }

  let answer-2 = {
    let start = 50
    let dial = start
    let count = 0

    for rotation in rotations {
      let direction = rotation.at(0)
      if direction != "L" and direction != "R" {
        panic("Invalid direction: " + direction)
      }

      let distance = int(rotation.slice(1))
      if direction == "L" {
        let raw-stop = dial - distance
        if dial > 0 and raw-stop <= 0 {
          count += 1
        }

        count += calc.max(0, calc.div-euclid(raw-stop - 1, -100) - 1)
        dial = calc.rem-euclid(raw-stop, 100)
      } else {
        let raw-stop = dial + distance
        if dial < 0 and raw-stop >= 0 {
          count += 1
        }

        count += calc.div-euclid(raw-stop, 100)
        dial = calc.rem-euclid(raw-stop, 100)
      }
    }

    count
  }

  (answer-1, answer-2)
}

#answers
