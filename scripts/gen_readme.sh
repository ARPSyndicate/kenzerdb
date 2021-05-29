echo "`ls -A ../directory/ | sed 's/#/\//g' `"  > ../targets.txt
echo "`bash summarize_cvescan.sh | grep '\[' | sort -u`" > ../cvescan.txt
echo "`bash summarize_vulnscan.sh | grep '\[' | sort -u`" > ../vulnscan.txt
echo "`bash summarize_subscan.sh | grep '\[' | sort -u`" > ../subscan.txt
echo "`bash summarize_cscan.sh | grep '\[' | sort -u`" > ../cscan.txt
echo "`bash summarize_servenum.sh | grep '\[' | sort -u`" > ../servenum.txt
echo "`bash summarize_socenum.sh | grep '\[' | sort -u`" > ../socenum.txt
echo "`bash summarize_favscan.sh | grep '\[' | sort -u`" > ../favscan.txt
echo "`bash summarize_idscan.sh | grep '\[' | sort -u`" > ../idscan.txt
echo "`bash summarize_repenum.sh | grep '\[' | sort -u`" > ../repenum.txt

echo "## MODULE-WISE STATS" > ../README.md
echo "| MODULE | TOTAL COUNT |" >> ../README.md
echo "| :----: | :----: |" >> ../README.md
echo "| TARGETS | `ls -A ../directory/ | wc -l` |" >> ../README.md
echo "| SUBENUM | `cat ../directory/*/subenum.kenz* | wc -l` |" >> ../README.md
echo "| PORTENUM | `cat ../directory/*/portenum.kenz* | wc -l` |" >> ../README.md
echo "| SERVENUM | `cat ../directory/*/servenum.kenz* | wc -l` |" >> ../README.md
echo "| WEBENUM | `cat ../directory/*/webenum.kenz* | wc -l` |" >> ../README.md
echo "| ASNENUM | `cat ../directory/*/asnenum.kenz* | wc -l` |" >> ../README.md
echo "| DNSENUM | `cat ../directory/*/dnsenum.kenz* | wc -l` |" >> ../README.md
echo "| HEADENUM | `cat ../directory/*/headenum.kenz* | wc -l` |" >> ../README.md
echo "| FAVSCAN | `cat ../directory/*/favscan.kenz* | wc -l` |" >> ../README.md
echo "| CVESCAN | `cat ../directory/*/cvescan.kenz* | wc -l` |" >> ../README.md
echo "| VULNSCAN | `cat ../directory/*/vulnscan.kenz* | wc -l` |" >> ../README.md
echo "| SUBSCAN | `cat ../directory/*/subscan.kenz* | wc -l` |" >> ../README.md

echo "## TARGET-WISE STATS" >> ../README.md
echo "| TARGET | SUBENUM | PORTENUM  | SERVENUM | WEBENUM | ASNENUM | DNSENUM | HEADENUM | FAVSCAN | CVESCAN | VULNSCAN | SUBSCAN |" >> ../README.md
echo "| :----: | :----: | :----: | :----: | :----: | :----: | :----: | :----: | :----: | :----: | :----: | :----: |" >> ../README.md
for i in `ls ../directory`
    do
        echo "| `echo $i | sed 's/#/\//g'` | `cat ../directory/$i/subenum.kenz* 2>/dev/null | wc -l` | `cat ../directory/$i/portenum.kenz* 2>/dev/null | wc -l` | `cat ../directory/$i/servenum.kenz* 2>/dev/null | wc -l` | `cat ../directory/$i/webenum.kenz* 2>/dev/null | wc -l` | `cat ../directory/$i/asnenum.kenz* 2>/dev/null | wc -l` | `cat ../directory/$i/dnsenum.kenz* 2>/dev/null | wc -l` | `cat ../directory/$i/headenum.kenz* 2>/dev/null | wc -l` | `cat ../directory/$i/favscan.kenz* 2>/dev/null | wc -l` | `cat ../directory/$i/cvescan.kenz* 2>/dev/null | wc -l` | `cat ../directory/$i/vulnscan.kenz* 2>/dev/null | wc -l` | `cat ../directory/$i/subscan.kenz* 2>/dev/null | wc -l` |" >> ../README.md
    done
