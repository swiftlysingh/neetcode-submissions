class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var row = [Int:Set<Character>]()
        var col = [Int:Set<Character>]()
        var block = [Int:Set<Character>]()


        for i in 0..<board.count {
            for j in 0..<board[i].count {
                if board[i][j] == "." { continue }

                var sqIndex = (i/3) * 3 + j/3

                if (row[i]?.contains(board[i][j]) ?? false) || 
                (col[j]?.contains(board[i][j]) ?? false) || 
                (block[sqIndex]?.contains(board[i][j]) ?? false) {
                    return false
                } 
                row[i, default: Set<Character>()].insert(board[i][j])
                col[j, default: Set<Character>()].insert(board[i][j])
                block[sqIndex, default: Set<Character>()].insert(board[i][j])
            }
        }

        return true
    }
}
