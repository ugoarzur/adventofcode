# Advent Of Code
Advent of Code to step-up with OCaml. I aim to build solutions with OCaml.

## Code
- The main code is in root folder.
- `Out/` is for compilation
- `utop/` is to test some code
- `clean.sh` is to clean the repos of generated files.

You might find some (lost) javascript files around here, it's just to scratch some algos.

## OCaml Installation
### Ocaml & Opam installation
- `Ocaml` : This is the package allowing you to code with OCaml language.
- `Opam` : Install the utop utility to add utility packages to work with OCaml.
```bash
brew update        # Update your brew packages
brew install ocaml # Install OCaml language pack
brew install opam  # Install Opam packages manager
```
> This might take a bit of time ⚠️


### Utop installation
Install the `utop` utility to add utility packages to work with `OCaml`.
```bash
opam install utop # Install an interactive REPL in your terminal
```
You can type `utop` in terminal and try the following commands:
|Utop Command|Description|
|--|--|
|`#use "<filename>.ml";;`|Import the OCaml file content in `utop` to use functions.|
|`#help;;`|Display all the commands for utop|
|`#trace <function>;;`|Put a tracker on a function|
|`#untrace <function>;;`|Remove the tracker you put on a function|
|`#quit;;`|Quit `utop` *(shortcut known : `ctrl+d`).*|

### Merlin
Wether you use Vim, Emacs, VSCode, etc you want some hints on your code __*before*__ it goes wrong.

That is why [Merlin](https://github.com/ocaml/merlin) is for in OCaml ecosystem.
To install it you will use these following commands:
```bash
opam install merlin
opam user-setup install # Update the configs
```
Restart your editor and enjoy the hints.

### Auto-indent
```bash
opam install ocp-indent # Package to auto-indent OCaml code
opam user-setup install # Update the configs
```

## Compilation
To compile OCaml code you can use the following command:
```bash
ocamlopt -o ./out/day1 day1.ml
```
This will generate files in `out/`
```bash
day1.cmi # ?
day1.cmx # ?
day1.o   # ?
day1     #You can run your program using ./day1
```

## Cleaning
`./clean.sh` to clean the noise

# Resources
I am following [the excellent videos series on OCaml from Michael Ryan Clarkson](https://www.youtube.com/watch?v=MUcka_SvhLw&list=PLre5AT9JnKShBOPeuiD9b-I4XROIJhkIU)