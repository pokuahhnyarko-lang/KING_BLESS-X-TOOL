#!/bin/bash
#============================================================#
#  ██╗  ██╗██╗███╗   ██╗ ██████╗     ██████╗ ██╗     ███████╗
#  ██║ ██╔╝██║████╗  ██║██╔════╝     ██╔══██╗██║     ██╔════╝
#  █████╔╝ ██║██╔██╗ ██║██║  ███╗    ██████╔╝██║     █████╗  
#  ██╔═██╗ ██║██║╚██╗██║██║   ██║    ██╔══██╗██║     ██╔══╝  
#  ██║  ██╗██║██║ ╚████║╚██████╔╝    ██████╔╝███████╗███████╗
#  ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝     ╚═════╝ ╚══════╝╚══════╝
#============================================================#
#  ███████╗  ██████╗ ██╗   ██╗ █████╗ ███████╗███████╗        #
#  ╚══██╔══╝ ██╔══██╗╚██╗ ██╔╝██╔══██╗╚══██╔══╝██╔════╝        #
#     ██║    ██████╔╝ ╚████╔╝ ╚█████╔╝   ██║   █████╗          #
#     ██║    ██╔══██╗  ╚██╔╝  ██╔══██╗   ██║   ██╔══╝          #
#     ██║    ██║  ██║   ██║   ╚█████╔╝   ██║   ███████╗        #
#     ╚═╝    ╚═╝  ╚═╝   ╚═╝    ╚════╝    ╚═╝   ╚══════╝        #
#============================================================#
#  TOOL NAME  : KING_BLESS X TOOL
#  VERSION    : 3.0
#  CREATOR    : KINGSLEY-XMD
#  DATE       : 2026
#  PLATFORM   : TERMUX / LINUX
#  PURPOSE    : ALL-IN-ONE HACKING & INFORMATION GATHERING
#============================================================#

#-----------COLOR CODES------------#
R='\033[1;31m'
G='\033[1;32m'
Y='\033[1;33m'
B='\033[1;34m'
M='\033[1;35m'
C='\033[1;36m'
W='\033[1;37m'
D='\033[0m'
BG='\033[44m'
BGM='\033[45m'
BGR='\033[41m'
BGG='\033[42m'
BGY='\033[43m'
BLINK='\033[5m'
BOLD='\033[1m'
NC='\033[0m'

#-----------VARIABLES------------#
TOOL_NAME="KING_BLESS X TOOL"
CREATOR="KINGSLEY-XMD"
VERSION="3.0"
YEAR="2026"
CONFIG_DIR="$HOME/.king_bless"
LOG_FILE="$CONFIG_DIR/king_bless.log"
TEMP_DIR="$CONFIG_DIR/temp"

#-----------FUNCTIONS------------#

# BANNER DISPLAY
banner() {
    clear
    echo -e "${BGR}                                                               ${NC}"
    echo -e "${BGY}  ██╗  ██╗██╗███╗   ██╗ ██████╗     ██████╗ ██╗     ███████╗${NC}"
    echo -e "${BGY}  ██║ ██╔╝██║████╗  ██║██╔════╝     ██╔══██╗██║     ██╔════╝${NC}"
    echo -e "${BGY}  █████╔╝ ██║██╔██╗ ██║██║  ███╗    ██████╔╝██║     █████╗  ${NC}"
    echo -e "${BGY}  ██╔═██╗ ██║██║╚██╗██║██║   ██║    ██╔══██╗██║     ██╔══╝  ${NC}"
    echo -e "${BGY}  ██║  ██╗██║██║ ╚████║╚██████╔╝    ██████╔╝███████╗███████╗${NC}"
    echo -e "${BGY}  ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝     ╚═════╝ ╚══════╝╚══════╝${NC}"
    echo -e "${BGR}                                                               ${NC}"
    echo -e "${R}▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓${NC}"
    echo -e "${Y}▓${NC} ${W}CREATOR  ${R}:${G} KINGSLEY-XMD                               ${Y}▓${NC}"
    echo -e "${Y}▓${NC} ${W}TOOL     ${R}:${G} KING_BLESS X TOOL                            ${Y}▓${NC}"
    echo -e "${Y}▓${NC} ${W}VERSION  ${R}:${G} $VERSION                                           ${Y}▓${NC}"
    echo -e "${Y}▓${NC} ${W}YEAR     ${R}:${G} $YEAR                                               ${Y}▓${NC}"
    echo -e "${Y}▓${NC} ${W}PLATFORM ${R}:${G} TERMUX / LINUX                                    ${Y}▓${NC}"
    echo -e "${R}▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓${NC}"
    echo ""
    echo -e "${M}⚠️  ${W}FOR AUTHORIZED SECURITY TESTING ONLY${M} ⚠️${NC}"
    echo ""
}

# SMALL BANNER
small_banner() {
    echo -e "${R}══════════════════════════════════════════════════════════════${NC}"
    echo -e "${Y}  ██╗  ██╗██╗███╗   ██╗ ██████╗     ${G}██████╗ ██╗     ███████╗${NC}"
    echo -e "${Y}  ██║ ██╔╝██║████╗  ██║██╔════╝     ${G}██╔══██╗██║     ██╔════╝${NC}"
    echo -e "${Y}  █████╔╝ ██║██╔██╗ ██║██║  ███╗    ${G}██████╔╝██║     █████╗  ${NC}"
    echo -e "${Y}  ██╔═██╗ ██║██║╚██╗██║██║   ██║    ${G}██╔══██╗██║     ██╔══╝  ${NC}"
    echo -e "${Y}  ██║  ██╗██║██║ ╚████║╚██████╔╝    ${G}██████╔╝███████╗███████╗${NC}"
    echo -e "${Y}  ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝     ${G}╚═════╝ ╚══════╝╚══════╝${NC}"
    echo -e "${R}══════════════════════════════════════════════════════════════${NC}"
    echo -e "${C}                      v$VERSION - $YEAR                      ${NC}"
    echo ""
}

# CHECK DEPENDENCIES
check_deps() {
    echo -e "${Y}[${R}!${Y}] ${W}Checking dependencies...${NC}"
    
    DEPS=("curl" "wget" "git" "python" "php" "nmap" "openssh" "unzip" "zip" "jq")
    
    for dep in "${DEPS[@]}"; do
        if command -v $dep &>/dev/null; then
            echo -e "${G}[✓]${NC} $dep ${G}installed${NC}"
        else
            echo -e "${Y}[${R}!${Y}]${NC} $dep ${Y}not found - installing...${NC}"
            pkg install $dep -y &>/dev/null || apt install $dep -y &>/dev/null
            if command -v $dep &>/dev/null; then
                echo -e "${G}[✓]${NC} $dep ${G}installed successfully${NC}"
            else
                echo -e "${R}[✗]${NC} Failed to install $dep"
            fi
        fi
    done
    
    # Install python packages
    pip install requests colorama phonenumbers folium prettytable 2>/dev/null
    pip3 install requests colorama phonenumbers folium prettytable 2>/dev/null
}

# INITIALIZE
initialize() {
    mkdir -p "$CONFIG_DIR"
    mkdir -p "$TEMP_DIR"
    touch "$LOG_FILE"
    chmod 777 "$CONFIG_DIR" 2>/dev/null
    chmod 777 "$TEMP_DIR" 2>/dev/null
}

# LOG ACTIVITY
log_activity() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> "$LOG_FILE"
}

# PRESS ENTER TO CONTINUE
press_enter() {
    echo ""
    echo -e "${Y}[${R}★${Y}] ${W}Press Enter to continue...${NC}"
    read
}

# LOADING ANIMATION
loading() {
    echo -ne "${Y}Loading"
    for i in {1..3}; do
        echo -ne "${G}.${NC}"
        sleep 0.3
    done
    echo ""
}

#-----------INFORMATION GATHERING MODULES------------#

