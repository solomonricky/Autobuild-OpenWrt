# Bandwidth Monitor
rm -rf ./feeds/luci/applications/luci-app-wrtbwmon
git clone -b master --depth 1 https://github.com/brvphoenix/wrtbwmon.git package/new/wrtbwmon
git clone -b master --depth 1 https://github.com/brvphoenix/luci-app-wrtbwmon.git package/new/luci-app-wrtbwmon

# Hostname
sed -i "s|system.@system[-1].hostname='OpenWrt'|system.@system[-1].hostname='Redmi-AX6'|g" package/base-files/files/bin/config_generate

# Timezone and Zonename
sed -i "s|system.@system\\[-1\\].timezone='UTC'|system.@system\\[-1\\].timezone='<+8>-8'\\
                set system.@system[-1].zonename='Asia/Kuala Lumpur'|g" package/base-files/files/bin/config_generate

