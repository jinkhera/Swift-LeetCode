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

// Recursion (poor on memory), suggest using inout param and a seconf function
//called from first
//class Solution {
//    func preorderTraversal(_ root: TreeNode?) -> [Int] {
//        guard let node = root else {
//            return [Int]()
//        }
//
//        var output = [Int]()
//        output.append(node.val)
//        if node.left != nil {
//            var left = preorderTraversal(node.left)
//            output.append(contentsOf: left)
//        }
//        if node.right != nil {
//            var right = preorderTraversal(node.right)
//            output.append(contentsOf: right)
//        }
//
//        return output
//    }
//}

// Iteerative approach

// Needs a stack
struct Stack<T> {
    fileprivate var stack = [T]()
    
    mutating func push(_ value: T) {
        self.stack.append(value)
    }
    
    mutating func pop() -> T? {
        return self.stack.popLast()
    }
    
    mutating func peek() -> T? {
        return self.stack.last
    }
    
    func isEmpty() -> Bool {
        return stack.count == 0
    }
}


class Solution {
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let node = root else {
            return [Int]()
        }
        
        var output = [Int]()
        var stack = Stack<TreeNode>()
        stack.push(node)
        
        // as we do not know how many times we will iterate we need to use a
        //while loop
        
        // remember stack is Last In First Out (LIFO). Pre-order is node, left, right
        while !stack.isEmpty() {
            let n = stack.pop()
            if let value = n?.val {
                output.append(value)
            }
            if n?.right != nil {stack.push((n?.right)!)}
            if n?.left != nil {stack.push((n?.left)!)}
        }
        
        return output
    }
}
