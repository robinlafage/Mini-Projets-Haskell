#!/usr/bin/env ghci

double :: Float -> Float
double x = x*2

quadruple :: Float -> Float
quadruple x = double (double x)