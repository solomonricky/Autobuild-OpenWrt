sed -i "s/system.@system[-1].timezone='UTC'/system.@system[-1].zonename='Asia/Kuala Lumpur'/g" package/base-files/files/bin/config_generate
git clone https://github.com/brvphoenix/luci-app-wrtbwmon.git package/luci-app-wrtbwmon
git clone https://github.com/brvphoenix/wrtbwmon.git package/wrtbwmon