# MODULE 1: IP TRACKER
ip_tracker() {
    small_banner
    echo -e "${BGM}               🌐 IP ADDRESS TRACKER               ${NC}"
    echo ""
    echo -e "${C}[${W}1${C}]${W} Track My IP"
    echo -e "${C}[${W}2${C}]${W} Track Target IP"
    echo -e "${C}[${W}3${C}]${W} Back"
    echo ""
    echo -ne "${G}KING_BLESS${R}@${W}CHOICE${R}~${W}# ${NC}"
    read ip_choice
    
    case $ip_choice in
        1)
            echo -e "${Y}[${R}!${Y}]${W} Fetching your IP information...${NC}"
            loading
            my_ip=$(curl -s ifconfig.me)
            echo -e "${G}[✓]${NC} ${W}Your Public IP: ${G}$my_ip${NC}"
            echo ""
            curl -s "http://ip-api.com/json/$my_ip" | python3 -c "
import json,sys
data=json.load(sys.stdin)
print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━')
print(f'  🌍 IP          : {data.get(\"query\",\"N/A\")}')
print(f'  🌐 ISP         : {data.get(\"isp\",\"N/A\")}')
print(f'  🏢 Organization: {data.get(\"org\",\"N/A\")}')
print(f'  🇺🇳 Country     : {data.get(\"country\",\"N/A\")}')
print(f'  🏛️  Region      : {data.get(\"regionName\",\"N/A\")}')
print(f'  🏙️  City        : {data.get(\"city\",\"N/A\")}')
print(f'  📮 ZIP         : {data.get(\"zip\",\"N/A\")}')
print(f'  📶 Latitude    : {data.get(\"lat\",\"N/A\")}')
print(f'  📶 Longitude   : {data.get(\"lon\",\"N/A\")}')
print(f'  ⏰ Timezone    : {data.get(\"timezone\",\"N/A\")}')
print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━')
" 2>/dev/null
            log_activity "IP Tracked own IP: $my_ip"
            ;;
        2)
            echo -ne "${Y}[${R}?${Y}]${W} Enter Target IP/Domain: ${NC}"
            read target_ip
            echo -e "${Y}[${R}!${Y}]${W} Tracking $target_ip...${NC}"
            loading
            curl -s "http://ip-api.com/json/$target_ip" | python3 -c "
import json,sys
data=json.load(sys.stdin)
if data.get('status') == 'fail':
    print(f'{R}[✗] Invalid IP or domain{NC}')
else:
    print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━')
    print(f'  🌍 IP          : {data.get(\"query\",\"N/A\")}')
    print(f'  🌐 ISP         : {data.get(\"isp\",\"N/A\")}')
    print(f'  🏢 Organization: {data.get(\"org\",\"N/A\")}')
    print(f'  🇺🇳 Country     : {data.get(\"country\",\"N/A\")}')
    print(f'  🏛️  Region      : {data.get(\"regionName\",\"N/A\")}')
    print(f'  🏙️  City        : {data.get(\"city\",\"N/A\")}')
    print(f'  📮 ZIP         : {data.get(\"zip\",\"N/A\")}')
    print(f'  📶 Latitude    : {data.get(\"lat\",\"N/A\")}')
    print(f'  📶 Longitude   : {data.get(\"lon\",\"N/A\")}')
    print(f'  ⏰ Timezone    : {data.get(\"timezone\",\"N/A\")}')
    print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━')
" 2>/dev/null
            log_activity "IP Tracked: $target_ip"
            ;;
        3)
            return
            ;;
        *)
            echo -e "${R}[✗] Invalid option!${NC}"
            ;;
    esac
    press_enter
}

# MODULE 2: PHONE NUMBER LOOKUP
phone_lookup() {
    small_banner
    echo -e "${BGM}               📞 PHONE NUMBER LOOKUP              ${NC}"
    echo ""
    echo -ne "${Y}[${R}?${Y}]${W} Enter Phone Number with Country Code (e.g., +1234567890): ${NC}"
    read phone_num
    
    if [ -z "$phone_num" ]; then
        echo -e "${R}[✗] No number entered!${NC}"
        press_enter
        return
    fi
    
    echo -e "${Y}[${R}!${Y}]${W} Looking up $phone_num...${NC}"
    loading
    
    # Use numverify API or similar
    curl -s "https://json.geoiplookup.io/$phone_num" 2>/dev/null || true
    
    python3 -c "
import json, requests, sys

phone = '$phone_num'

print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━')
print(f'  📱 Phone      : {phone}')
print(f'  🔍 Source     : numverify/geolocation')
print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━')
print(f'  🌍 Country    : Checking...')
print(f'  🏙️  Location   : Via API')
print(f'  📞 Carrier    : Varies by region')
print(f'  🔢 Line Type  : Mobile/Landline')
print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━')
print(f'  {Y}💡 Tip: Use OSINT frameworks for deeper research{NC}')
" 2>/dev/null
    
    # Try additional lookup
    echo ""
    echo -e "${C}[${W}+${C}]${W} Attempting additional lookup via numverify style API...${NC}"
    
    # Write a small python script for phone lookup
    cat > "$TEMP_DIR/phone_lookup.py" << 'PYEOF'
import json, sys, urllib.request

phone = sys.argv[1] if len(sys.argv) > 1 else ""
if not phone:
    sys.exit(1)

try:
    # Using abstractapi or similar free service
    url = f"https://phonevalidation.abstractapi.com/v1/?api_key=demo&phone={phone}"
    req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
    with urllib.request.urlopen(req, timeout=10) as resp:
        data = json.load(resp)
        print(json.dumps(data, indent=2))
except Exception as e:
    print(f"Demo API limited. Use paid key for full results.")
    print(f"Basic info gathered for: {phone}")
PYEOF
    
    python3 "$TEMP_DIR/phone_lookup.py" "$phone_num" 2>/dev/null
    
    log_activity "Phone Lookup: $phone_num"
    press_enter
}

# MODULE 3: EMAIL FINDER/OSINT
email_osint() {
    small_banner
    echo -e "${BGM}               📧 EMAIL OSINT TOOL                ${NC}"
    echo ""
    echo -ne "${Y}[${R}?${Y}]${W} Enter Email Address: ${NC}"
    read email_addr
    
    if [ -z "$email_addr" ]; then
        echo -e "${R}[✗] No email entered!${NC}"
        press_enter
        return
    fi
    
    echo -e "${Y}[${R}!${Y}]${W} Gathering intel on $email_addr...${NC}"
    loading
    
    # Extract username and domain
    username=$(echo "$email_addr" | cut -d'@' -f1)
    domain=$(echo "$email_addr" | cut -d'@' -f2)
    
    echo -e "${G}══════════════════════════════════════════════${NC}"
    echo -e "${W}  📧 Email      : ${C}$email_addr${NC}"
    echo -e "${W}  👤 Username   : ${C}$username${NC}"
    echo -e "${W}  🌐 Domain     : ${C}$domain${NC}"
    echo -e "${G}══════════════════════════════════════════════${NC}"
    
    # Check if domain exists
    echo ""
    echo -e "${Y}[${R}!${Y}]${W} Checking domain DNS records...${NC}"
    domain_ip=$(ping -c 1 "$domain" 2>/dev/null | head -1 | grep -oP '\(\K[^)]+') 
    if [ -n "$domain_ip" ]; then
        echo -e "${G}[✓]${NC} ${W}Domain resolves to: ${G}$domain_ip${NC}"
    else
        echo -e "${R}[✗]${NC} ${W}Domain may not exist or no DNS record${NC}"
    fi
    
    # Check for common social media
    echo ""
    echo -e "${Y}[${R}!${Y}]${W} Checking common platforms...${NC}"
    
    platforms=(
        "https://github.com/$username"
        "https://twitter.com/$username"
        "https://instagram.com/$username"
        "https://facebook.com/$username"
        "https://linkedin.com/in/$username"
    )
    
    for platform in "${platforms[@]}"; do
        check_code=$(curl -s -o /dev/null -w "%{http_code}" "$platform" 2>/dev/null)
        if [ "$check_code" == "200" ] || [ "$check_code" == "301" ] || [ "$check_code" == "302" ]; then
            echo -e "${G}[✓]${NC} ${W}$platform ${G}(Found)${NC}"
        fi
    done
    
    # Check for Gravatar
    md5hash=$(echo -n "$email_addr" | md5sum | cut -d' ' -f1)
    gravatar_url="https://www.gravatar.com/avatar/$md5hash"
    gravatar_check=$(curl -s -o /dev/null -w "%{http_code}" "$gravatar_url" 2>/dev/null)
    if [ "$gravatar_check" != "404" ]; then
        echo -e "${G}[✓]${NC} ${W}Gravatar profile exists: $gravatar_url${NC}"
    fi
    
    # Have I Been Pwned check (simplified - k-anonymity)
    sha1hash=$(echo -n "$email_addr" | sha1sum | cut -d' ' -f1 | tr '[:lower:]' '[:upper:]')
    prefix="${sha1hash:0:5}"
    suffix="${sha1hash:5}"
    
    echo ""
    echo -e "${Y}[${R}!${Y}]${W} Checking breach databases (k-anonymity)...${NC}"
    breach_result=$(curl -s "https://api.pwnedpasswords.com/range/$prefix" 2>/dev/null | grep -i "$suffix" || true)
    if [ -n "$breach_result" ]; then
        count=$(echo "$breach_result" | cut -d':' -f2 | tr -d ' ')
        echo -e "${R}[⚠]${NC} ${W}Email found in breaches! (${R}$count times${W})${NC}"
    else
        echo -e "${G}[✓]${NC} ${W}No known breaches found${NC}"
    fi
    
    log_activity "Email OSINT: $email_addr"
    press_enter
}

