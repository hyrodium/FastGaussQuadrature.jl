@doc raw"""
First twenty roots of Bessel funcion ``J_0`` in Float64.
https://mathworld.wolfram.com/BesselFunctionZeros.html

# Examples
```jldoctest
julia> zeros = besselj0.(FastGaussQuadrature.J0_roots);

julia> all(zeros .< 1e-14)
true
"""
const J0_roots = @SVector [
    2.4048255576957728,
    5.5200781102863106,
    8.6537279129110122,
    11.791534439014281,
    14.930917708487785,
    18.071063967910922,
    21.211636629879258,
    24.352471530749302,
    27.493479132040254,
    30.634606468431975,
    33.775820213573568,
    36.917098353664044,
    40.058425764628239,
    43.199791713176730,
    46.341188371661814,
    49.482609897397817,
    52.624051841114996,
    55.765510755019979,
    58.906983926080942,
    62.048469190227170,
]


@doc raw"""
Coefficients of Chebyshev series approximations for the zeros of the Bessel functions
```math
j_{\nu, s} \approx \sum_{k}^{n} C_{k,s} T_k(\frac{\nu-2}{3})
```
where $j_{\nu, s}$ is a ``s``-th zero of Bessel function ``J_\nu``, ``\{T_k\}`` are Chebyshev polynomials and ``C_{k, s}`` is the coefficients.
"""
const Piessens_C = @SMatrix [
       2.883975316228  8.263194332307 11.493871452173 14.689036505931 17.866882871378 21.034784308088
       0.767665211539  4.209200330779  4.317988625384  4.387437455306  4.435717974422  4.471319438161
      -0.086538804759 -0.164644722483 -0.130667664397 -0.109469595763 -0.094492317231 -0.083234240394
       0.020433979038  0.039764618826  0.023009510531  0.015359574754  0.011070071951  0.008388073020
      -0.006103761347 -0.011799527177 -0.004987164201 -0.002655024938 -0.001598668225 -0.001042443435
       0.002046841322  0.003893555229  0.001204453026  0.000511852711  0.000257620149  0.000144611721
      -0.000734476579 -0.001369989689 -0.000310786051 -0.000105522473 -0.000044416219 -0.000021469973
       0.000275336751  0.000503054700  0.000083834770  0.000022761626  0.000008016197  0.000003337753
      -0.000106375704 -0.000190381770 -0.000023343325 -0.000005071979 -0.000001495224 -0.000000536428
       0.000042003336  0.000073681222  0.000006655551  0.000001158094  0.000000285903  0.000000088402
      -0.000016858623 -0.000029010830 -0.000001932603 -0.000000269480 -0.000000055734 -0.000000014856
       0.000006852440  0.000011579131  0.000000569367  0.000000063657  0.000000011033  0.000000002536
      -0.000002813300 -0.000004672877 -0.000000169722 -0.000000015222 -0.000000002212 -0.000000000438
       0.000001164419  0.000001903082  0.000000051084  0.000000003677  0.000000000448  0.000000000077
      -0.000000485189 -0.000000781030 -0.000000015501 -0.000000000896 -0.000000000092 -0.000000000014
       0.000000203309  0.000000322648  0.000000004736  0.000000000220  0.000000000019  0.000000000002
      -0.000000085602 -0.000000134047 -0.000000001456 -0.000000000054 -0.000000000004               0
       0.000000036192  0.000000055969  0.000000000450  0.000000000013               0               0
      -0.000000015357 -0.000000023472 -0.000000000140 -0.000000000003               0               0
       0.000000006537  0.000000009882  0.000000000043  0.000000000001               0               0
      -0.000000002791 -0.000000004175 -0.000000000014               0               0               0
       0.000000001194  0.000000001770  0.000000000004               0               0               0
      -0.000000000512 -0.000000000752               0               0               0               0
       0.000000000220  0.000000000321               0               0               0               0
      -0.000000000095 -0.000000000137               0               0               0               0
       0.000000000041  0.000000000059               0               0               0               0
      -0.000000000018 -0.000000000025               0               0               0               0
       0.000000000008  0.000000000011               0               0               0               0
      -0.000000000003 -0.000000000005               0               0               0               0
       0.000000000001  0.000000000002               0               0               0               0
]


@doc raw"""
Values of Bessel function ``J_1`` on first ten roots of Bessel function `J_0`.

# Examples
```jldoctest
julia> roots = approx_besselroots(0,10);

julia> (besselj1.(roots)).^2 ≈ FastGaussQuadrature.besselJ1_10
true
```
"""
const besselJ1_10 = @SVector [
    0.2695141239419169,
    0.1157801385822037,
    0.07368635113640822,
    0.05403757319811628,
    0.04266142901724309,
    0.03524210349099610,
    0.03002107010305467,
    0.02614739149530809,
    0.02315912182469139,
    0.02078382912226786,
]


@doc raw"""
The first 11 roots of the Airy function in Float64 precision
https://mathworld.wolfram.com/AiryFunctionZeros.html

# Examples
```jldoctest
julia> zeros = airy.(FastGaussQuadrature.airy_roots);

julia> all(zeros .< 1e-14)
true
```
"""
const airy_roots = @SVector [
    -2.338107410459767,
    -4.08794944413097,
    -5.520559828095551,
    -6.786708090071759,
    -7.944133587120853,
    -9.022650853340981,
    -10.04017434155809,
    -11.00852430373326,
    -11.93601556323626,
    -12.828776752865757,
    -13.69148903521072,
]
