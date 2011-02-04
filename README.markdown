# vim-pset #

## Overview ##

This is a short Vim plug-in to generate a LaTeX template like the following,
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

### Settings ###

There are three settings available: `pset_begin`, `pset_end`, and
`pset_problem`. They define what is put at the beginning, the end, and for each
problem. The `pset_problem` variable must contain an `\r` somewhere, as this is
substituted with the problem number. Both global and buffer local variables are
checked.

## Future ##

In the future, this plug-in will be customizable (indentation,  separation, and
names). I had one or two other ideas, but I forgot them.