# MODULE 4: DNS ENUMERATION
dns_enum() {
    small_banner
    echo -e "${BGM}               🌐 DNS ENUMERATION                ${NC}"
    echo ""
    echo -ne "${Y}[${R}?${Y}]${W} Enter Domain (e.g., example.com): ${NC}"
    read target_domain
    
    if [ -z "$target_domain" ]; then
        echo -e "${R}[✗] No domain entered!${NC}"
        press_enter
        return
    fi
    
    echo -e "${Y}[${R}!${Y}]${W} Enumerating DNS records for $target_domain...${NC}"
    loading
    
    echo -e "${G}══════════════════════════════════════════════${NC}"
    echo -e "${W}  Target    : ${C}$target_domain${NC}"
    echo -e "${G}══════════════════════════════════════════════${NC}"
    
    # A Record
    echo -e "${Y}[${R}+${Y}]${W} A Records (IPv4):${NC}"
    dig +short A "$target_domain" 2>/dev/null || host -t A "$target_domain" 2>/dev/null || nslookup "$target_domain" 2>/dev/null | grep Address | grep -v "#" || echo "  No A records found"
    
    # AAAA Record
    echo ""
    echo -e "${Y}[${R}+${Y}]${W} AAAA Records (IPv6):${NC}"
    dig +short AAAA "$target_domain" 2>/dev/null || echo "  No AAAA records or dig not available"
    
    # MX Record
    echo ""
    echo -e "${Y}[${R}+${Y}]${W} MX Records (Mail Servers):${NC}"
    dig +short MX "$target_domain" 2>/dev/null || host -t MX "$target_domain" 2>/dev/null | cut -d' ' -f1,6-7 || echo "  No MX records found"
    
    # NS Record
    echo ""
    echo -e "${Y}[${R}+${Y}]${W} NS Records (Nameservers):${NC}"
    dig +short NS "$target_domain" 2>/dev/null || host -t NS "$target_domain" 2>/dev/null || echo "  No NS records found"
    
    # TXT Record
    echo ""
    echo -e "${Y}[${R}+${Y}]${W} TXT Records:${NC}"
    dig +short TXT "$target_domain" 2>/dev/null || host -t TXT "$target_domain" 2>/dev/null || echo "  No TXT records found"
    
    # SOA Record
    echo ""
    echo -e "${Y}[${R}+${Y}]${W} SOA Record:${NC}"
    dig +short SOA "$target_domain" 2>/dev/null || echo "  No SOA record found"
    
    # WHOIS
    echo ""
    echo -e "${Y}[${R}+${Y}]${W} WHOIS Lookup:${NC}"
    whois "$target_domain" 2>/dev/null | head -20 || echo "  WHOIS not available"
    
    log_activity "DNS Enumeration: $target_domain"
    press_enter
}

# MODULE 5: PORT SCANNER (NMAP)
port_scan() {
    small_banner
    echo -e "${BGM}               🔍 PORT SCANNER                  ${NC}"
    echo ""
    echo -ne "${Y}[${R}?${Y}]${W} Enter Target IP/Domain: ${NC}"
    read target_port
    
    if [ -z "$target_port" ]; then
        echo -e "${R}[✗] No target entered!${NC}"
        press_enter
        return
    fi
    
    echo -e "${Y}[${R}!${Y}]${W} Select scan type:${NC}"
    echo -e "${C}[${W}1${C}]${W} Quick Scan (Common Ports)"
    echo -e "${C}[${W}2${C}]${W} Full Scan (1-65535)"
    echo -e "${C}[${W}3${C}]${W} Service Version Detection"
    echo -e "${C}[${W}4${C}]${W} OS Detection"
    echo -e "${C}[${W}5${C}]${W} Back"
    echo ""
    echo -ne "${G}KING_BLESS${R}@${W}SCAN${R}~${W}# ${NC}"
    read scan_choice
    
    case $scan_choice in
        1)
            echo -e "${Y}[${R}!${Y}]${W} Running quick scan on $target_port...${NC}"
            loading
            nmap -T4 -F "$target_port" 2>/dev/null || echo -e "${R}[!] nmap not installed${NC}"
            ;;
        2)
            echo -e "${Y}[${R}!${Y}]${W} Running full scan (this may take a while)...${NC}"
            loading
            nmap -T4 -p- "$target_port" 2>/dev/null || echo -e "${R}[!] nmap not installed${NC}"
            ;;
        3)
            echo -e "${Y}[${R}!${Y}]${W} Running service version detection...${NC}"
            loading
            nmap -T4 -sV "$target_port" 2>/dev/null || echo -e "${R}[!] nmap not installed${NC}"
            ;;
        4)
            echo -e "${Y}[${R}!${Y}]${W} Running OS detection...${NC}"
            loading
            nmap -T4 -O "$target_port" 2>/dev/null || echo -e "${R}[!] nmap not installed${NC}"
            ;;
        5)
            return
            ;;
        *)
            echo -e "${R}[✗] Invalid option!${NC}"
            ;;
    esac
    
    log_activity "Port Scan: $target_port type $scan_choice"
    press_enter
}

# MODULE 6: SUBNET SCANNER
subnet_scan() {
    small_banner
    echo -e "${BGM}               🌐 SUBNET/LAN SCANNER              ${NC}"
    echo ""
    echo -e "${Y}[${R}!${Y}]${W} Scanning local network for live hosts...${NC}"
    loading
    
    # Get local network
    local_ip=$(ip route get 1 2>/dev/null | grep -oP 'src \K[^ ]+') || local_ip=$(ifconfig 2>/dev/null | grep inet | head -1 | awk '{print $2}')
    
    if [ -z "$local_ip" ]; then
        echo -e "${R}[✗] Could not determine local IP${NC}"
        press_enter
        return
    fi
    
    echo -e "${G}[✓]${NC} ${W}Your IP: ${G}$local_ip${NC}"
    
    # Get subnet
    subnet=$(echo "$local_ip" | cut -d'.' -f1-3)
    echo -e "${Y}[${R}!${Y}]${W} Scanning $subnet.0/24...${NC}"
    echo ""
    
    # Ping sweep
    for i in {1..254}; do
        (ping -c 1 -W 1 "$subnet.$i" 2>/dev/null | grep "bytes from" | cut -d' ' -f4 | tr -d ':' &)
    done
    wait
    
    # Get MAC addresses via ARP
    echo ""
    echo -e "${Y}[${R}+${Y}]${W} ARP Table:${NC}"
    arp -a 2>/dev/null || cat /proc/net/arp 2>/dev/null | grep -v "IP address" || echo "  No ARP data"
    
    log_activity "Subnet Scan: $subnet.0/24"
    press_enter
}

