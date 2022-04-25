echo "Building program 🔨"
say "Building program."
ocamlopt -o ./out/day1 day1.ml
ocamlopt -o ./out/day2 day2.ml
ocamlopt -o ./out/day3 day3.ml

echo "Cleaning the repository 🧹"
say "Cleaning."
find . -name "*.cmx" -delete -o -name "*.cmi" -delete  -o -name "*.o" -delete;

echo "Done ✅"
say "Repository cleaned."

ocaml