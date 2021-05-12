gh-pages: gh-pages/inform7

gh-pages/inform7: Nuclear\ Power\ Plant.materials/Release
	rm -r gh-pages/inform7
	mkdir gh-pages/inform7
	cp -R Nuclear\ Power\ Plant.materials/Release/* gh-pages/inform7/

.PHONY: clean

clean:
	rm -r Nuclear\ Power\ Plant.materials/Release
