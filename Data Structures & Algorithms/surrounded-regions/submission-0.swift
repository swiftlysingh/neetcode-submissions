class Solution {
    func solve(_ board: inout [[Character]]) {
        var border = [(Int,Int)]()

        for col in 0..<board[0].count {
            if board[0][col] == "O" {
                border.append((0,col))
            }
            if board[board.count - 1][col] == "O" {
                border.append((board.count-1,col))
            }
        }

        for row in 0..<board.count {
            if board[row][0] == "O" {
                border.append((row,0))
            }
            if board[row][board[0].count - 1] == "O" {
                border.append((row,board[0].count - 1))
            }
        }

        for (row,col) in border {
            dfs(row,col)
        }

        for row in 0..<board.count {
            for col in 0..<board[0].count {
                if board[row][col] == "O" {
                    board[row][col] = "X"
                }

                if board[row][col] == "#" {
                    board[row][col] = "O"
                }
            }
        }
        func dfs(_ row: Int, _ col: Int) {
            if row >= board.count || col >= board[0].count || row < 0 || col < 0 { return }

            if board[row][col] != "O" { return }

            board[row][col] = "#"

            dfs(row+1,col)
            dfs(row,col+1)
            dfs(row-1,col)
            dfs(row,col-1)
        }
    }

}
