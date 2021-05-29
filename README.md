# KENZERDB | A sample git-repo for storing data for/from Kenzer & Freaker

## DB Structure

```
├── directory - gatherings from kenzer
│   ├── domain.com - domain-wise accumulated data
│   |   ├── subenum.kenz[text] - list of subdomains
│   |   ├── repenum.kenz[text] - list of reputations of subdomains
│   |   ├── portenum.kenz[text] - list of open ports
│   |   ├── webenum.kenz[text] - list of webservers
│   |   ├── socenum.kenz[text] - list of social media accounts
│   |   ├── servenum.kenz[text] - list of services
│   |   ├── asnenum.kenz[text] - list of ASNs
│   |   ├── headenum.kenz[text] - list of status codes, titles & webservers for domains
│   |   ├── urlheadenum.kenz[text] - list of status codes, titles & webservers for urls
│   |   ├── dnsenum.kenz[text] - list of DNS records
│   |   ├── conenum.kenz[csv] - list of hidden files/directories
│   |   ├── urlenum.kenz[text] - list of endpoints
│   |   ├── cvescan.kenz[text] - list of domains vulnerable to CVEs
│   |   ├── vulnscan.kenz[text] - list of domains vulnerable to other vulns
│   |   ├── urlcvescan.kenz[text] - list of urls vulnerable to CVEs
│   |   ├── urlvulnscan.kenz[text] - list of urls vulnerable to other vulns
│   |   ├── subscan.kenz[text] - list of domains vulnerable to subdomain takeovers
│   |   ├── portscan.kenz[html] - scan results for open ports
│   |   ├── cscan.kenz[text] - list of domains vulnerable to custom scan templates
│   |   ├── endscan.kenz[text] - list of vulnerable endpoints
│   |   ├── buckscan.kenz[text] - list of s3 buckets
│   |   ├── favscan.kenz[text] - scan results for favicon-based identifications
│   |   ├── vizscan.kenz[html] - scan results for domain flyovers
│   |   ├── idscan.kenz[text] - list of identified web applications
│   |   ├── *.log[text] - log files for kenzer-binaries
│   |   ├── nuclei[directory] - log files for nuclei
│   |   ├── jaeles[directory] - log files for jaeles
│   |   ├── gocrawler[directory] - log files for gocrawler
│   |   ├── aquatone[directory] - log files for aquatone
├── exploitation - gatherings from freaker
|   ├── *.freakin[text] - input data
|   ├── *.freakem[text] - extracted data
|   ├── *.freakout[text] - output data
├── scripts - helper bash scripts
|   ├── count_*.sh - counts number of entries
|   ├── remove_*.sh - removes entries containing a keyword
|   ├── show_*.sh - shows entries
|   ├── summarize_*.sh - summarizes entries
|   ├── gen_readme.sh - generates readme
├── *.txt - summary files
```

**COMPATIBILITY TESTED ON ARCHLINUX(x64) & DEBIAN(x64) ONLY**<br>
**FEEL FREE TO SUBMIT PULL REQUESTS**
