ngrams.gfm: ngrams.md
	pandoc -o ngrams.gfm -f markdown-smart -t gfm ngrams.md

clean:
	rm -i ngrams.gfm
