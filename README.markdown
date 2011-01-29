# vim-pset #

## Overview ##

This is a short Vim plugin to generate a LaTeX template like the following,
given a set of numbers representing the problems you need to do.

    \begin{probset}

        \prob{26}

        \prob{28}

        % ...

    \end{pset}

## Usage ##

Generating the template is done with the `:Pset` Vim command that takes a space
separated list, for example `:Pset 26 28 30 40 44`.

I use the following environment.

    \newenvironment{probset}%
    {\begin{enumerate}
    \newcommand*{\prob}[1]{\setcounter{enumi}{##1-1}\item}}%
    {\end{enumerate}}

## Future ##

In the future, this plugin will be customizable (indentation,  separation, and
names). I had one or two other ideas, but I forgot them.
