# -*- coding: utf-8 -*-
#
# Factory to generate a name using Greek-oriented characters.

Factory.define :name_gr do
  ['α','β','γ','δ','ε','ζ','η','θ','ι','κ','λ','μ','ν','ξ','ο','π','ρ','ς','σ','τ','υ','φ','χ','ψ'].sample(rand(10)+20)
end

