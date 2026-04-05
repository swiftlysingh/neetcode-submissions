class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {

        var visited = Array(repeating: Array(repeating: false, count: board[0].count), count: board.count)
        var directions = [(1,0),(-1,0),(0,1),(0,-1)]

        var word = Array(word)

        func backtrack(_ row : Int, _ col: Int, _ i: Int) -> Bool {
            if i == word.count { return true }

            if row < 0 || row >= board.count || col < 0 || col >= board[0].count || visited[row][col] { return false }

            if board[row][col] != word[i] { return false }
            
            var ans = false

            visited[row][col] = true

            for (dr,dc) in directions {
                var nr = dr + row
                var nc = dc + col
                
                ans = ans || backtrack(nr,nc,i+1)
            }

            visited[row][col] = false

            return ans

        }

        for i in 0..<board.count {
            for j in 0..<board[0].count {
                if board[i][j] == word[0] {
                    if backtrack(i,j,0) {
                        return true
                    }
                }
            }
        }

        return false
    }
}
