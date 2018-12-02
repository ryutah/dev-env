#!/bin/sh

set -eux

rustup component add rls-preview rust-analysis rust-src rustfmt-preview --toolchain stable
