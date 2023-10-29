sig Bucket {
	head : lone Node
}

sig Node {
	key : one Key,
	prox : lone Node
}

sig Key {
	hash : one Hash
}

sig Hash {}

pred Invs {
  	//cada chave tem um nodo
    all k: Key | one n: Node | k = n.key

  	//cada nodo tem um bucket
    all n: Node | one b: Bucket | n in b.head.*(prox) or n in b.head
  
  	//o proximo nodo não vai ser ele próprio ou vai ser None/vazio
	all n : Node | n not in n.^(prox) or n.prox = none
  
  	//cada bucket tem hash diferentes entre si
  	all disj b1, b2: Bucket | some b1.head and some b2.head => b1.head.key.hash != b2.head.key.hash and (no b1.head.prox.*(key) & b2.head.prox.*(key))
  
  	//em cada bucket as hash são iguais sendo que as chaves são distintas
    all n1, n2: Node | some n2 => (n1 in n2.^prox => (n1.key.hash = n2.key.hash and n1.key != n2.key))
}