#!/bin/csh

# set filenames = ( "vision.tex" "approach.tex" )
set filenames = ( "vision.tex" )
foreach filename ( $filenames )
    echo $filename `texcount -1 -sum $filename`
end
