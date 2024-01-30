// Recall the hash table Alloy model,
// now with mutable lists inside the buckets.

sig Bucket {
	var head : lone Node
}
sig Node {
	key : one Key,
	var prox : lone Node
}
sig Key {
	hash : one Hash
}
sig Hash {}

// Specify the operation of inserting a node
// in the hash table. The node should be 
// inserted at the head of a bucket.
// If the operation only works well when the
// hash of the new node does not exist in the
// table you get Two points. If it always 
// works well you get Five points. Use the
// respective commands to check how many
// points you have.

pred insert[n : Node] {
  {
    //1º CASO CRIAR BUCKET - hash não existe na tabela

    //Guardas
    //1º Garantir que a hash do novo nodo não existe na Tabela
    n.key.hash not in (Bucket.head.key.hash+Bucket.head.*(prox.key.hash))

    //Effects
    //o head do Bucket vai ser o node n
    some b: Bucket { head' = head+b->n }
    //o prox vai ser igual já que só vai ter head(bucket novo)
    prox'=prox
  }
  or
  {
    //2º CASO CRIAR BUCKET - hash existe na tabela

    //Guardas
    //1º Garantir que a hash do novo nodo existe na Tabela
    n.key.hash in Bucket.head.key.hash
    //2º Garantir que o nó ainda não foi inserido
    n not in Bucket.head and n not in Bucket.head.^prox
    
    some b: Bucket {
      // a hash do head do bucket em que vai ser inserido o nodo vai ser o hash do nodo
      b.head.key.hash = n.key.hash
      // o novo estado do head vai constar o novo Node retirando o head do bucket do 
      //estado anterior
      head' = head + b->n - b->(b.head)
      // o novo estado do prox vai constar a head do bucket do estado anterior
      prox' = prox + n->(b.head)
    }
  }
}