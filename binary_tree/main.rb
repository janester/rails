require "pry"
require "pry-debugger"
require "pry-stack_explorer"

class Node
  attr_accessor :d, :p, :n
  def initialize(data)
    self.d= data
    self.p = self.n = nil
  end

  def to_s
    nxt = self.n.nil? ? "empty" : self.n.d
    prev = self.p.nil? ? "empty" : self.p.d
    "#{prev} <- #{self.d} -> #{nxt}"
  end
end

class Tree
  attr_accessor :root

  def insert(name, r=self.root)
    if self.root.nil?
      self.root = Node.new(name)
    else
      if r.d < name
        if r.n.nil?
          r.n = Node.new(name)
        else
          insert(name, r.n)
        end
      else
        if r.p.nil?
          r.p = Node.new(name)
        else
          insert(name, r.p)
        end
      end
    end
  end

  def find(name, r=self.root)
    if name == r.d
      return r
    else
      if r.d < name
        if r.n.nil?
          return "doesn't exist"
        else
          find(name, r.n)
        end
      else
        if r.p.nil?
          return "doesn't exist"
        else
          find(name, r.p)
        end
      end
    end

  end

  def delete(name)
  end

  def to_s
    unless self.root.nil?
      tree_list(self.root)
    else
      "empty"
    end
  end



  def tree_list(node)
    built_string = []
    unless node.p.nil?
      built_string << tree_list(node.p)
    end
    built_string << node.d
    unless node.n.nil?
      built_string << tree_list(node.n)
    end
    built_string.join(", ")
  end
end

binding.pry
