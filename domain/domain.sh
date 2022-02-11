#Script Name: domain.sh
#Author: Gina Hobbs
#Date of last revision: 09 February 2022
#Description of purpose: 
#Declaration of variables: domain
#Declaration of functions (if used): 
#Main

echo "Please type a domain name."
read domain

whois ${domain}
dig ${domain}
host ${domain}
nslookup ${domain}

#End