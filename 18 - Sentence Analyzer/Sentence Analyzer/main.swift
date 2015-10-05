
let arguments = Process.arguments

let sentence = arguments[1]

let sep: Character = " "

var charDict = [Character:Int]()
/*
for c in sentence.characters {
    if c != sep {
        if charDict.keys.contains(c) {
            charDict[c]!++
        }else {
            charDict[c] = 1
        }
    }
}
*/

for c in sentence.characters {
    switch c {
        case "a"..."z", "A"..."Z":
            if c != sep {
                if charDict.keys.contains(c) {
                    charDict[c]!++
                }else {
                    charDict[c] = 1
                }
            }
        default:
            break;
    }
}

for (key, name) in charDict {
    print("\(key): \(name)")
}