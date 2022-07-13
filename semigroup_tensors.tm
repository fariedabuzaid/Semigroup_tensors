<TeXmacs|2.1.1>

<style|<tuple|article|old-lengths>>

<\body>
  <doc-data|<doc-title|A Note on Kronecker Graphs, Semigroup Tensors and
  Uniformly Automatic Graphs >|<doc-author|<\author-data|<author-name|Faried
  Abu Zaid>>
    \;

    \;

    \;
  </author-data>>>

  <abstract-data|<\abstract>
    Kronecker graphs are defined by a system of tensor products of graphs
    from a small set of base graphs. In this note we point out an interesting
    connection to uniformly automatic classes of finite graphs. We show that
    both can be seen as systems of tensor products over semigroup actions.
    For actions on finite sets this calculus turns out to be equivalnet to
    uniformly automatic graphs. Inspired by stochastic Kronecker graphs we
    also define a stochastic version of uniformly automatic graphs. We close
    this note by stating a few questions, which arise from our
    considerations. \ \ 
  </abstract>>

  <section|Kronecker amd uniformly automatic graphs>

  We use the notation <math|<around*|[|n|]>> for the set
  <math|<around*|{|0,\<ldots\>,n-1|}>>. In the following we will use the term
  graphs to denote finite and directed graphs with loops.\ 

  For a quadratic <math|n\<times\>n> matrix
  <math|M=<around*|(|m<rsub|ij>|)><rsub|i,j\<in\><around*|[|n|]>>> and a
  subset <math|V\<subseteq\><around*|[|n|]>> let
  <math|M<rsub|V>=<around*|(|m<rsub|ij>|)><rsub|i,j\<in\>V>> be the submatrix
  over the rows an columns of <math|M>. Let <math|S> be a semigroup. For two
  matrices <math|M\<in\>S<rsup|k<rsub|1>\<times\>\<ell\><rsub|1>> >and
  <math|N\<in\>S<rsup|k<rsub|2>\<times\>\<ell\><rsub|2>>> the tensor product
  <math|M\<otimes\>N> is defined by\ 

  <\equation*>
    M\<otimes\>N\<assign\><matrix|<tformat|<table|<row|<cell|m<rsub|00>N>|<cell|\<cdots\>>|<cell|m<rsub|0<around*|(|\<ell\><rsub|1>-1|)>>N>>|<row|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|m<rsub|<around*|(|k<rsub|1>-1|)>0>N>|\<cdots\>|<cell|m<rsub|<around*|(|k<rsub|1>-1|)><around*|(|\<ell\><rsub|1>-1|)>>N>>>>>\<in\>S<rsup|k<rsub|1>\<cdot\>k<rsub|2>\<times\>\<ell\><rsub|1>\<cdot\>\<ell\><rsub|2>>.
  </equation*>

  If a semigroups acts on a set <math|Q> then a matrix
  <math|M\<in\>S<rsup|m\<times\>n >> defines a mapping

  <\equation*>
    M:Q\<rightarrow\>Q<rsup|m\<times\>n>;q
    \<mapsto\>M\<cdot\>q=<around*|(|m<rsub|ij>q|)><rsub|i\<less\>m,j\<less\>n>.
  </equation*>

  A matrix <math|M\<in\><around*|[|0,1|]><rsup|m\<times\>n>> defines a
  probability distribution <math|Ber<around*|(|M|)>> over
  <math|<around*|{|0,1|}><rsup|m\<times\>n>> in a natural way: For
  <math|N\<in\><around*|{|0,1|}><rsup|m\<times\>n>> each entry
  <math|n<rsub|ij>> is independantly Bernoully distributed with success
  probability <math|m<rsub|ij>>. For a quadratic matrix <math|M> over
  <math|<around*|[|0,1|]>>, <math|Ber<around*|(|M|)>> can be seen as a
  probability distribution over graphs by interpreting the outcome as an
  adjacency matrix.\ 

  <\definition>
    <dueto|Kronecker graphs <cite|leskovec_kronecker_2010>>Let
    <math|M<rsub|1>,\<ldots\>,M<rsub|k>> be quadratic
    <math|<around*|{|0,1|}>> matrices. The Kronecker graphs over
    \ <math|<around*|{|M<rsub|1>,\<ldots\>,M<rsub|n>|}>> are the graphs that
    can be represented by a adjecency matrix in the closure of
    <math|<around*|{|M<rsub|1>,\<ldots\>,M<rsub|n>|}>> under tensor products
    (over <math|<with|font|Bbb*|R>> with multiplication). A distribution that
    can be represented as a tensorproduct of <math|<around*|[|0,1|]>>
    matrices <math|M<rsub|1>,\<ldots\>,M<rsub|k>> is a stochastic Kronecker
    graph over <math|M<rsub|1>,\<ldots\>,M<rsub|k>>.
  </definition>

  Kronecker graphs are popular as a graph generation model in network science
  and machine learning. They are also widely used to create benchmarks. For
  instance, the largest graph benchmark in the world, the Graph500 benchmark
  for supercomputers, is based on stochastic Kronecker graphs. There are
  several reasons for the popularity of this model. The most important are
  probably:

  <\itemize-dot>
    <item>The tensor product on graphs is well understood and allows the
    construction of large and highly complex graphs by specifying just a
    small amount of information.

    <item>It is possible to construct Kronecker graphs that have statistical
    properties similar to the ones found in many real world networks, for
    example a powerlaw degree distributionis. Most basic distributions on
    graphs such as the Erd®s-Rényi graphs generate binomal degree
    distributions. Additionally it is possible to learn the values of the
    base matrices from data in oder to adjust the distributions to specific
    scenarios.

    <item>The generation of large graphs using the tensor product is highly
    parallelizable. Graph500 contains graphs with up to <math|2<rsup|42>>
    vertices. These graphs need to be created in parallel on millions of
    CPUs. For Kronecker graphs each entry of the adjecancy matrix can be
    computed by a seperate process without the need for intercommunication.\ 
  </itemize-dot>

  As we will see, Kronecker graphs and tensor products are intimitely realted
  to uniformly automatic presentations. We just briefly recall the main
  definitions of automata with advice and automatic presentations here. \ \ 

  <\definition>
    Let <math|\<Sigma\>>, \<Gamma\> be alphabets. For two words of same
    length <math|a<rsub|0>\<ldots\>a<rsub|n-1>> and
    <math|b<rsub|0>\<ldots\>b<rsub|n-1>> the convolution is defined as

    <\equation*>
      a<rsub|0>\<ldots\>a<rsub|n-1>\<oplus\>b<rsub|0>\<ldots\>b<rsub|n-1>=<around*|(|a<rsub|0>,b<rsub|0>|)>\<ldots\><around*|(|a<rsub|n-1>,b<rsub|n-1>|)>\<in\><around*|(|\<Sigma\>\<times\>\<Gamma\>|)><rsup|n>.
    </equation*>

    <math|> The (universal) <math|n>-state advice automaton over
    <math|\<Sigma\>> is the advice automaton
    <math|<with|font|cal|A><rsub|\<Sigma\><rsup|>><rsup|n>> with state set
    <math|<around*|[|n|]>>, advice set <math|<around*|[|n|]><rsup|<around*|[|n|]>\<times\>\<Sigma\>>>
    and initial and acceptance set <math|<around*|{|0|}>> such that

    <\equation*>
      \<delta\><rsub|<with|font|cal|A<rsup|><rsub|>><rsub|\<Sigma\>><rsup|n>><around*|(|i,<around*|(|\<theta\>,a|)>|)>=\<theta\><around*|(|i,a|)>
    </equation*>

    for all <math|i\<in\><around*|[|n|]>>,
    <math|\<theta\>>\<in\><math|<around*|[|n|]><rsup|<around*|[|n|]>\<times\>\<Sigma\>>>,
    <math|a\<in\>\<Sigma\>>. The language recognized by
    <math|<with|font|cal|A><rsup|n><rsub|\<Sigma\>>> with advice
    <math|\<alpha\>\<in\>><math|<around*|(|<around*|[|n|]><rsup|<around*|[|n|]>\<times\>\<Sigma\><rsup|>>|)><rsup|k>>
    is\ 

    <\equation*>
      L<around*|(|<with|font|cal|A><rsup|n><rsub|\<Sigma\>><around*|[|\<alpha\>|]>|)>=<around*|{|w\<in\>\<Sigma\><rsup|k>\<mid\>\<delta\><rsup|\<ast\>><rsub|A<rsup|U><rsub|\<Sigma\>>><around*|(|0,\<alpha\>\<oplus\>w|)>=0<rsup|**>|}>.
    </equation*>
  </definition>

  <\definition>
    The uniformly <math|<around*|(|m,n|)>>-automatic graphs over
    <math|\<Sigma\>> are the graphs that can be generated by the universal
    automatic presentation <math|<with|font|Euler|c<rsub|\<Sigma\>>><rsup|m,n>=<around*|(|<with|font|cal|A><rsub|\<Sigma\>><rsup|m>,<with|font|cal|A<rsup|><rsub|>><rsup|n><rsub|\<Sigma\>\<times\>\<Sigma\>>|)>>.
    We say that a graph <math|G> can be generated by
    <math|<with|font|Euler|c<rsub|\<Sigma\>>><rsup|m,n>> if there exists a
    <math|k\<gtr\>0> and <math|\<alpha\><rsub|V>\<in\><around*|(|<around*|[|n|]><rsup|<around*|[|n|]>\<times\>\<Sigma\>>|)><rsup|k>>,
    <math|\<alpha\><rsub|E>\<in\><around*|(|<around*|[|n|]><rsup|<around*|[|n|]>\<times\>\<Sigma\><rsup|>\<times\>\<Sigma\>>|)><rsup|k>>
    such that <math|G> is isomorphic to the graph <math|<around*|(|V,E|)>>
    with

    <\eqnarray*>
      <tformat|<table|<row|<cell|V>|<cell|=>|<cell|L<around*|(|<with|font|cal|A><rsub|\<Sigma\>><rsup|m><around*|[|\<alpha\><rsub|V>|]>|)>>>|<row|<cell|E>|<cell|=>|<cell|<around*|{|<around*|(|v,w|)>\<mid\>v\<oplus\>w\<in\>L<around*|(|<with|font|cal|A<rsup|><rsub|>><rsup|n><rsub|\<Sigma\>\<times\>\<Sigma\>><around*|[|\<alpha\><rsub|E>|]>|)>|}>\<cap\><around*|(|L<around*|(|<with|font|cal|A><rsub|\<Sigma\>><rsup|m><around*|[|\<alpha\><rsub|V>|]>|)>\<times\>L<around*|(|<with|font|cal|A><rsub|\<Sigma\>><rsup|m><around*|[|\<alpha\><rsub|V>|]>|)>|)>.>>>>
    </eqnarray*>
  </definition>

  Note that we define classes of uniformly <math|>automatic graphs using
  universal presentations which differs slightly from the common definition
  in the literature. The reader who is familiar with the topic of uniformly
  automatic presentations can easily convince himself that each uniformly
  autimatic presentation of graphs can be obtained by restricting the advice
  set of some uniformly <math|<around*|(|m,n|)>>-automatic presentation.
  automatic structures are widely known for their good algorithmic properties
  with respect to model theoretic decision problems. For instance, the
  first-order theory of the <math|<around*|(|m,n|)>>-automatic graphs is
  decidable for every <math|m,n>. Additionally, the data complexity of the
  first-order model checking problem is becomes linear if a graph is given by
  an advice string of some fixed presentation.

  <section|Semigroup tensor presentations>

  <\definition>
    Let <math|S> be a semigroup that acts on a set <math|Q> with a fixed
    element <math|q<rsub|0>\<in\>Q>. A tensor presentation over the semigroup
    <math|S> consists of a finite number of pairs
    <math|<around*|(|V<rsub|0>,M<rsub|0>|)>,\<ldots\>,<around*|(|V<rsub|k-1>,M<rsub|k-1>|)>\<in\>S<rsup|n<rsub|i>>\<times\>S<rsup|n<rsub|i>\<times\>n<rsub|i>>>
    together with a function <math|f:Q\<rightarrow\><around*|[|0,1|]>>. A
    word <math|\<alpha\>=a<rsub|0>\<ldots\>a<rsub|\<ell\>-1>\<in\><around*|[|k|]><rsup|+>>
    presents a distribution on graphs in the following way: Let
    <math|V=V<rsub|a<rsub|\<ell\>-1>>\<otimes\>V<rsub|a<rsub|\<ell\>-2>>\<otimes\>\<cdots\>\<otimes\>V<rsub|a<rsub|0>>\<in\>S<rsup|<big|prod><rsub|i\<less\>\<ell\>>n<rsub|a<rsub|i>>>>
    and \ <math|M=M<rsub|a<rsub|\<ell\>-1>>\<otimes\>M<rsub|a<rsub|\<ell\>-2>>\<otimes\>\<cdots\>\<otimes\>M<rsub|a<rsub|0>>\<in\>S<rsup|<around*|(|<big|prod><rsub|i\<less\>\<ell\>>n<rsub|a<rsub|i>>|)>\<times\><around*|(|<big|prod><rsub|i\<less\>\<ell\>>n<rsub|a<rsub|i>>|)>>>.
    Then the distribution defined by <math|\<alpha\>> is given by the
    following SCM

    <\eqnarray*>
      <tformat|<table|<row|<cell|W>|<cell|=>|<cell|<with|font-family|rm|Ber><around*|(|f
      V*q<rsub|0>|)>>>|<row|<cell|N>|<cell|=>|<cell|<with|font-family|rm|Ber><around*|(|f
      M*q<rsub|0>|)>>>|<row|<cell|M<rsub|G>>|<cell|=>|<cell|N<rsub|W>.>>>>
    </eqnarray*>

    In other words, we first draw <math|v> and <math|m> from
    <math|<with|font-family|rm|Ber><around*|(|f V*q<rsub|0>|)>> and
    <math|<with|font-family|rm|Ber><around*|(|f M*q<rsub|0>|)>> and then
    obtain the adjacency matrix <math|N<rsub|W>>. Note that we treat
    <math|<with|font-family|rm|Ber><around*|(|f M*q<rsub|0>|)>> as a
    propability distribution over <math|2<rsup|<around*|[|n|]>>> where each
    <math|i> is independantly added with probability <math|V<rsub|i>>. If
    <math|f> does not induce randomness, i.e. if
    <math|f:Q\<rightarrow\><around*|{|0,1|}>>, we say that a graph <math|G>
    is generated by <math|\<alpha\>> in the presentation, if
    <math|<around*|(|f*M*q<rsub|0>|)>\<setminus\><around*|(|f*V*q<rsub|0>|)>>
    an adjecency matrix for <math|G>.
  </definition>

  Next, we show that Kronecker graphs and uniformly automatic graphs are both
  direct instances of tensor product presentations.

  <\example>
    Every Kronecker graph class has a semigroup tensor presentation. Choose
    <math|S> to be <math|<around*|{|0,1|}>> with multiplication for
    deterministic Kronecker graphs and <math|<around*|[|0,1|]>> with
    multiplication for stochastic Kronecker graphs. In both cases <math|S>
    acts on itself. The matrices <math|M<rsub|1>,\<ldots\>,M<rsub|k>>,
    <math|M<rsub|i>\<in\>S<rsup|n<rsub|i>\<times\>n<rsub|i>>>, of the
    Kronecker are translated into pairs <math|<around*|(|1<rsup|n<rsub|1>>,M<rsub|1>|)>,\<ldots\>,<around*|(|1<rsup|n<rsub|k>>,M<rsub|k>|)>>
    and the function <math|f> is simply the indenty function.
  </example>

  <\example>
    The class of uniformly (<math|n,n>)-automatic graphs over
    <math|<around*|{|0,1|}>> has a semigroup tensor presentation.

    To see this, set <math|S=<around*|[|n|]><rsup|<around*|[|n|]>>> and let
    it act on <math|<around*|[|n|]>> in the natural way. The presentation
    consists of all pairs in <math|> <math|(<math|<around*|[|n|]><rsup|<around*|[|n|]>>>)<rsup|2>\<times\><around*|(|<around*|[|n|]><rsup|<around*|[|n|]>>|)><rsup|2\<times\>2>>.
    The function <math|f> maps <math|0> to <math|1> and everything else to
    <math|0>.\ 

    To see that this presentation generates exacly the uniformly
    <math|n>-automatic graphs consider the bijection <math|\<nu\>:>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|[|n|]><rsup|<around*|[|n|]>\<times\><around*|{|0,1|}><rsup|>>\<times\><around*|[|n|]><rsup|<around*|[|n|]>\<times\><around*|{|0,1|}><rsup|2>>>|<cell|\<rightarrow\>>|<cell|(<math|<around*|[|n|]><rsup|<around*|[|n|]>>>)<rsup|2>\<times\><around*|(|<around*|[|n|]><rsup|<around*|[|n|]>>|)><rsup|2\<times\>2>
      ;>>|<row|<cell|<around*|(|c<rsub|0>,c<rsub|1>|)>>|<cell|\<mapsto\>>|<cell|<around*|(|<matrix|<tformat|<table|<row|<cell|c<rsub|0><around*|(|\<cdot\>,0|)>>>|<row|<cell|c<rsub|0><around*|(|\<cdot\>,1|)>>>>>>,<matrix|<tformat|<table|<row|<cell|c<rsub|1><around*|(|\<cdot\>,<around*|(|0,0|)>|)>>|<cell|c<rsub|1><around*|(|\<cdot\>,<around*|(|0,1|)>|)>>>|<row|<cell|c<rsub|1><around*|(|\<cdot\>,<around*|(|1,0|)>|)>>|<cell|c<rsub|1><around*|(|\<cdot\>,<around*|(|1,1|)>|)>>>>>>|)>.>>>>
    </eqnarray*>

    It is sufficient to show that for every advice
    <math|\<alpha\>=\<alpha\><rsub|V>\<oplus\>\<alpha\><rsub|E>=\<alpha\><rsub|0>\<ldots\>\<alpha\><rsub|k-1>\<in\><around*|(|<around*|[|n|]><rsup|<around*|[|n|]>\<times\><around*|{|0,1|}><rsup|>>\<times\><around*|[|n|]><rsup|<around*|[|n|]>\<times\><around*|{|0,1|}><rsup|2>>|)><rsup|+>>
    the graph presented by <math|\<alpha\>> in
    <math|<with|font|Euler|c><rsub|\<Sigma\>><rsup|m>> is isomorphic to the
    graph presented by <math|\<nu\><around*|(|\<alpha\>|)>=\<nu\><around*|(|\<alpha\><rsub|0>|)>\<ldots\>\<nu\><around*|(|\<alpha\><rsub|k-1>|)>>
    in the semigroup tensor presentation.\ 

    This can be proven via induction over the length of <math|\<alpha\>>.
    Write <math|\<nu\><around*|(|\<alpha\><rsub|i>|)>=<around*|(|V<rsub|i>,M<rsub|i>|)>>
    and let the fuction <math|<with|font-family|rm|bin><rsub|k>:<around*|[|2<rsup|k>|]>\<rightarrow\><around*|{|0,1|}><rsup|k>>
    map each number smaller <math|2<rsup|k>> to its
    least-significant-bit-first length <math|k> binary presentation. Now let
    <math|><math|V=<around*|(|v<rsub|i>|)><rsub|i\<in\><around*|[|2<rsup|k>|]>>:=V<rsub|k-1>\<otimes\>\<cdots\>\<otimes\>V<rsub|0>>
    and <math|M=<around*|(|m<rsub|ij>|)><rsub|i,j\<in\><around*|[|2<rsup|k>|]>>:=M<rsub|k-1>\<otimes\>\<cdots\>\<otimes\>M<rsub|0>>.
    One shows that <math|v<rsub|i>q<rsub|0>=\<delta\><rsub|<with|font|cal|A<rsup|><rsub|>><rsub|\<Sigma\>><rsup|n,n>><rsup|*\<ast\>><around*|(|0,\<alpha\><rsub|V>\<oplus\><with|font-family|rm|bin><rsub|k><around*|(|i|)>|)>>
    and <math|m<rsub|ij>q<rsub|0>=\<delta\><rsub|<with|font|cal|A<rsup|><rsub|>><rsub|\<Sigma\>\<times\>\<Sigma\>><rsup|n,n>><rsup|*\<ast\>><around*|(|0,\<alpha\><rsub|E>\<oplus\><with|font-family|rm|bin><rsub|k><around*|(|i|)>\<oplus\><with|font-family|rm|bin><rsub|k><around*|(|j|)>|)>>.
    That means <math|V> and <math|M> are tables that track the final state of
    the run of the respective automaton on each possible combination of words
    of length <math|k>. Once established it follows that
    <math|f*v<rsub|i>*0<rsub|>=1> iff <math|<with|font-family|rm|bin<rsub|k><around*|(|i|)>>\<in\>L<around*|(|<with|font|cal|A<rsup|><rsub|>><rsub|\<Sigma\>><rsup|n,n><around*|[|\<alpha\><rsub|V>|]>|)>>
    and <math|f*m<rsub|ij>*0<rsub|>=1> iff
    <math|<with|font-family|rm|bin<rsub|k><around*|(|i|)>>\<in\>L<around*|(|<with|font|cal|A<rsup|><rsub|>><rsub|\<Sigma\>\<times\>\<Sigma\>><rsup|n,n><around*|[|\<alpha\><rsub|E>|]>|)>>.
    But that means that the graph generated by alpha is isomorphic to the
    graph that is represented by <math|M<rsub|V>>.
  </example>

  The construction in the previous example already hints towards a more
  fundamental connection between semigroup tensor presentations and uniformly
  automatic presentations. In fact, it is not hard to see now that the
  following version of a converse statement is true.

  <\theorem>
    If <math|S> acts on a finite set <math|Q> and <math|f> does not introduce
    randomness then the graphs that can be presented using base pairs in
    <math|S<rsup|n>\<times\>S<rsup|n\<times\>n>> are exactly the
    <math|<around*|(|<around*|\||Q|\|>,<around*|\||Q|\|>|)>>-automatic graphs
    over <math|<around*|[|n|]>>.\ 
  </theorem>

  Example 6 and Theorem 7 demonstrated that there is a direct correspondence
  between tensor products of semigroup actions on finite sets and automata
  operating on convolutions of words of same length. Note that we made
  restrictons in the previous statements like setting <math|m=n> for the
  <math|<around*|(|m,n|)>>-automatic presentations in Example 6 or
  restricting the base pairs to <math|S<rsup|n>\<times\>S<rsup|n\<times\>n>>
  in Theorem <math|7>. These restrictions are not really crucial but
  circumvent certain technicalities that we do not want to address here. Also
  the restriction to graphs is not strictly mandatory. We can easily extend
  the semigroup tensor product calculus to arbitrary <math|k>-ary relations
  in the obvious way and similar statements to the previous ones would still
  be true.

  Finally we want to point out one variation of uniformly automatic
  presentations that is inspired by the outlined connections between
  Kronecker graphs and uniformly automatic graphs.\ 

  <\example>
    Inspired by the stochastic Kronecker graphs, we replace the function
    <math|f> in the tensor product presentation of the
    <math|<around*|(|n,n|)>>-automatic graphs with a function
    <math|g:Q<rsub|>\<rightarrow\><around*|[|0,1|]>>. In the automata
    framework this simply corresponds to replacing the acceptence set by a
    function <math|Q\<rightarrow\><around*|[|0,1|]>.> Note that in contrast
    to Kronecker graphs we will only have probabilities from a fixed set in
    our matrix but in exchange for that are able to distribute these values
    in a much more compex way throughout the matrix. Since the properties of
    tensor products can be simulated by automata it is even possible to
    generate distributions with the same good properties as known from
    Kronecker graphs. It would be interesting to see whether these models are
    even better suited to simulate the structure of things like social
    networks or protein interactions.
  </example>

  <section|Questions and firther directions>

  <subsection|Graph generative models>

  <\itemize-dot>
    <item>GFlowNets <cite|bengio_flow_2021> have recently drawn a lot of
    attention as a novel way to build deep generative models for discrete
    objects. The above mentioned decomposition techniques are equally well
    suited to provide composition operations for a generative process. Tree
    decompositions have been successfully applied in combination with
    variational autoencoders as generative model for molecules
    <cite|jin_junction_2018>. Here the autoencoder is trained to produce
    iteratively a tree decomposition that represents a graph with some
    desierable properties. Tree decompositions are extemely well suited for
    representing molecules as most molecules used in the pharmacological
    context today have treewidth of at most 5. Tree decompositions provide a
    model of how to construct graphs and an autoencoder is trained to learn a
    policy within this framework. The restriction to a graph class that is
    structurally already quite close to real molecules \ makes it easier for
    the model to learn how to construct correct molecules.\ 

    However, most of the graph classes that are encountered in practice do
    not have low treewidth. Therefore it could be interesting to consider
    more powerful composition mechanism as basis for a generative model.
    Semigroup tensors and especially automatic presentations could be
    candidates for such a formalism.

    Graph generative models are of high sciemtific value. Simulations are
    becoming more imoprtant to understand phenomena such as desease
    spreading. It is therefore neccessary to have flexible models for graph
    generation.\ 

    I belief that the proposed generation process is also interesting from a
    computational point of view. The process can be highly parallelized which
    allows the construction of massive synthetic graphs, e.g. for social
    network simulation. Especially from this point of view, my work in
    <cite|zaid_uniformly_2018> might be useful. The uniformly automatic
    classes that I have considered in this work are highly related to the
    popular Kronecker graph model. Both can be expressed as a system of
    tensorproducts over a certain semi-group. I have already worked out some
    of the details of this fact and I would like to develop it further.\ 

    <item>Also learning the base pairs of a presentation could be
    interesting. As mentioned previously, learning the base matrix for
    Kronecker graphs has already been successfully demonstrated and applied.

    <item>GFlowNets <cite|bengio_flow_2021> may be an interesting way to
    sample the advice of a presentation.

    \;
  </itemize-dot>

  <section|Some more TCS like questions>

  <subsection|Stochastic uniformly automatic graphs>

  <\itemize-dot>
    <item>We consider the problem of computing
    <math|p<rsub|<with|font-family|rm|Ber><around*|(|M|)>><around*|(|G\<models\>\<varphi\>|)>>,
    the probabilty of a first-order sentence <math|\<varphi\>> is true in a
    graph drawn from <math|<with|font-family|rm|Ber<around*|(|M|)>>>. Assume
    <math|M> is given as the advice of some stochastic uniformly automatic
    presentation. Can we efficently compute
    <math|p<rsub|<with|font-family|rm|Ber><around*|(|M|)>><around*|(|G\<models\>\<varphi\>|)>>?\ 

    <item>We consider the problem of maximizing the probability of a
    first-order sentence, i.e. we are looking for an advice such that the
    probability that a given FO-sentence is true is as high as possible. Is
    it possible to compute an advice that (approximately) maximizes the
    probability of a given FO-sentence?

    <item>Say we fix an infinite advice string <math|\<alpha\>>. We say that
    an FO-sentence <math|\<varphi\>> converges on <math|\<alpha\>> if
    <math|lim<rsub|n\<rightarrow\>\<infty\>>p<rsub|<with|font-family|rm|Ber><around*|(|M<rsub|\<alpha\><around*|[|0:m|)>>|)>><around*|(|G\<models\>\<varphi\>|)>=c>
    for some constant <math|c>. Given that <math|\<alpha\>> is ultimately
    periodic (or has a decidable MSO theory), can we decide if a given
    sentence converges on <math|\<alpha\>>? Note that we use the expression
    <math|p<rsub|<with|font-family|rm|Ber><around*|(|M<rsub|\<alpha\><around*|[|0:m|)>>|)>>>
    to describe the distribution defined by the advice
    <math|\<alpha\><around*|[|0:m|)>>.
  </itemize-dot>

  \;

  <subsection|Tensor Product Presentation >

  <\itemize-dot>
    <item>For which semigroups do deterministic tensor product presentations
    lead to a decidable first-order theory?

    <\itemize-dot>
      <item>Semigroups acting on finite sets are essentially uniformly
      automatic presentations and hence always posses a decidable first order
      theory. But can we say anything beyond that?
    </itemize-dot>

    <item>Maybe the theory of deterministic weighted automata is useful to
    answer this question.
  </itemize-dot>

  <\bibliography|bib|tm-plain|bibliography>
    <\bib-list|1>
      <bibitem*|1><label|bib-bengio_flow_2021>Emmanuel Bengio, Moksh Jain,
      Maksym Korablyov, Doina Precup<localize|, and >Yoshua Bengio.
      <newblock>Flow Network based Generative Models for Non-Iterative
      Diverse Candidate Generation. <newblock><localize|In
      ><with|font-shape|italic|Advances in Neural Information Processing
      Systems>, <localize|volume><nbsp>34, <localize|pages >27381\U27394.
      Curran Associates, Inc.<newblock>
    </bib-list>
  </bibliography>
</body>

<\initial>
  <\collection>
    <associate|page-medium|papyrus>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|3.1|4>>
    <associate|auto-5|<tuple|4|4>>
    <associate|auto-6|<tuple|4.1|4>>
    <associate|auto-7|<tuple|4.2|?>>
    <associate|auto-8|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|bib-bengio_flow_2021|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      leskovec_kronecker_2010

      jin_junction_2018

      bengio_flow_2021
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Kronecker
      Graphs and Uniformly Automatic Graphs>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Semigroup
      Tensor Presentations > <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Questions
      and Further Directions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Machine Learning
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Stochastic Uniformly
      Automatic Graphs <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Tensor Product Presentation
      \ <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>