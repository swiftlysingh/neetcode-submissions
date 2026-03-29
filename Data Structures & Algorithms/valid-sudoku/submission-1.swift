class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var row = [Int:Set<Character>]()
        var col = [Int:Set<Character>]()
        var square = [String: Set<Character>]()


        for r in 0..<9 {
            for c in 0..<9 {
                let sqIndex = "\(r/3),\(c/3)"
                if board[r][c] == "." { continue }

                if row[r]?.contains(board[r][c]) == true || 
                   col[c]?.contains(board[r][c]) == true ||
                   square[sqIndex]?.contains(board[r][c]) == true {
                    return false 
                }

                row[r, default:[]].insert(board[r][c])
                col[c, default:[]].insert(board[r][c])
                square[sqIndex, default:[]].insert(board[r][c])
            }
        }

        return true
    }
}
