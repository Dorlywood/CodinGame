import Glibc

public struct StderrOutputStream: OutputStreamType {
    public mutating func write(string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

/**
 * The while loop represents the game.
 * Each iteration represents a turn of the game
 * where you are given inputs (the heights of the mountains)
 * and where you have to print an output (the index of the mountain to fire on)
 * The inputs you are given are automatically updated according to your last actions.
 **/

// game loop
while true {
    var mountains = [Int]()
    for i in 0...7 {
        let mountainH = Int(readLine()!)! // represents the height of one mountain.
        mountains.append(mountainH)
    }

    var max = Int.min
    var chosenMountain = 0

    for i in 0...7 {
        if mountains[i] > max {
            max = mountains[i]
            chosenMountain = i
        }
    }

    // Write an action using print("message...")
    // To debug: debugPrint("Debug messages...", toStream: &errStream)

    print(chosenMountain) // The index of the mountain to fire on.
}
