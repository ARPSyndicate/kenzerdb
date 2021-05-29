if getopts "k:" arg; then
	for file in `ls ../directory/*/repenum.kenz*`
	do
		ex +g/$OPTARG/d -cwq $file
	done
fi
