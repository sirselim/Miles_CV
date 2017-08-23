# Example script to generate HTML and push to local gh-pages directory.

#build site from markdown
jekyll build

# remove old files
rm -R ../sirselim.github.io/cv/*
rm -R ../personal_site/public/cv/*

# re-add new
#cp _site/index.html ../other/blmoore.github.io/cv/.
#cp -R _site/media ../other/blmoore.github.io/cv/.
cp _site/index.html ../sirselim.github.io/cv/
cp _site/index.html ../personal_site/public/cv/
cp _site/Miles_Benton_CV.pdf ../sirselim.github.io/cv/
cp _site/Miles_Benton_CV.pdf ../personal_site/public/cv/

