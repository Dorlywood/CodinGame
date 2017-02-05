import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

var MIMETABLE = [String: String]()

let N = Int(readLine()!)! // Number of elements which make up the association table.
let Q = Int(readLine()!)! // Number Q of file names to be analyzed.
if N > 0 {
    for i in 0...(N-1) {
        let inputs = (readLine()!).characters.split{$0 == " "}.map(String.init)
        print(inputs, to:&errStream)
        let EXT = inputs[0].lowercased() // file extension
        let MT = inputs[1] // MIME type.
        MIMETABLE[EXT] = MT
    }
}

print("\nInput has been read\n", to:&errStream)

// For each of the Q filenames, display on a line the corresponding MIME type. If there is no corresponding type, then display UNKNOWN.

if Q > 0 {
    for i in 0...(Q-1) {
        let FNAME = readLine()! // One file name per line.
        let delimiter = "."
        let FCOMPONENTS = FNAME.components(separatedBy: delimiter)

        print(FCOMPONENTS, to:&errStream)

        if FCOMPONENTS.count == 1 {
            print("UNKNOWN")
        } else {
            let fileEXT = FCOMPONENTS.last!.lowercased()
            let printThis = MIMETABLE[fileEXT] ?? "UNKNOWN"
            print(printThis)
        }

    }
}
