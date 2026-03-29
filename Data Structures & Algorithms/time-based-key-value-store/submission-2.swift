class TimeMap {
    
    struct DS {
        var value: String
        var time: Int
    }

    var ds : [String: [DS]]

    init() {
        self.ds = [String:[DS]]()
    }

    func set(_ key: String, _ value: String, _ timestamp: Int) {

        let new = DS(value: value, time: timestamp)
        if ds[key] != nil {
            ds[key]?.append(new)
        } else {
            ds[key] = [new]
        }
    }

    func get(_ key: String, _ timestamp: Int) -> String {

        if let thing = ds[key] {

            var left = 0
            var right = thing.count - 1
            var result = ""

            while left <= right {
                let mid = left + (right - left)/2

                if thing[mid].time == timestamp {
                    return thing[mid].value
                } else if thing[mid].time > timestamp {
                    right = mid - 1
                } else  {
                    result = thing[mid].value
                    left = mid + 1
                }
            } 

            return result

        }
        return ""
    }
}
