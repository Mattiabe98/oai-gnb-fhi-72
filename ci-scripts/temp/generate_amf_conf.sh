# prompt has been removed for easier Ctrl+C Ctrl+V
# please update the following information according to your configuration

INSTANCE=1
PREFIX='/openair-amf/etc'

declare -A AMF_CONF

AMF_CONF[@INSTANCE@]=$INSTANCE
AMF_CONF[@PID_DIRECTORY@]='/var/run'

AMF_CONF[@MCC@]='208'
AMF_CONF[@MNC@]='95'
AMF_CONF[@REGION_ID@]='128'
AMF_CONF[@AMF_SET_ID@]='1'

AMF_CONF[@SERVED_GUAMI_MCC_0@]='208'
AMF_CONF[@SERVED_GUAMI_MNC_0@]='95'
AMF_CONF[@SERVED_GUAMI_REGION_ID_0@]='128'
AMF_CONF[@SERVED_GUAMI_AMF_SET_ID_0@]='1'
AMF_CONF[@SERVED_GUAMI_MCC_1@]='460'
AMF_CONF[@SERVED_GUAMI_MNC_1@]='11'
AMF_CONF[@SERVED_GUAMI_REGION_ID_1@]='10'
AMF_CONF[@SERVED_GUAMI_AMF_SET_ID_1@]='1'

AMF_CONF[@PLMN_SUPPORT_MCC@]='208'
AMF_CONF[@PLMN_SUPPORT_MNC@]='95'
AMF_CONF[@PLMN_SUPPORT_TAC@]='0xa000'
AMF_CONF[@SST_0@]='222'
AMF_CONF[@SD_0@]='123'
AMF_CONF[@SST_1@]='1'
AMF_CONF[@SD_1@]='12'

AMF_CONF[@AMF_INTERFACE_NAME_FOR_NGAP@]='CI_NGAP_IF_NAME'
AMF_CONF[@AMF_INTERFACE_NAME_FOR_N11@]='CI_N11_IF_NAME'

AMF_CONF[@SMF_INSTANCE_ID_0@]='1'
AMF_CONF[@SMF_IPV4_ADDR_0@]='CI_SMF0_IP_ADDRESS'
AMF_CONF[@SMF_HTTP_VERSION_0@]='v1'
AMF_CONF[@SMF_INSTANCE_ID_1@]='2'
AMF_CONF[@SMF_IPV4_ADDR_1@]='CI_SMF1_IP_ADDRESS'
AMF_CONF[@SMF_HTTP_VERSION_1@]='v1'
  

AMF_CONF[@MYSQL_SERVER@]='CI_MYSQL_IP_ADDRESS'
AMF_CONF[@MYSQL_USER@]='root'
AMF_CONF[@MYSQL_PASS@]='linux'
AMF_CONF[@MYSQL_DB@]='oai_db'
AMF_CONF[@OPERATOR_KEY@]='63bfa50ee6523365ff14c1f45f88737d'

for K in "${!AMF_CONF[@]}"; do 
  egrep -lRZ "$K" $PREFIX/amf.conf | xargs -0 -l sed -i -e "s|$K|${AMF_CONF[$K]}|g"
  ret=$?;[[ ret -ne 0 ]] && echo "Tried to replace $K with ${AMF_CONF[$K]}"
done

echo "AMF Configuration Successful"