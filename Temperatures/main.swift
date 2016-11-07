import Glibc

public struct StderrOutputStream: OutputStreamType {
    public mutating func write(string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/

let n = Int(readLine()!)! // the number of temperatures to analyse
let temps = readLine()! // the n temperatures expressed as integers ranging from -273 to 5526

// --------------------------------------------------------- //
// ------------------ MY SOLUTION STARTS HERE -------------- //
// --------------------------------------------------------- //

let tempsList = temps.characters.split{$0 == " "}.map{Int(String($0)) ?? 0}

if tempsList.count == 0 {
    print(0)
    exit(0)
}

var closestToZero = Int.max

debugPrint("tempList = \(tempsList)", toStream: &errStream)

for temp in tempsList {
    if abs(temp - 0) < abs(closestToZero - 0) {
        closestToZero = temp
    } else if abs(temp - 0) == abs(closestToZero - 0) {
        closestToZero = max(temp, closestToZero)
    }
}

debugPrint("closestToZero = \(closestToZero)", toStream: &errStream)

print(closestToZero)
