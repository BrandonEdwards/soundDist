
#Covariate values that came out:
"""
Catharus guttatus,0.0007019
Contopus virens,0.0003437
Hylocichla mustelina,0.0003286
Mniotilta varia,0.0006987
Pipilo erythrophthalmus,0.0003263
Piranga olivacea,0.0002674
Seiurus aurocapilla,0.0006148
Setophaga citrina,0.0005003
Setophaga pensylvanica,0.0005298
Setophaga virens,0.0005390
Vireo solitarius,0.0002910
"""

# RUN THE JUPYTER NOTEBOOK TO ADD THE COVARIATE VALUES

# Other covariates
alpha_0 <- -0.0002688748
alpha_1 <- -0.0012271

# Put the by-clip covariates in vectors
RSL_ijk <- clips2$corrected_dB_max
A_geo <- clips2$A_geo
A_atm <- clips2$A_atm
habitat_tree_cover <- clips2$habitat_tree_cover
f_i <- clips2$freq
d_ijk <- clips2$distance_m

# L_ijk = RSL_ijk + A_geo(d_ijk) + A_atm(d_ijk, f_i) + (alpha_0 + alpha_1 * habitat_tree_cover_ijk)*(f_i * d_ijk)
L <- RSL_ijk + A_geo + A_atm + (alpha_0 + alpha_1 * habitat_tree_cover)*(f_i * d_ijk)
hist(L)
```