#!/bin/bash

# Telegram Token
TG_CHAT_ID="-1001824198034"
TG_BOT_TOKEN="6429169464:AAE0lVM_q-lkpGJMgC1DPu2bcGqdCyn-1fg"

curl -X POST "https://api.telegram.org/bot$TG_BOT_TOKEN/sendMessage" -d "chat_id=$TG_CHAT_ID&text=\`TWRP Build Triggered by Arefin\`&parse_mode=Markdown"
