class PrefixTree {         
    class Trie {
        var children: [Character: Trie]
        var endOfWord: Bool

        init() {
        self.children = [:]
        self.endOfWord = false
    }
    }     

    var trie : Trie     

    init() {
        self.trie = Trie()
    }            

    func insert(_ word: String) {
        var curr = trie

        for w in word {
            if curr.children[w] == nil  {
                curr.children[w] = Trie()
            }
            curr = curr.children[w]!
        }
        curr.endOfWord = true
    }

    func search(_ word: String) -> Bool {
        var curr = trie

        for w in word {
            if curr.children[w] == nil {
                return false
            }
            curr = curr.children[w]!
        }
        return curr.endOfWord
    }

    func startsWith(_ prefix: String) -> Bool {
        var curr = trie

        for pr in prefix {
            if curr.children[pr] == nil {
                return false
            }
            curr = curr.children[pr]!
        }
        return true
    }
}