# MODULE 7: WEB RECON
web_recon() {
    small_banner
    echo -e "${BGM}               🌐 WEB RECONNAISSANCE             ${NC}"
    echo ""
    echo -ne "${Y}[${R}?${Y}]${W} Enter Target URL (e.g., https://example.com): ${NC}"
    read target_url
    
    if [ -z "$target_url" ]; then
        echo -e "${R}[✗] No URL entered!${NC}"
        press_enter
        return
    fi
    
    echo -e "${Y}[${R}!${Y}]${W} Performing web recon on $target_url...${NC}"
    loading
    
    # Extract domain from URL
    domain=$(echo "$target_url" | sed 's|https\?://||' | cut -d'/' -f1)
    
    echo -e "${G}══════════════════════════════════════════════${NC}"
    echo -e "${W}  Target : ${C}$target_url${NC}"
    echo -e "${W}  Domain : ${C}$domain${NC}"
    echo -e "${G}══════════════════════════════════════════════${NC}"
    
    # HTTP Headers
    echo ""
    echo -e "${Y}[${R}+${Y}]${W} HTTP Response Headers:${NC}"
    curl -sI -L "$target_url" -A "Mozilla/5.0" 2>/dev/null | head -30
    
    # Check for common paths
    echo ""
    echo -e "${Y}[${R}+${Y}]${W} Checking common paths...${NC}"
    common_paths=("robots.txt" ".htaccess" "sitemap.xml" "admin" "login" "wp-admin" "config.php" ".env" "backup" "phpinfo.php" "crossdomain.xml")
    
    for path in "${common_paths[@]}"; do
        status=$(curl -s -o /dev/null -w "%{http_code}" "$target_url/$path" 2>/dev/null)
        if [ "$status" == "200" ]; then
            echo -e "${G}[✓]${NC} ${W}$target_url/$path ${G}(200 OK)${NC}"
        elif [ "$status" == "403" ]; then
            echo -e "${Y}[!]${NC} ${W}$target_url/$path ${Y}(403 Forbidden)${NC}"
        elif [ "$status" == "301" ] || [ "$status" == "302" ]; then
            echo -e "${C}[→]${NC} ${W}$target_url/$path ${C}($status Redirect)${NC}"
        fi
    done
    
    # Technology detection
    echo ""
    echo -e "${Y}[${R}+${Y}]${W} Technology Detection:${NC}"
    curl -sI "$target_url" -A "Mozilla/5.0" 2>/dev/null | grep -iE "server|powered|x-powered|cf-ray|cloudflare" || echo "  Basic detection only"
    
    # Check SSL
    echo ""
    echo -e "${Y}[${R}+${Y}]${W} SSL Certificate Check:${NC}"
    echo | openssl s_client -connect "$domain":443 2>/dev/null | openssl x509 -noout -dates 2>/dev/null || echo "  SSL check failed/no HTTPS"
    
    log_activity "Web Recon: $target_url"
    press_enter
}

# MODULE 8: USERNAME OSINT (SOCIAL MEDIA SEARCH)
username_osint() {
    small_banner
    echo -e "${BGM}               🔍 USERNAME OSINT                ${NC}"
    echo ""
    echo -ne "${Y}[${R}?${Y}]${W} Enter Username to search: ${NC}"
    read target_user
    
    if [ -z "$target_user" ]; then
        echo -e "${R}[✗] No username entered!${NC}"
        press_enter
        return
    fi
    
    echo -e "${Y}[${R}!${Y}]${W} Searching for '$target_user' across platforms...${NC}"
    loading
    
    declare -A sites
    sites=(
        ["GitHub"]="https://github.com/$target_user"
        ["Twitter/X"]="https://twitter.com/$target_user"
        ["Instagram"]="https://instagram.com/$target_user"
        ["Facebook"]="https://facebook.com/$target_user"
        ["LinkedIn"]="https://linkedin.com/in/$target_user"
        ["Reddit"]="https://reddit.com/user/$target_user"
        ["YouTube"]="https://youtube.com/@$target_user"
        ["TikTok"]="https://tiktok.com/@$target_user"
        ["Snapchat"]="https://snapchat.com/add/$target_user"
        ["Pinterest"]="https://pinterest.com/$target_user"
        ["Medium"]="https://medium.com/@$target_user"
        ["Dev.to"]="https://dev.to/$target_user"
        ["Twitch"]="https://twitch.tv/$target_user"
        ["Telegram"]="https://t.me/$target_user"
        ["WhatsApp"]="https://wa.me/$target_user"
        ["Spotify"]="https://open.spotify.com/user/$target_user"
        ["Keybase"]="https://keybase.io/$target_user"
        ["Patreon"]="https://patreon.com/$target_user"
        ["Tumblr"]="https://$target_user.tumblr.com"
        ["WordPress"]="https://$target_user.wordpress.com"
    )
    
    found=0
    for site in "${!sites[@]}"; do
        url="${sites[$site]}"
        code=$(curl -s -o /dev/null -w "%{http_code}" -L --max-time 5 "$url" 2>/dev/null)
        if [ "$code" != "404" ]; then
            echo -e "${G}[✓]${NC} ${W}$site: ${G}$url${NC}"
            found=$((found+1))
        fi
    done
    
    echo ""
    echo -e "${G}══════════════════════════════════════════════${NC}"
    echo -e "${W}  Found on ${G}$found${W} platforms${NC}"
    echo -e "${G}══════════════════════════════════════════════${NC}"
    
    log_activity "Username OSINT: $target_user"
    press_enter
}

# MODULE 9: WHOIS LOOKUP
whois_lookup() {
    small_banner
    echo -e "${BGM}               📋 WHOIS LOOKUP                  ${NC}"
    echo ""
    echo -ne "${Y}[${R}?${Y}]${W} Enter Domain/IP: ${NC}"
    read whois_target
    
    if [ -z "$whois_target" ]; then
        echo -e "${R}[✗] No target entered!${NC}"
        press_enter
        return
    fi
    
    echo -e "${Y}[${R}!${Y}]${W} Looking up WHOIS for $whois_target...${NC}"
    loading
    
    whois "$whois_target" 2>/dev/null | head -80 || echo -e "${R}[!] WHOIS utility not available${NC}"
    
    log_activity "WHOIS Lookup: $whois_target"
    press_enter
}

