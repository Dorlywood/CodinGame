import Glibc

public struct StderrOutputStream: OutputStreamType {
    public mutating func write(string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 * ---
 * Hint: You can use the debug stream to print initialTX and initialTY, if Thor seems not follow your orders.
 **/

let inputs = (readLine()!).characters.split{$0 == " "}.map(String.init)
let lightX = Int(inputs[0])! // the X position of the light of power
let lightY = Int(inputs[1])! // the Y position of the light of power
let initialTX = Int(inputs[2])! // Thor's starting X position
let initialTY = Int(inputs[3])! // Thor's starting Y position

// %%%%%%%%%%%%%%%-------- MY CODE STARTS HERE ----------%%%%%%%%%%%%%%%
var deltaX = initialTX - lightX
var deltaY = initialTY - lightY
// %%%%%%%%%%%%%%%-------- MY CODE ENDS HERE ------------%%%%%%%%%%%%%%%

// game loop
while true {
    let remainingTurns = Int(readLine()!)!  // The remaining amount of turns Thor can move. Do not remove this line.

    // Write an action using print("message...")
    // To debug: debugPrint("Debug messages...", toStream: &errStream)
    // A single line providing the move to be made: N NE E SE S SW W or NW

    // %%%%%%%%%%%%%%%-------- MY CODE STARTS HERE ----------%%%%%%%%%%%%%%%
    debugPrint("deltaX=\(deltaX)", toStream: &errStream)
    debugPrint("deltaY=\(deltaY)", toStream: &errStream)

    // Negative deltaY means that light is below me, therefore I need to go south
    // Positive deltaY means that light is above me, therefore I need to go north
    // Negative deltaX means that light is to my right, therefore I need to go east
    // Positive deltaY means that light is to my left, therefore I need to go west

    if deltaY>0 && deltaX>0 {
        print("NW")
        deltaY-=1
        deltaX-=1
    } else if deltaY>0 && deltaX<0 {
        print("NE")
        deltaY-=1
        deltaX+=1
    } else if deltaY<0 && deltaX>0 {
        print("SW")
        deltaY+=1
        deltaX-=1
    } else if deltaY<0 && deltaX<0 {
        print("SE")
        deltaY+=1
        deltaX+=1
    } else if deltaY<0 {
        print("S")
        deltaY+=1
    } else if deltaY>0 {
        print("N")
        deltaY-=1
    } else if deltaX<0 {
        print("E")
        deltaX+=1
    } else if deltaX>0 {
        print("W")
        deltaX-=1
    }
    // %%%%%%%%%%%%%%%-------- MY CODE ENDS HERE ------------%%%%%%%%%%%%%%%
}
