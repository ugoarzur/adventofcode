echo "Cleaning the repo 🧹"
# rm **/*.cmi
# rm **/*.cmx
# rm **/*.o

find . -type f -name "*.cmi" -exec rm {} \;
find . -type f -name "*.cmx" -exec rm {} \;
find . -type f -name "*.o" -exec rm {} \;

rm out/*