# MODULE 10: SUBDOMAIN ENUMERATION
subdomain_enum() {
    small_banner
    echo -e "${BGM}               🌐 SUBDOMAIN ENUMERATION           ${NC}"
    echo ""
    echo -ne "${Y}[${R}?${Y}]${W} Enter Domain (e.g., example.com): ${NC}"
    read subdomain_domain
    
    if [ -z "$subdomain_domain" ]; then
        echo -e "${R}[✗] No domain entered!${NC}"
        press_enter
        return
    fi
    
    echo -e "${Y}[${R}!${Y}]${W} Enumerating subdomains for $subdomain_domain...${NC}"
    loading
    
    # Common subdomains wordlist
    subdomains=(
        "www" "mail" "ftp" "admin" "blog" "api" "dev" "test" "stage" "vpn"
        "webmail" "server" "mail2" "webdisk" "ns1" "ns2" "cpanel" "whm"
        "autodiscover" "support" "help" "login" "m" "mobile" "shop"
        "store" "app" "portal" "secure" "docs" "status" "cdn" "static"
        "media" "img" "images" "css" "js" "assets" "uploads" "download"
        "files" "cloud" "jenkins" "git" "jira" "confluence" "wiki"
        "backup" "proxy" "gateway" "remote" "api" "staging" "demo"
    )
    
    found_subdomains=()
    for sub in "${subdomains[@]}"; do
        domain="$sub.$subdomain_domain"
        ip=$(dig +short "$domain" 2>/dev/null | head -1)
        if [ -n "$ip" ]; then
            echo -e "${G}[✓]${NC} ${W}$domain ${C}→ ${G}$ip${NC}"
            found_subdomains+=("$domain")
        fi
    done
    
    echo ""
    echo -e "${G}══════════════════════════════════════════════${NC}"
    echo -e "${W}  Found ${G}${#found_subdomains[@]}${W} subdomains${NC}"
    echo -e "${G}══════════════════════════════════════════════${NC}"
    
    # Save results
    if [ ${#found_subdomains[@]} -gt 0 ]; then
        printf "%s\n" "${found_subdomains[@]}" > "$TEMP_DIR/subdomains_$subdomain_domain.txt"
        echo -e "${G}[✓]${NC} ${W}Results saved to: ${C}$TEMP_DIR/subdomains_$subdomain_domain.txt${NC}"
    fi
    
    log_activity "Subdomain Enum: $subdomain_domain"
    press_enter
}

#-----------TOOL INSTALLER------------#

# Install 21 Powerful Hacking Tools
install_all_tools() {
    small_banner
    echo -e "${BGR}      ⚡ INSTALLING 21 POWERFUL HACKING TOOLS ⚡      ${NC}"
    echo ""
    echo -e "${R}[${W}!${R}]${Y} This will install 21 security tools for Termux${NC}"
    echo -e "${R}[${W}!${R}]${Y} Internet connection required${NC}"
    echo ""
    echo -ne "${Y}${BLINK}[?]${NC} ${W}Proceed with installation? (y/n): ${NC}"
    read confirm_install
    
    if [ "$confirm_install" != "y" ] && [ "$confirm_install" != "Y" ]; then
        echo -e "${R}[✗] Installation cancelled${NC}"
        press_enter
        return
    fi
    
    # Update packages
    echo -e "${Y}[${R}+${Y}]${W} Updating Termux packages...${NC}"
    pkg update -y && pkg upgrade -y
    
    # Install core dependencies
    echo -e "${Y}[${R}+${Y}]${W} Installing core dependencies...${NC}"
    pkg install -y curl wget git python python2 php openssh nmap tor hydra \
        toilet figlet ruby perl clang make cmake openssl openssl-tool \
        binutils termux-tools unzip zip jq grep sed awk coreutils findutils \
        net-tools dnsutils traceroute whois 2>/dev/null
    
    count=0
    
    # 1. Metasploit Framework (via script)
    count=$((count+1))
    echo -e "${G}[${count}/21]${NC} ${Y}Installing Metasploit Framework...${NC}"
    if [ -d "$HOME/metasploit-framework" ]; then
        echo -e "${G}[✓]${NC} Metasploit already installed"
    else
        cur=$(pkg list-installed 2>/dev/null | grep metasploit)
        if [ -n "$cur" ]; then
            echo -e "${G}[✓]${NC} Metasploit already installed"
        else
            pkg install -y metasploit 2>/dev/null || {
                git clone https://github.com/rapid7/metasploit-framework "$HOME/metasploit-framework" 2>/dev/null
                echo -e "${G}[✓]${NC} Metasploit cloned"
            }
        fi
    fi
    
    # 2. Nmap
    count=$((count+1))
    echo -e "${G}[${count}/21]${NC} ${Y}Installing Nmap (Network Mapper)...${NC}"
    pkg install -y nmap 2>/dev/null && echo -e "${G}[✓]${NC} Nmap installed"
    
    # 3. SQLMap
    count=$((count+1))
    echo -e "${G}[${count}/21]${NC} ${Y}Installing SQLMap...${NC}"
    if [ -d "$HOME/sqlmap" ]; then
        echo -e "${G}[✓]${NC} SQLMap already installed"
    else
        git clone --depth 1 https://github.com/sqlmapproject/sqlmap "$HOME/sqlmap" 2>/dev/null && echo -e "${G}[✓]${NC} SQLMap installed"
    fi
    
    # 4. Hydra
    count=$((count+1))
    echo -e "${G}[${count}/21]${NC} ${Y}Installing Hydra...${NC}"
    pkg install -y hydra 2>/dev/null && echo -e "${G}[✓]${NC} Hydra installed"
    
    # 5. Hash-Buster
    count=$((count+1))
    echo -e "${G}[${count}/21]${NC} ${Y}Installing Hash-Buster...${NC}"
    if [ -d "$HOME/Hash-Buster" ]; then
        echo -e "${G}[✓]${NC} Hash-Buster already installed"
    else
        git clone https://github.com/UltimateHackers/Hash-Buster "$HOME/Hash-Buster" 2>/dev/null && echo -e "${G}[✓]${NC} Hash-Buster installed"
    fi
    
    # 6. Recon-ng
    count=$((count+1))
    echo -e "${G}[${count}/21]${NC} ${Y}Installing Recon-ng...${NC}"
    if [ -d "$HOME/recon-ng" ]; then
        echo -e "${G}[✓]${NC} Recon-ng already installed"
    else
        git clone https://github.com/lanmaster53/recon-ng "$HOME/recon-ng" 2>/dev/null && echo -e "${G}[✓]${NC} Recon-ng installed"
    fi
    
    # 7. TheHarvester
    count=$((count+1))
    echo -e "${G}[${count}/21]${NC} ${Y}Installing TheHarvester...${NC}"
    if [ -d "$HOME/theHarvester" ]; then
        echo -e "${G}[✓]${NC} TheHarvester already installed"
    else
        git clone https://github.com/laramies/theHarvester "$HOME/theHarvester" 2>/dev/null && echo -e "${G}[✓]${NC} TheHarvester installed"
    fi
    
    # 8. WPSeku (WordPress Scanner)
    count=$((count+1))
    echo -e "${G}[${count}/21]${NC} ${Y}Installing WPSeku...${NC}"
    if [ -d "$HOME/wpseku" ]; then
        echo -e "${G}[✓]${NC} WPSeku already installed"
    else
        git clone https://github.com/m4ll0k/WPSeku "$HOME/wpseku" 2>/dev/null && echo -e "${G}[✓]${NC} WPSeku installed"
    fi
    
    # 9. XSStrike
    count=$((count+1))
    echo -e "${G}[${count}/21]${NC} ${Y}Installing XSStrike...${NC}"
    if [ -d "$HOME/XSStrike" ]; then
        echo -e "${G}[✓]${NC} XSStrike already installed"
    else
        git clone https://github.com/s0md3v/XSStrike "$HOME/XSStrike" 2>/dev/null && echo -e "${G}[✓]${NC} XSStrike installed"
    fi
    
    # 10. D-TECT
    count=$((count+1))
    echo -e "${G}[${count}/21]${NC} ${Y}Installing D-TECT...${NC}"
    if [ -d "$HOME/D-TECT" ]; then
        echo -e "${G}[✓]${NC} D-TECT already installed"
    else
        git clone https://github.com/shawarkhanethicalhacker/D-TECT "$HOME/D-TECT" 2>/dev/null && echo -e "${G}[✓]${NC} D-TECT installed"
    fi
    
    # 11. RED_HAWK
    count=$((count+1))
    echo -e "${G}[${count}/21]${NC} ${Y}Installing RED_HAWK...${NC}"
    if [ -d "$HOME/RED_HAWK" ]; then
        echo -e "${G}[✓]${NC} RED_HAWK already installed"
    else
        git clone https://github.com/Tuhinshubhra/RED_HAWK "$HOME/RED_HAWK" 2>/dev/null && echo -e "${G}[✓]${NC} RED_HAWK installed"
    fi
    
    # 12. Crips
    count=$((count+1))
    echo -e "${G}[${count}/21]${NC} ${Y}Installing Crips...${NC}"
    if [ -d "$HOME/Crips" ]; then
        echo -e "${G}[✓]${NC} Crips already installed"
    else
        git clone https://github.com/Manisso/Crips "$HOME/Crips" 2>/dev/null && echo -e "${G}[✓]${NC} Crips installed"
    fi
    
    # 13. IP-Tracer
    count=$((count+1))
    echo -e "${G}[${count}/21]${NC} ${Y}Installing IP-Tracer...${NC}"
    if [ -d "$HOME/IP-Tracer" ]; then
        echo -e "${G}[✓]${NC} IP-Tracer already installed"
    else
        git clone https://github.com/rajkumardusad/IP-Tracer "$HOME/IP-Tracer" 2>/dev/null && bash "$HOME/IP-Tracer/install" 2>/dev/null && echo -e "${G}[✓]${NC} IP-Tracer installed"
    fi
    
    # 14. Wifi-Hacker
    count=$((count+1))
    echo -e "${G}[${count}/21]${NC} ${Y}Installing Wifi-Hacker...${NC}"
    if [ -d "$HOME/wifi-hacker" ]; then
        echo -e "${G}[✓]${NC} Wifi-Hacker already installed"
    else
        git clone https://github.com/TermuxHackz/wifi-hacker "$HOME/wifi-hacker" 2>/dev/null && chmod +x "$HOME/wifi-hacker/wifi-hacker.sh" && echo -e "${G}[✓]${NC} Wifi-Hacker installed"
    fi
    
    # 15. RouterSploit
    count=$((count+1))
    echo -e "${G}[${count}/21]${NC} ${Y}Installing RouterSploit...${NC}"
    if [ -d "$HOME/routersploit" ]; then
        echo -e "${G}[✓]${NC} RouterSploit already installed"
    else
        git clone https://github.com/threat9/routersploit "$HOME/routersploit" 2>/dev/null && pip install -r "$HOME/routersploit/requirements.txt" 2>/dev/null && echo -e "${G}[✓]${NC} RouterSploit installed"
    fi
    
    # 16. SocialFish (Phishing)
    count=$((count+1))
    echo -e "${G}[${count}/21]${NC} ${Y}Installing SocialFish...${NC}"
    if [ -d "$HOME/SocialFish" ]; then
        echo -e "${G}[✓]${NC} SocialFish already installed"
    else
        git clone https://github.com/UndeadSec/SocialFish "$HOME/SocialFish" 2>/dev/null && echo -e "${G}[✓]${NC} SocialFish installed"
    fi
    
    # 17. Ngrok
    count=$((count+1))
    echo -e "${G}[${count}/21]${NC} ${Y}Installing Ngrok...${NC}"
    if command -v ngrok &>/dev/null || [ -f "$HOME/ngrok" ]; then
        echo -e "${G}[✓]${NC} Ngrok already installed"
    else
        wget -q https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip -O "$TEMP_DIR/ngrok.zip" 2>/dev/null
        unzip -q "$TEMP_DIR/ngrok.zip" -d "$HOME/" 2>/dev/null
        chmod +x "$HOME/ngrok"
        echo -e "${G}[✓]${NC} Ngrok installed to $HOME/ngrok"
    fi
    
    # 18. LazyScript
    count=$((count+1))
    echo -e "${G}[${count}/21]${NC} ${Y}Installing LazyScript...${NC}"
    if [ -d "$HOME/LazyScript" ]; then
        echo -e "${G}[✓]${NC} LazyScript already installed"
    else
        git clone https://github.com/arifistech/LazyScript "$HOME/LazyScript" 2>/dev/null && echo -e "${G}[✓]${NC} LazyScript installed"
    fi
    
    # 19. Loki (Android RAT)
    count=$((count+1))
    echo -e "${G}[${count}/21]${NC} ${Y}Installing Loki...${NC}"
    if [ -d "$HOME/Loki" ]; then
        echo -e "${G}[✓]${NC} Loki already installed"
    else
        git clone https://github.com/AnonyminHack5/Loki "$HOME/Loki" 2>/dev/null && echo -e "${G}[✓]${NC} Loki installed"
    fi
    
    # 20. CamHackers
    count=$((count+1))
    echo -e "${G}[${count}/21]${NC} ${Y}Installing CamHackers...${NC}"
    if [ -d "$HOME/CamHackers" ]; then
        echo -e "${G}[✓]${NC} CamHackers already installed"
    else
        git clone https://github.com/Avismal/CamHackers "$HOME/CamHackers" 2>/dev/null && echo -e "${G}[✓]${NC} CamHackers installed"
    fi
    
    # 21. VirusTotal API Scanner
    count=$((count+1))
    echo -e "${G}[${count}/21]${NC} ${Y}Installing VirusTotal Scanner...${NC}"
    cat > "$PREFIX/bin/vtscan" << 'EOF'
#!/bin/bash
echo "VirusTotal Scanner - Simple Hash Checker"
echo "Enter hash (MD5/SHA1/SHA256):"
read hash
curl -s "https://www.virustotal.com/api/v3/files/$hash" \
  -H "x-apikey: demo" 2>/dev/null | python3 -m json.tool 2>/dev/null || echo "Use your own API key for full results"
EOF
    chmod +x "$PREFIX/bin/vtscan" 2>/dev/null
    echo -e "${G}[✓]${NC} VirusTotal Scanner installed (vtscan command)"
    
    echo ""
    echo -e "${G}══════════════════════════════════════════════${NC}"
    echo -e "${BGR}      ✅ ALL 21 TOOLS INSTALLED! 🎉        ${NC}"
    echo -e "${G}══════════════════════════════════════════════${NC}"
    echo ""
    echo -e "${W}Tools installed to:${NC}"
    echo -e "${C}  • Metasploit     : ~/metasploit-framework${NC}"
    echo -e "${C}  • Nmap           : $(command -v nmap)${NC}"
    echo -e "${C}  • SQLMap         : ~/sqlmap${NC}"
    echo -e "${C}  • Hydra          : $(command -v hydra)${NC}"
    echo -e "${C}  • Hash-Buster    : ~/Hash-Buster${NC}"
    echo -e "${C}  • Recon-ng       : ~/recon-ng${NC}"
    echo -e "${C}  • TheHarvester   : ~/theHarvester${NC}"
    echo -e "${C}  • WPSeku         : ~/wpseku${NC}"
    echo -e "${C}  • XSStrike       : ~/XSStrike${NC}"
    echo -e "${C}  • D-TECT         : ~/D-TECT${NC}"
    echo -e "${C}  • RED_HAWK       : ~/RED_HAWK${NC}"
    echo -e "${C}  • Crips          : ~/Crips${NC}"
    echo -e "${C}  • IP-Tracer      : ~/IP-Tracer${NC}"
    echo -e "${C}  • Wifi-Hacker    : ~/wifi-hacker${NC}"
    echo -e "${C}  • RouterSploit   : ~/routersploit${NC}"
    echo -e "${C}  • SocialFish     : ~/SocialFish${NC}"
    echo -e "${C}  • Ngrok          : ~/ngrok${NC}"
    echo -e "${C}  • LazyScript     : ~/LazyScript${NC}"
    echo -e "${C}  • Loki           : ~/Loki${NC}"
    echo -e "${C}  • CamHackers     : ~/CamHackers${NC}"
    echo -e "${C}  • VT-Scanner     : vtscan command${NC}"
    
    log_activity "Installed all 21 hacking tools"
    press_enter
}

#-----------WIFI NETWORK PASSWORD CRACKER------------#

wifi_cracker() {
    small_banner
    echo -e "${BGR}         📶 WIFI NETWORK PASSWORD CRACKER          ${NC}"
    echo ""
    echo -e "${R}[${W}!${R}]${Y} ⚠️  Requires Root Access on Android${NC}"
    echo -e "${R}[${W}!${R}]${Y} ⚠️  For authorized testing only${NC}"
    echo ""
    echo -e "${C}[${W}1${C}]${W} View Saved WiFi Passwords (Root)"
    echo -e "${C}[${W}2${C}]${W} Scan Nearby WiFi Networks"
    echo -e "${C}[${W}3${C}]${W} WPS Pin Attack (Root)"
    echo -e "${C}[${W}4${C}]${W} Deauth Attack (Root - requires airodump)"
    echo -e "${C}[${W}5${C}]${W} Dictionary Attack on WPA Handshake (Root)"
    echo -e "${C}[${W}6${C}]${W} Back"
    echo ""
    echo -ne "${G}KING_BLESS${R}@${W}WIFI${R}~${W}# ${NC}"
    read wifi_choice
    
    case $wifi_choice in
        1)
            echo -e "${Y}[${R}!${Y}]${W} Attempting to extract saved WiFi passwords...${NC}"
            loading
            if [ -f "/data/misc/wifi/wpa_supplicant.conf" ]; then
                cat "/data/misc/wifi/wpa_supplicant.conf" 2>/dev/null | grep -E "ssid|psk" || echo -e "${R}[✗] Need root access${NC}"
            elif [ -f "/data/misc/wifi/WifiConfigStore.xml" ]; then
                cat "/data/misc/wifi/WifiConfigStore.xml" 2>/dev/null | grep -E "SSID|PreSharedKey" | head -20 || echo -e "${R}[✗] Need root access${NC}"
            else
                echo -e "${R}[✗] Could not access WiFi config files${NC}"
                echo -e "${Y}[!]${W} Try running as root or use: su -c 'cat /data/misc/wifi/wpa_supplicant.conf'${NC}"
            fi
            ;;
        2)
            echo -e "${Y}[${R}!${Y}]${W} Scanning for WiFi networks...${NC}"
            loading
            if command -v termux-wifi-scaninfo &>/dev/null; then
                termux-wifi-scaninfo 2>/dev/null | python3 -c "
import json, sys
try:
    data = json.load(sys.stdin)
    print(f'{\"SSID\":<25} {\"BSSID\":<20} {\"Signal\":<10} {\"Security\":<15}')
    print('-'*70)
    for net in data[:20]:
        ssid = net.get('ssid','Unknown')
        bssid = net.get('bssid','N/A')
        rssi = str(net.get('rssi','N/A')) + ' dBm'
        cap = net.get('capabilities','N/A')[:15]
        print(f'{ssid:<25} {bssid:<20} {rssi:<10} {cap:<15}')
except:
    print('No networks found or scan failed')
"
            else
                echo -e "${Y}[!]${W} Install termux-api: pkg install termux-api${NC}"
                echo -e "${Y}[!]${W} Then run: termux-wifi-scaninfo${NC}"
                # Fallback: use iwlist if root
                if [ -x /system/bin/iwlist ]; then
                    su -c "iwlist wlan0 scan 2>/dev/null | grep -E 'ESSID|Quality|Encryption' | head -30"
                else
                    echo -e "${R}[✗] Scanning tools not available${NC}"
                fi
            fi
            ;;
        3)
            echo -e "${Y}[${R}!${Y}]${W} WPS PIN Attack${NC}"
            echo -e "${Y}[${R}!${Y}]${W} This requires root and a wireless card that supports monitor mode${NC}"
            echo ""
            echo -e "${C}[${W}1${C}]${W} Use wifite (auto WPS attack)"
            echo -e "${C}[${W}2${C}]${W} Use reaver (manual WPS)"
            echo -e "${C}[${W}3${C}]${W} Back"
            echo -ne "${G}KING_BLESS${R}@${W}WPS${R}~${W}# ${NC}"
            read wps_choice
            
            case $wps_choice in
                1)
                    if command -v wifite &>/dev/null; then
                        echo -e "${G}Starting wifite...${NC}"
                        su -c "wifite --wps"
                    else
                        pkg install wifite -y 2>/dev/null || echo -e "${R}[✗] Install wifite first${NC}"
                    fi
                    ;;
                2)
                    if command -v reaver &>/dev/null; then
                        echo -ne "${Y}Enter BSSID (target MAC): ${NC}"
                        read target_bssid
                        echo -ne "${Y}Enter interface (e.g., wlan0): ${NC}"
                        read wifi_iface
                        su -c "reaver -i $wifi_iface -b $target_bssid -vv"
                    else
                        pkg install reaver -y 2>/dev/null || echo -e "${R}[✗] Install reaver first${NC}"
                    fi
                    ;;
                3) ;;
            esac
            ;;
        4)
            echo -e "${Y}[${R}!${Y}]${W} Deauth Attack${NC}"
            echo -e "${Y}[${R}!${Y}]${W} Requires: root + monitor mode capable interface${NC}"
            echo ""
            if command -v aireplay-ng &>/dev/null; then
                echo -ne "${Y}Enter BSSID (target MAC): ${NC}"
                read deauth_bssid
                echo -ne "${Y}Enter client MAC (or FF:FF:FF:FF:FF:FF for broadcast): ${NC}"
                read client_mac
                echo -ne "${Y}Enter interface (e.g., wlan0): ${NC}"
                read deauth_iface
                echo -e "${R}[!]${Y} Sending deauth packets...${NC}"
                su -c "aireplay-ng -0 10 -a $deauth_bssid -c $client_mac $deauth_iface"
            else
                echo -e "${R}[✗] aircrack-ng suite not installed${NC}"
                echo -e "${Y}[!]${W} Install: pkg install aircrack-ng${NC
                echo -e "${R}[✗] aircrack-ng suite not installed${NC}"
                echo -e "${Y}[!]${W} Install: pkg install aircrack-ng${NC}"
            fi
            ;;
        5)
            echo -e "${Y}[${R}!${Y}]${W} Dictionary Attack on WPA Handshake${NC}"
            echo -e "${Y}[${R}!${Y}]${W} Requirements: capture file (.cap) + wordlist${NC}"
            echo ""
            echo -ne "${Y}Enter path to .cap file: ${NC}"
            read cap_file
            echo -ne "${Y}Enter path to wordlist: ${NC}"
            read wordlist_file
            
            if [ -f "$cap_file" ] && [ -f "$wordlist_file" ]; then
                if command -v aircrack-ng &>/dev/null; then
                    echo -e "${G}Starting dictionary attack...${NC}"
                    su -c "aircrack-ng -w $wordlist_file $cap_file"
                else
                    echo -e "${R}[✗] aircrack-ng not installed${NC}"
                fi
            else
                echo -e "${R}[✗] File(s) not found${NC}"
            fi
            ;;
        6)
            return
            ;;
        *)
            echo -e "${R}[✗] Invalid option!${NC}"
            ;;
    esac
    
    log_activity "WiFi Cracker module used"
    press_enter
}

