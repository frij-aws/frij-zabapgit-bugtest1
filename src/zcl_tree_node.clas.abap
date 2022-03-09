class ZCL_TREE_NODE definition
  public
  final
  create public .

public section.
*"* public components of class ZCL_TREE_NODE
*"* do not include other source files here!!!

  data AT_CHILDREN type ZNODE_TT .

  methods COUNT_CHILDREN
    returning
      value(OV_COUNT) type I .
protected section.
*"* protected components of class ZCL_TREE_NODE
*"* do not include other source files here!!!
private section.
*"* private components of class ZCL_TREE_NODE
*"* do not include other source files here!!!
ENDCLASS.



CLASS ZCL_TREE_NODE IMPLEMENTATION.


method COUNT_CHILDREN.
  data lo_child type ref to ZCL_TREE_NODE.
  ov_count = 0.
  loop at at_children into lo_child.
    ov_count = ov_count + lo_child->count_children( ).
  endloop.
endmethod.
ENDCLASS.
