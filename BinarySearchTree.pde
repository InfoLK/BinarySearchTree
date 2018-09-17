BinaryTree testbaum;

void setup() {
  surface.setVisible(false); 
  
  testbaum = generateMockTree();
  
  println("Node Count: " + testbaum.getNodeCount());
  println("Depth: " + testbaum.getDepth());
  
  exit();
}

public BinaryTree generateMockTree() {
  BinaryTree k = new BinaryTree(8);
  BinaryTree j = new BinaryTree(7);
  BinaryTree f = new BinaryTree(5);
  f.setLeftTree(k);
  f.setRightTree(j);
  BinaryTree e = new BinaryTree(1);
  BinaryTree b = new BinaryTree(2);
  b.setLeftTree(e);
  b.setRightTree(f);
  
  return b;
}