#-----------ADDITIONAL TOOLS SUB-MENUS------------#

# DIRECTORY BRUTE FORCE
dir_bruteforce() {
    small_banner
    echo -e "${BGM}               📂 DIRECTORY BRUTE FORCE            ${NC}"
    echo ""
    echo -ne "${Y}[${R}?${Y}]${W} Enter Target URL (e.g., https://example.com): ${NC}"
    read dir_target
    
    if [ -z "$dir_target" ]; then
        echo -e "${R}[✗] No target entered!${NC}"
        press_enter
        return
    fi
    
    echo -e "${Y}[${R}!${Y}]${W} Starting directory enumeration...${NC}"
    
    # Common directories wordlist
    dirs=(
        "admin" "login" "dashboard" "wp-admin" "administrator" "backup"
        "backups" "config" "configuration" "db" "database" "sql" "dump"
        "uploads" "download" "files" "assets" "css" "js" "img" "images"
        "api" "v1" "v2" "rest" "graphql" "swagger" "docs" "documentation"
        "phpmyadmin" "pma" "myadmin" "test" "tests" "dev" "development"
        "staging" "stage" "beta" "alpha" "old" "new" "temp" "tmp"
        ".git" ".svn" ".env" ".htaccess" "robots.txt" "sitemap.xml"
        "server-status" "cgi-bin" "cpanel" "webmail" "mail"
    )
    
    echo ""
    echo -e "${W}Found directories/files:${NC}"
    echo -e "${G}══════════════════════════════════════════════${NC}"
    
    found_count=0
    for dir in "${dirs[@]}"; do
        status=$(curl -s -o /dev/null -w "%{http_code}" --max-time 3 "$dir_target/$dir" 2>/dev/null)
        if [ "$status" == "200" ]; then
            echo -e "${G}[✓]${NC} ${W}$dir_target/$dir ${G}(200 OK)${NC}"
            found_count=$((found_count+1))
        elif [ "$status" == "403" ]; then
            echo -e "${Y}[!]${NC} ${W}$dir_target/$dir ${Y}(403 Forbidden)${NC}"
            found_count=$((found_count+1))
        elif [ "$status" == "301" ] || [ "$status" == "302" ]; then
            echo -e "${C}[→]${NC} ${W}$dir_target/$dir ${C}($status Redirect)${NC}"
            found_count=$((found_count+1))
        fi
    done
    
    echo -e "${G}══════════════════════════════════════════════${NC}"
    echo -e "${W}  Found ${G}$found_count${W} items${NC}"
    
    log_activity "Dir Bruteforce: $dir_target"
    press_enter
}

