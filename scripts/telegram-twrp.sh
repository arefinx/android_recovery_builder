#!/bin/bash

# Telegram Token
TG_CHAT_ID="-1001824198034"
TG_BOT_TOKEN="6429169464:AAE0lVM_q-lkpGJMgC1DPu2bcGqdCyn-1fg"

# Function definitions

# tg_sendinfo - sends text through telegram
tg_sendinfo() {
	curl -s "https://api.telegram.org/bot$TG_BOT_TOKEN/sendMessage" \
		-F parse_mode=html \
		-F text="${1}" \
		-F chat_id="${TG_CHAT_ID}" &> /dev/null
}
tg_sendinfo "-- TWRP Build Triggered By Arefin --"
