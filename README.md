# Dummyvar

[![Build Status](https://github.com/fabrizioleone/Dummyvar.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/fabrizioleone/Dummyvar.jl/actions/workflows/CI.yml?query=branch%3Amain)

This Julia package allows to create a matrix of zeros and ones from a vector of groups. It reproduces the Matlab's function [dummyvar](https://www.mathworks.com/help/stats/dummyvar.html).


The input type must be a Vector. The output matrix has a number of columns equal to the number of unique groups contained in the vector, and the ones indicate those groups. 

To use the package, type in the Julia REPL

```julia
Pkg.add("Dummyvar")
using Dummyvar
```

The function ```dummycreate``` creates the matrix of zeros and ones. Here are some examples


```julia
dummycreate([1.0, 2.0])

2×2 Matrix{Float64}:
 1.0  0.0
 0.0  1.0

dummycreate(['a', 'b'])

2×2 Matrix{Float64}:
 1.0  0.0
 0.0  1.0
 
dummycreate([1, 'a', 'b'])

3×3 Matrix{Float64}:
 1.0  0.0  0.0
 0.0  1.0  0.0
 0.0  0.0  1.0
 
dummycreate([1, 'a', 'b', 1])

4×3 Matrix{Float64}:
 1.0  0.0  0.0
 0.0  1.0  0.0
 0.0  1.0  0.0
 1.0  0.0  0.0

```

