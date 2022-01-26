#! /bin/bash

mkdir $1
cd $1
mkdir images scripts styles
touch index.html
touch styles/style.css
touch scripts/script.js
echo "<!DOCTYPE html>" >> index.html
echo "<html>" >> index.html
echo "  <head>" >> index.html
echo "    <meta charset=\"utf-8\">" >> index.html
echo "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">" >> index.html
echo "    <link rel=\"stylesheet\" href=\"styles/style.css\">" >> index.html
echo "  </head>" >> index.html
echo "  <body>" >> index.html
echo "    <h1>If this is red, it's working.</h1>" >> index.html
echo "    <h2 id="test"> If this is blue, Javascript is working </h2>" >> index.html
echo "    <script src="scripts/script.js"></script>" >> index.html
echo "  </body>" >> index.html
echo "</html>" >> index.html
echo "h1 {color:red;}" >> styles/style.css

#test to see if javascript is working
cd scripts
echo " document.getElementById(\"test\").style.color = \"blue\";" >> script.js
cd ..
#initialize github repo
if [ $2 == "createGit" ]; then
	git -C $PWD init
	gh repo create $1 --$3 --source=$PWD
	git add --all
	git commit --all --message="project scaffold from cmd line"
	git push --all
else
	echo "No repo created" 
fi
