echo "Building program 🔨"
say "Building program."
ocamlopt -o ./out/day1 day1.ml
ocamlopt -o ./out/day2 day2.ml
ocamlopt -o ./out/day3 day3.ml

echo "Cleaning the repository 🧹"
say "Cleaning."

file=".gitignore"
while read -r line; do
    echo "Looking for $line 🔍"
    if [ -d $line ]; then
      echo "Delete the file $line."
      rm -rf $line
    elif [[ (-f $line)
    && ($file == *.cmi)
    || ($file == *.o)
    || ($file == *.cmx)
    ]]; then
      find . -name "*.cmx" -delete -o -name "*.cmi" -delete  -o -name "*.o" -delete;
      rm $line | exit 0
      echo "Cleaning generated files $line."
    fi
done <$file
echo "Done ✅"
say "Repository cleaned."

cat .gitignore | sed '/^#.*/ d' | sed '/^\s*$/ d' | sed 's/^/git rm -r /' | bash



