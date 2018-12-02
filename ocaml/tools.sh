#!/bin/sh

set -eux

opam install merlin ocamlformat ocamlbuild

npm i -g ocaml-language-server
