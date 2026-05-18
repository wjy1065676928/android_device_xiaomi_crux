#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

	export TW_DEFAULT_LANGUAGE="zh_CN"
    export OF_DEFAULT_TIMEZONE="UTC+8"
	export LC_ALL="C"
	export ALLOW_MISSING_DEPENDENCIES=true

	echo -e "\x1b[96mmondrian: 开始添加OrangeFox Vars...\x1b[m"
	## 构建信息
	# 设置显示在关于页面里的维护人员名称
	export OF_MAINTAINER=wjy1214
	# 设置版本号为日期
	export FOX_MAINTAINER_PATCH_VERSION=$(date +%y%m%d)

    export OF_STATUS_INDENT_LEFT=48
    export OF_STATUS_INDENT_RIGHT=48

	## 添加功能
	# 使用完整版getprop命令
	export FOX_REPLACE_TOOLBOX_GETPROP=1
	# 支持tar命令
	export FOX_USE_TAR_BINARY=1
	# 支持sed命令
    export FOX_USE_SED_BINARY=1
	# 支持lz4命令
	export FOX_USE_LZ4_BINARY=1
	# 支持zstd命令
	export FOX_USE_ZSTD_BINARY=1
	# 支持date命令
	export FOX_USE_DATE_BINARY=1
	# 使用bash代替sh和ash
	export FOX_USE_BASH_SHELL=1
	export FOX_ASH_IS_BASH=1
	# 使用完整版grep命令
	export FOX_USE_GREP_BINARY=1
	# 支持lzma, xz命令
	export FOX_USE_XZ_UTILS=1
	# 使用橙狐编译的NANO编辑器
	# export FOX_USE_NANO_EDITOR=1
	# 添加phhusson's lptools工具
	export OF_ENABLE_LPTOOLS=1
    #wjy1214
    export FOX_USE_BUSYBOX_BINARY=1

	## 添加橙狐特殊处理
    #wjy1214
    export OF_PATCH_AVB20=1 
	export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=1
	export FOX_SETTINGS_ROOT_DIRECTORY=/persist/Fox
	export FOX_MISCELLANEOUS_ROOT_DIRECTORY=/persist

	# 跳过FBE解密流程（防止卡在橙狐LOGO或Redmi/Mi LOGO界面）
	# export OF_SKIP_FBE_DECRYPTION=1
	# 当ROM大于等于指定安卓SDK等级时，跳过FBE解密流程
	# export OF_SKIP_FBE_DECRYPTION_SDKVERSION=31
	# 防止橙狐在解密后重新运行自启动进程
	export OF_NO_RELOAD_AFTER_DECRYPTION=1
	# 删除zip包里的AromaFM（有的设备用不了）
	export FOX_DELETE_AROMAFM=1

	## 硬件功能设定
	# 没有绿色led
	export OF_USE_GREEN_LED=0

    export OF_ENABLE_FRP_ADDON=1

	echo -e "\x1b[96mmondrian: 当你看到这个消息的时候，所有的OrangeFox Var已经添加完毕！\x1b[m"