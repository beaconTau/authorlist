
.PHONY: all 

tgts=output/beacon_authors.html output/beacon_authors.txt output/beacon_authors_revtex.tex output/beacon_institutes_revtex.tex output/beacon_elsarticle_authors.tex output/beacon_pos_authors.tex

all: index.html 

clean: 
	@rm -rf output 
	@rm -f index.html 

$(tgts): authors.in institutes.in beacon_author_tool.py | output 
	@echo Running beacon_author_tool.py
	@./beacon_author_tool.py output/beacon_ 

output: 
	@mkdir -p $@

index.html: output/beacon_authors.html 
	@echo "<!DOCTYPE html><html><head><title>beacon Author List</title></head> <body><h1 align='center'>BEACON Author List</h1><hr/>" > $@
	@cat $^ >> $@ 
	@echo "</body></html>" >> $@
	@echo "Please considering committing/pushing your index.html if it differs from https://beaconTau.github.io/authorlist" 
	

