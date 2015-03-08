#!/bin/bash
etex $1 
dvips $1
ps2pdf $1.ps
rm $1.dvi
rm $1.ps
