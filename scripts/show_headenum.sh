if getopts "d:" arg; then
    cat ../directory/$OPTARG/headenum.kenz 2>/dev/null
else
    for i in `ls ../directory`
    do
        cat ../directory/$i/headenum.kenz 2>/dev/null
    done
fi
