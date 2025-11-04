use context starter2024
data TaxonomyTree:
    node(rank :: String, name :: String, children :: List<TaxonomyTree>)
end
lion = node("Species","Panthera leo",[list: ])
tiger = node("Statistics","Panthera tigris",[list: ])
leopard = node("Species","Panthera pardus",[list: ])
panthera = node("Genus","Panthera",[list:lion,tiger,leopard])

house-cat = node("Species", "Felis catus", [list: ])
wildcat = node("Species", "Felis silvestris", [list: ])
felis = node("Genus", "Felis", [list: house-cat, wildcat])

felidae = node("Family", "Felidae", [list: panthera, felis])

fun count-nodes(t :: TaxonomyTree) -> Number:
  1 + count-nodes-children(t.children)
end

fun count-nodes-children(c :: List<TaxonomyTree>) -> Number:
  cases(List)c:
    |empty => 0
    |link(f,r) => count-nodes(f) + count-nodes-children(r)
  end
end

fun count-species(s :: TaxonomyTree) -> Number:
  if s.rank == "Species":
    1 + count-species-list(s.children)
  else:0
  end
end

fun count-species-list(l :: List<TaxonomyTree>) -> Number:
  cases(List)l:
    |empty => 0
    |link(f,r) => count-species(f) + count-species-list(r)
  end
end

count-species(felidae)