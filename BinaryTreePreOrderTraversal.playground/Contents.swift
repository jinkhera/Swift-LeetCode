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
class Solution {
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let node = root else {
            return [Int]()
        }
        
        var output = [Int]()
        
        
        
        return output
    }
}
