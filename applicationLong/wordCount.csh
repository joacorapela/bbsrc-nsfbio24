#!/bin/csh

# set filenames = ( "vision.tex" )
set filenames = ( "vision.tex" "approach.tex" "offlineMethods.tex" "rtmlMethods.tex")
foreach filename ( $filenames )
    echo $filename `texcount -1 -sum $filename`
end
