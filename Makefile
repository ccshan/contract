contract.vim: contractions.wiki
	./wiki2vim.px $< > $@

contractions.wiki:
	curl 'https://en.wikipedia.org/wiki/Wikipedia:List_of_English_contractions' -o $@
