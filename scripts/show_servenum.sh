if getopts "d:" arg; then
    cat ../directory/$OPTARG/servenum.kenz 2>/dev/null
else
    for i in `ls ../directory`
    do
        cat ../directory/$i/servenum.kenz 2>/dev/null
    done
fi
