//: Playground - noun: a place where people can play

// Definition for a binary tree node.
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

let root = TreeNode(1)
let two = TreeNode(2)

struct Queue<T> {
    fileprivate var queue = [T]()
    
    mutating func enqueue(_ item: T) {
        self.queue.insert(item, at: self.queue.count)
    }
    
    mutating func dequeue() -> T? {
        guard !isEmpty() else {
            return nil
        }
        return self.queue.remove(at: 0)
    }
    
    func count() -> Int {
        return self.queue.count
    }
    
    func isEmpty() -> Bool {
        return queue.count == 0
    }
}

class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let node = root else {
            return [[Int]]()
        }
        // has to be var at it's a struct, a value type
        var queue = Queue<TreeNode>()
        var output = [[Int]]()
        
        queue.enqueue(node)
        while !queue.isEmpty() {
            var levelNodes = [Int]()
            for _ in 1...queue.count() {
                let levelNode = queue.dequeue()
                levelNodes.append((levelNode?.val)!)
                if levelNode?.left != nil {queue.enqueue((levelNode?.left!)!)}
                if levelNode?.right != nil {queue.enqueue((levelNode?.right!)!)}
            }
            output.append(levelNodes)
        }
        return output
    }
}
