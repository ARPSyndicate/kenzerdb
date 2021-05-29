if getopts "d:" arg; then
    cat ../directory/$OPTARG/repenum.kenz* 2>/dev/null
else
    for i in `ls ../directory`
    do
        cat ../directory/$i/repenum.kenz* 2>/dev/null
    done
fi