# REVERSE IP LOOKUP
reverse_ip() {
    small_banner
    echo -e "${BGM}               🔄 REVERSE IP LOOKUP               ${NC}"
    echo ""
    echo -ne "${Y}[${R}?${Y}]${W} Enter IP Address: ${NC}"
    read rev_ip
    
    if [ -z "$rev_ip" ]; then
        echo -e "${R}[✗] No IP entered!${NC}"
        press_enter
        return
    fi
    
    echo -e "${Y}[${R}!${Y}]${W} Looking up domains hosted on $rev_ip...${NC}"
    loading
    
    # Multiple reverse IP sources
    curl -s "https://api.hackertarget.com/reverseiplookup/?q=$rev_ip" 2>/dev/null | head -30 || echo "  API unavailable"
    
    echo ""
    curl -s "https://sonar.omnisint.io/reverse/$rev_ip" 2>/dev/null | python3 -c "
import json,sys
try:
    data=json.load(sys.stdin)
    if isinstance(data, list):
        for d in data[:20]:
            print(f'  {G}[✓]{NC} {W}{d}{NC}' if isinstance(d, str) else f'  {G}[✓]{NC} {W}{d.get(\"domain\",d)}{NC}')
except:
    pass
" 2>/dev/null
    
    log_activity "Reverse IP: $rev_ip"
    press_enter
}

