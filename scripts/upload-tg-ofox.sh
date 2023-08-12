#!/bin/bash

TG_CHAT_ID="-1001824198034"
TG_BOT_TOKEN="6429169464:AAE0lVM_q-lkpGJMgC1DPu2bcGqdCyn-1fg"

tg_pushzip() {
    curl -F document=@"$1"  "https://api.telegram.org/bot$TG_BOT_TOKEN/sendDocument" \
            -F chat_id=$TG_CHAT_ID \
            -F caption="$2" \
            -F parse_mode=html &> /dev/null
}

tg_pushzip ${GITHUB_WORKSPACE}/out/target/product/mojito/OrangeFox*.img
tg_pushzip ${GITHUB_WORKSPACE}/out/target/product/mojito/OrangeFox*.zip
