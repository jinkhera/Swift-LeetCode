//: Playground - noun: a place where people can play

//Definition for a binary tree node.
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
class Solution {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let node = root else {
            return [Int]()
        }
        
        var output = [Int]()
        
        let left = inorderTraversal(node.left)
        output.append(contentsOf: left)
        output.append(node.val)
        let right = inorderTraversal(node.right)
        output.append(contentsOf: right)
        
        return output
        
    }
}
