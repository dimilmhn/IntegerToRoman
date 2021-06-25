
class DTMSolution {
    func intToRoman(_ num: Int) -> String {
        let romanData: [Int: String] = [1000: "M", 900: "CM", 500: "D", 400: "CD", 100: "C", 90: "XC", 50: "L", 40: "XL", 10: "X", 9: "IX", 5: "V", 4: "IV", 1: "I"]
        
        var reminder = num
        var romanNumber = ""
        
        for value in romanData.keys.sorted(by: >) {
            if reminder/value != 0 {
                for _ in 1...reminder/value {
                    romanNumber = romanNumber + (romanData[value] ?? "")
                }
            }
            
            reminder = reminder % value
            if reminder == 0 { break }
        }
        return romanNumber
    }
}
