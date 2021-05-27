RED="\035[0;31m" 
GREEN="\033[0;32m" 
NC="\033[0m" 
 
 
read -p "Enter website:" site ; 
curl --silent --path-as-is --insecure -I $site -H "Origin: https://evil.com" | grep evil.com && echo -e "${GREEN}CORS found on $site${NC}" || echo -e "${RED}nothing on $site${NC}"
