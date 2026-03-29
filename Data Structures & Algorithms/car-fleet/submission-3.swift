class Solution {
    func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int {
        var car = zip(position,speed).sorted { $0.0 > $1.0 }

        var time = [Double]()

        for i in 0..<car.count {
            var currTime = Double((target-car[i].0))/Double(car[i].1)
            
            if time.isEmpty || time.last! < currTime {
                time.append(currTime)
            } 
        }

        return time.count 
    }
}
