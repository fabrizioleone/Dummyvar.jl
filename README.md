# Dummyvar

[![Build Status](https://github.com/fabrizioleone/Dummyvar.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/fabrizioleone/Dummyvar.jl/actions/workflows/CI.yml?query=branch%3Amain)

This Julia package allows to create a matrix of zeros and ones from a vector of groups. 

The input must be a Vector. The output matrix has a number of columns equal to the number of unique groups contained in the vector, and the ones indicate those groups. 

Examples:

```
using Dummyvar

dummy_create([1.0, 2.0])

2×2 Matrix{Float64}:
 1.0  0.0
 0.0  1.0

dummy_create(['a', 'b'])

2×2 Matrix{Float64}:
 1.0  0.0
 0.0  1.0
 
dummy_create([1, 'a', 'b'])

3×3 Matrix{Float64}:
 1.0  0.0  0.0
 0.0  1.0  0.0
 0.0  0.0  1.0
 
dummy_create([1, 1, 'a', 'b'])

4×3 Matrix{Float64}:
 1.0  0.0  0.0
 1.0  0.0  0.0
 0.0  1.0  0.0
 0.0  0.0  1.0

```

This function is inspired by the Matlab's function [dummyvar](https://www.mathworks.com/help/stats/dummyvar.html).
