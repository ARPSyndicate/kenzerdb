if getopts "d:" arg; then
    cat ../directory/$OPTARG/urlheadenum.kenz* 2>/dev/null
else
    for i in `ls ../directory`
    do
        cat ../directory/$i/urlheadenum.kenz* 2>/dev/null
    done
fi
