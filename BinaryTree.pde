class BinaryTree
{
  private int content;
  private BinaryTree leftTree, rightTree;

  public BinaryTree(int c) {
    content = c;
  }   
    
  public boolean isLeaf() {
    if(this.getLeftTree() == null && this.getRightTree() == null) {
      return true;
    } else {
      return false;
    }
  }
 
  public void setItem(int content) {   
    this.content = content;
  }
    
   
  public int getValue() {
    return this.content;
  }

  public void setLeftTree(BinaryTree tree) {
    leftTree = tree;
  }
  
  public void setRightTree(BinaryTree tree) {
    rightTree = tree;
  }
  
  public BinaryTree getLeftTree() {
    return leftTree;
  }
   
  public BinaryTree getRightTree() {
    return rightTree;
  }      
    
  public void insert(int pItem) {
    if(this.content > pItem) {
      if(this.getLeftTree() != null) {
        this.getLeftTree().insert(pItem);
      }
      else {
        this.setLeftTree(new BinaryTree(pItem));
      }
    }
    else if(this.content < pItem) {
      if(this.getRightTree() != null) {
        this.getRightTree().insert(pItem);
      }
      else {
        this.setRightTree(new BinaryTree(pItem));
      }
    }
  }
    
  public void removeItem(int pItem) {
   // TODO
  }

  public int getNodeCount() {
    int sum = 1;
    
    if (this.getLeftTree() != null)  
       sum += getLeftTree().getNodeCount();
       
    if (this.getRightTree() != null)  
       sum += getRightTree().getNodeCount();
    
    return sum;
  }
  
  public int getDepth() {
    if(this.isLeaf())
      return 1;
    if(this.getLeftTree().getDepth() > this.getRightTree().getDepth())
      return this.getLeftTree().getDepth() + 1;
    else
      return this.getRightTree().getDepth() + 1;
  }
}