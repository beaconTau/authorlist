# BEACON Author List

This is a centralized store for BEACON author lists. 

There are two files used as input, authors.in and institutions.in

Running make will then generate the other files (using a python script). 

institutions.txt defines a mapping of institution id's to addresses in a |-separated manner, e.g., including an optional short name (used for PoS) 

`UC | Dept. of Physics, Enrico Fermi Inst., Kavli Inst. for Cosmological Physics, Univ. of Chicago, Chicago, IL 60637. | University of Chicago` 


The format of authors.txt is 


`NAME  | INSTITUTION_ID1 | [ INSTIUTION_ID2 | etc.. ] `

e.g. 

`C. Deaconu. | UC`


Output is generated in several formats: 

  - `beacon_revtex_authors.tex` and `beacon_revtex_institutes.txt` for use with revtex journals
  - `beacon_elsarticle_authors.tex` ` for use with elsevier journals
  -` beacon_pos_authors.tex` for use with PoS 
  - `beacon_authors.html` for web display, this is used to generate an index.html that we can use for gh-pages (you should commit this if it changed!) 
  - `beacon_authors.txt` for text

TODO:
  - `authors.xml` format for arxiv/inspirehep












