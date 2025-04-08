#!/bin/csh

# set filenames = ( "vision.tex" )
set filenames = ( "vision.tex" "approach.tex" "offlineMethods.tex" "rtmlMethods.tex" "visualExploration.tex" "offlineSpikeSorting.tex" "onlineSpikeSorting.tex")
foreach filename ( $filenames )
    echo $filename `texcount -1 -sum $filename`
end