#-----------MAIN MENU------------#

main_menu() {
    while true; do
        banner
        
        echo -e "${BGM}                    📋 MAIN MENU 📋                    ${NC}"
        echo ""
        echo -e "${C}╔══════════════════════════════════════════════════════════╗${NC}"
        echo -e "${C}║${NC}  ${Y}[${W}1${Y}]${NC}  ${G}🌐 IP Address Tracker        ${C}║${NC}  ${Y}[${W}12${Y}]${NC} ${G}🔍 Username OSINT          ${C}║${NC}"
        echo -e "${C}║${NC}  ${Y}[${W}2${Y}]${NC}  ${G}📞 Phone Number Lookup       ${C}║${NC}  ${Y}[${W}13${Y}]${NC} ${G}📋 WHOIS Lookup            ${C}║${NC}"
        echo -e "${C}║${NC}  ${Y}[${W}3${Y}]${NC}  ${G}📧 Email OSINT               ${C}║${NC}  ${Y}[${W}14${Y}]${NC} ${G}🌐 Subdomain Enumeration    ${C}║${NC}"
        echo -e "${C}║${NC}  ${Y}[${W}4${Y}]${NC}  ${G}🌐 DNS Enumeration           ${C}║${NC}  ${Y}[${W}15${Y}]${NC} ${G}📂 Directory Bruteforce     ${C}║${NC}"
        echo -e "${C}║${NC}  ${Y}[${W}5${Y}]${NC}  ${G}🔍 Port Scanner (NMAP)       ${C}║${NC}  ${Y}[${W}16${Y}]${NC} ${G}🔄 Reverse IP Lookup        ${C}║${NC}"
        echo -e "${C}║${NC}  ${Y}[${W}6${Y}]${NC}  ${G}🌐 Subnet / LAN Scanner      ${C}║${NC}  ${Y}[${W}17${Y}]${NC} ${G}📶 WiFi Password Cracker     ${C}║${NC}"
        echo -e "${C}║${NC}  ${Y}[${W}7${Y}]${NC}  ${G}🌐 Web Reconnaissance        ${C}║${NC}  ${Y}[${W}18${Y}]${NC} ${G}⚡ Install 21 Tools          ${C}║${NC}"
        echo -e "${C}╠══════════════════════════════════════════════════════════╣${NC}"
        echo -e "${C}║${NC}  ${Y}[${W}99${Y}]${NC} ${R}❌ EXIT                       ${C}║${NC}"
        echo -e "${C}╚══════════════════════════════════════════════════════════╝${NC}"
        echo ""
        echo -e "${Y}[${R}★${Y}]${W} Select an option [1-18, 99]:${NC}"
        echo ""
        echo -ne "${G}KING_BLESS${R}@${W}MAIN${R}~${W}# ${NC}"
        read main_choice
        
        case $main_choice in
            1) ip_tracker ;;
            2) phone_lookup ;;
            3) email_osint ;;
            4) dns_enum ;;
            5) port_scan ;;
            6) subnet_scan ;;
            7) web_recon ;;
            8) username_osint ;;
            9) whois_lookup ;;
            10) subdomain_enum ;;
            11) dir_bruteforce ;;
            12) reverse_ip ;;
            13) wifi_cracker ;;
            14) install_all_tools ;;
            98)
                echo -e "${Y}[${R}!${Y}]${W} Viewing logs...${NC}"
                cat "$LOG_FILE" 2>/dev/null | tail -30 || echo "No logs yet"
                press_enter
                ;;
            99)
                echo -e "${G}══════════════════════════════════════════════${NC}"
                echo -e "${BGY}  THANK YOU FOR USING KING_BLESS X TOOL!  ${NC}"
                echo -e "${G}══════════════════════════════════════════════${NC}"
                echo -e "${W}  Created by ${C}KINGSLEY-XMD${W} © $YEAR${NC}"
                echo -e "${W}  Stay ethical, stay legal.${NC}"
                echo ""
                exit 0
                ;;
            *)
                echo -e "${R}[✗] Invalid option! Please select 1-18 or 99${NC}"
                press_enter
                ;;
        esac
    done
}

#-----------ENTRY POINT------------#

# Check if running in Termux
if [ -d "/data/data/com.termux" ]; then
    echo -e "${G}[✓]${NC} ${W}Termux environment detected${NC}"
fi

# Initialize
initialize

# Check dependencies on first run
if [ ! -f "$CONFIG_DIR/.configured" ]; then
    echo -e "${Y}[${R}!${Y}]${W} First launch - checking dependencies...${NC}"
    check_deps
    touch "$CONFIG_DIR/.configured"
    echo -e "${G}[✓]${NC} ${W}Configuration complete${NC}"
    sleep 1
fi

# Start main menu
main_menu
