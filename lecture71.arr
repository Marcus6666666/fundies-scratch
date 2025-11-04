use context starter2024
data TaxonomyTree:
  node(rank :: String, name :: String, children :: List<TaxonomyTree>)
end

# Example: Part of the cat family
lion = node("Species", "Panthera leo", [list: ])
tiger = node("Species", "Panthera tigris", [list: ])
leopard = node("Species", "Panthera pardus", [list: ])
panthera = node("Genus", "Panthera", [list: lion, tiger, leopard])

house-cat = node("Species", "Felis catus", [list: ])
wildcat = node("Species", "Felis silvestris", [list: ])
felis = node("Genus", "Felis", [list: house-cat, wildcat])

felidae = node("Family", "Felidae", [list: panthera, felis])

fun count(t :: TaxonomyTree) -> Number:
  cases(TaxonomyTree)t:
    |node(rank,name,children) => count1 = if (t.rank == "Species"):1
      else:0
      end
      children-count = count-species(children)
      count1 + children-count
  end
end

fun count-species(l) -> Number:
  cases(List)l:
    |empty => 0
    |link(f,r) => count(f) + count-species(r)
  end
end
count(leopard)


