#!/bin/bash

VERSION="IPCheck v0.1"
GREEN="\033[32m"
RED="\033[31m"
YELLOW="\033[33m"
RESET="\033[0m"

echo -e "${GREEN}====================================${RESET}"
echo -e "${GREEN}        $VERSION${RESET}"
echo -e "${GREEN}====================================${RESET}"
echo ""

# 获取 IPv4
get_ipv4() {
    curl -4 -s --max-time 5 https://api.ipify.org
}

# 获取 IPv6
get_ipv6() {
    curl -6 -s --max-time 5 https://api64.ipify.org
}

# 获取 IP 信息
get_ip_info() {
    curl -s --max-time 5 https://ipinfo.io/$1/json
}

echo -e "${YELLOW}>>> Public IP Detection${RESET}"
IPV4=$(get_ipv4)
IPV6=$(get_ipv6)

echo "IPv4: ${IPV4:-Unavailable}"
echo "IPv6: ${IPV6:-Unavailable}"
echo ""

if [ -n "$IPV4" ]; then
    INFO=$(get_ip_info $IPV4)
    COUNTRY=$(echo "$INFO" | grep '"country"' | cut -d '"' -f4)
    ASN=$(echo "$INFO" | grep '"org"' | cut -d '"' -f4)

    echo -e "${YELLOW}>>> IP Info (IPv4)${RESET}"
    echo "Country : $COUNTRY"
    echo "ASN     : $ASN"
    echo ""
fi

echo -e "${YELLOW}>>> System Info${RESET}"
echo "OS      : $(uname -s)"
echo "Kernel  : $(uname -r)"
echo "Arch    : $(uname -m)"
echo ""

echo -e "${YELLOW}>>> Network Test${RESET}"
ping -c 2 1.1.1.1 >/dev/null 2>&1 && \
echo -e "Ping 1.1.1.1 : ${GREEN}OK${RESET}" || \
echo -e "Ping 1.1.1.1 : ${RED}Fail${RESET}"

ping -c 2 8.8.8.8 >/dev/null 2>&1 && \
echo -e "Ping 8.8.8.8 : ${GREEN}OK${RESET}" || \
echo -e "Ping 8.8.8.8 : ${RED}Fail${RESET}"

echo ""
echo -e "${GREEN}Done.${RESET}"
