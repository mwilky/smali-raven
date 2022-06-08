.class public Lcom/android/mwilky/Renovate;
.super Ljava/lang/Object;
.source "Renovate.java"


# static fields
.field public static mBatteryIconColor:I

.field public static mBatteryPercentColor:I

.field public static mBlockPowerMenuKeyguard:Z

.field public static mBluetoothIconColor:I

.field public static mClockColor:I

.field public static mClockPosition:I

.field public static mClockShowSeconds:Z

.field public static mDarkIconColor:I

.field public static mDisableLockscreenLargeClock:Z

.field public static mDisableQsLockscreen:Z

.field public static mDoubleTapStatusbarSleep:Z

.field public static mExpandedNotifications:Z

.field public static mGlobalStatusbarIconColor:I

.field public static mGlobalStatusbarIconColorLs:I

.field public static mGlobalStatusbarIconColorQs:I

.field public static mHideLockscreenShortcuts:Z

.field public static mHideLockscreenStatusbar:Z

.field public static mHideQsBuildNumber:Z

.field public static mLinkAllStatusbarColours:Z

.field public static mLocationIconColor:I

.field public static mLsBatteryIconColor:I

.field public static mLsBatteryPercentColor:I

.field public static mLsBluetoothIconColor:I

.field public static mLsCarrierTextColor:I

.field public static mLsLocationIconColor:I

.field public static mLsMiscColor:I

.field public static mLsSignalIconColor:I

.field public static mLsVolumeIconColor:I

.field public static mLsWifiIconColor:I

.field public static mMaxNotifications:I

.field public static mNotificationIconColor:I

.field public static mNotificationTextColor:I

.field public static mNotificationTextColorUseAccent:Z

.field public static mQQsBrightnesSlider:Z

.field public static mQQsLabel:Z

.field public static mQQsMaxTiles:I

.field public static mQQsRows:I

.field public static mQQsSecondaryLabel:Z

.field public static mQsAlarmIconColor:I

.field public static mQsBatteryIconColor:I

.field public static mQsBatteryPercentColor:I

.field public static mQsBluetoothIconColor:I

.field public static mQsBrightnessSliderCornerRadius:I

.field public static mQsBrightnessSliderHeight:I

.field public static mQsBrightnessSliderPosition:I

.field public static mQsCarrierTextColor:I

.field public static mQsClockColor:I

.field public static mQsColumns:I

.field public static mQsDateColor:I

.field public static mQsLocationIconColor:I

.field public static mQsMiscColor:I

.field public static mQsRows:I

.field public static mQsSignalIconColor:I

.field public static mQsStyle:I

.field public static mQsTileCornerRadiusActive:I

.field public static mQsTileCornerRadiusInactive:I

.field public static mQsTileOutlineActive:Z

.field public static mQsTileOutlineColorActive:I

.field public static mQsTileOutlineColorInactive:I

.field public static mQsTileOutlineInactive:Z

.field public static mQsTileOutlineUseAccentActive:Z

.field public static mQsTileOutlineUseAccentInactive:Z

.field public static mQsTileOutlineWidthActive:I

.field public static mQsTileOutlineWidthInactive:I

.field public static mQsVibration:Z

.field public static mQsVolumeIconColor:I

.field public static mQsWifiIconColor:I

.field public static mQuickQsPulldown:I

.field public static mRiceType:I

.field public static mScrambleKeypad:Z

.field public static mSignalIconColor:I

.field public static mSmartPulldown:I

.field public static mStatusbarBrightnessControl:Z

.field public static mStatusbarMiscColor:I

.field public static mUnlockNotificationColors:Z

.field public static mUseAccentForLsIcons:Z

.field public static mUseAccentForQsIcons:Z

.field public static mUseAccentForStatusbarIcons:Z

.field public static mVolumeIconColor:I

.field public static mWifiIconColor:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIconColorFromSlotName(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p0, "SlotName"    # Ljava/lang/String;
    .param p1, "Tag"    # Ljava/lang/String;

    .line 344
    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 345
    .local v0, "Context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 346
    .local v1, "ContentResolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_be

    .line 347
    const-string/jumbo v2, "statusbar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "volume"

    const-string v4, "mute"

    const-string v5, "location"

    const-string v6, "bluetooth"

    if-eqz v2, :cond_4b

    .line 348
    if-eqz p0, :cond_27

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 349
    sget v2, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    return v2

    .line 350
    :cond_27
    if-eqz p0, :cond_32

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 351
    sget v2, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    return v2

    .line 352
    :cond_32
    if-eqz p0, :cond_3d

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 353
    sget v2, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    return v2

    .line 354
    :cond_3d
    if-eqz p0, :cond_48

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 355
    sget v2, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    return v2

    .line 357
    :cond_48
    sget v2, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    return v2

    .line 359
    :cond_4b
    const-string v2, "qs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 360
    if-eqz p0, :cond_5e

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 361
    sget v2, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    return v2

    .line 362
    :cond_5e
    if-eqz p0, :cond_69

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 363
    sget v2, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    return v2

    .line 364
    :cond_69
    if-eqz p0, :cond_76

    const-string v2, "alarm_clock"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 365
    sget v2, Lcom/android/mwilky/Renovate;->mQsAlarmIconColor:I

    return v2

    .line 366
    :cond_76
    if-eqz p0, :cond_81

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 367
    sget v2, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    return v2

    .line 368
    :cond_81
    if-eqz p0, :cond_8c

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 369
    sget v2, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    return v2

    .line 371
    :cond_8c
    sget v2, Lcom/android/mwilky/Renovate;->mQsMiscColor:I

    return v2

    .line 373
    :cond_8f
    const-string v2, "lockscreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 374
    if-eqz p0, :cond_a2

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 375
    sget v2, Lcom/android/mwilky/Renovate;->mLsLocationIconColor:I

    return v2

    .line 377
    :cond_a2
    sget v2, Lcom/android/mwilky/Renovate;->mLsMiscColor:I

    return v2

    .line 382
    :cond_a5
    if-eqz p0, :cond_b0

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 383
    sget v2, Lcom/android/mwilky/Renovate;->mLsVolumeIconColor:I

    return v2

    .line 384
    :cond_b0
    if-eqz p0, :cond_bb

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 385
    sget v2, Lcom/android/mwilky/Renovate;->mLsBluetoothIconColor:I

    return v2

    .line 387
    :cond_bb
    sget v2, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    return v2

    .line 391
    :cond_be
    sget v2, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    return v2
.end method

.method public static isEmptyString(Ljava/lang/String;)Z
    .registers 3
    .param p0, "text"    # Ljava/lang/String;

    .line 552
    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public static setClockPosition(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_clock_position"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mClockPosition:I

    .line 128
    return-void
.end method

.method public static setClockShowSeconds(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 132
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_clock_seconds"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    move v2, v3

    :cond_10
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mClockShowSeconds:Z

    .line 133
    return-void
.end method

.method public static setDisableLockscreenLargeClock(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 445
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 446
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_disable_lockscreen_large_clock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    move v2, v3

    :cond_10
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mDisableLockscreenLargeClock:Z

    .line 447
    return-void
.end method

.method public static setDisableQsLockscreen(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 439
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 440
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_disable_qs_lockscreen"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    move v2, v3

    :cond_10
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mDisableQsLockscreen:Z

    .line 442
    return-void
.end method

.method public static setDoubleTapStatusbarSleep(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 428
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_double_tap_sleep"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    move v2, v3

    :cond_10
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mDoubleTapStatusbarSleep:Z

    .line 430
    return-void
.end method

.method public static setExpandedNotifications(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 422
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 423
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_expanded_notifications"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    move v2, v3

    :cond_10
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mExpandedNotifications:Z

    .line 424
    return-void
.end method

.method public static setHideLockscreenShortcuts(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 411
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 412
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_hide_lockscreen_shortcuts"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    move v2, v3

    :cond_10
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mHideLockscreenShortcuts:Z

    .line 413
    return-void
.end method

.method public static setHideLockscreenStatusbar(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 406
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 407
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_hide_lockscreen_statusbar"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    move v2, v3

    :cond_10
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mHideLockscreenStatusbar:Z

    .line 408
    return-void
.end method

.method public static setHideQsBuildNumber(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 465
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 466
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_hide_qs_build_number"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    move v2, v3

    :cond_10
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mHideQsBuildNumber:Z

    .line 467
    return-void
.end method

.method public static setKeyguardPower(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 556
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 557
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_block_power_menu_keyguard"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    move v2, v3

    :cond_10
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mBlockPowerMenuKeyguard:Z

    .line 558
    return-void
.end method

.method public static setMaxNotifications(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 433
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 434
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_max_notifications"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mMaxNotifications:I

    .line 436
    return-void
.end method

.method public static setNotificationTextColors(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 566
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 567
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/android/mwilky/Renovate;->setRiceType(Landroid/content/Context;)V

    .line 568
    const-string/jumbo v1, "tweaks_unlock_notification_colors"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_14

    move v1, v3

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mUnlockNotificationColors:Z

    .line 569
    const-string/jumbo v1, "tweaks_notification_text_accent"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_21

    move v2, v3

    :cond_21
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mNotificationTextColorUseAccent:Z

    .line 570
    if-eqz v2, :cond_30

    sget v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-ne v1, v3, :cond_30

    .line 571
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationTextColor:I

    goto :goto_3a

    .line 573
    :cond_30
    const/4 v1, -0x1

    const-string/jumbo v2, "tweaks_notification_text_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationTextColor:I

    .line 575
    :goto_3a
    return-void
.end method

.method public static setQsBrightnessSliderPosition(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 450
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 452
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_qs_brightness_slider_position"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBrightnessSliderPosition:I

    .line 453
    const-string/jumbo v1, "tweaks_qqs_brightness_slider"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_19

    move v2, v3

    :cond_19
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mQQsBrightnesSlider:Z

    .line 454
    return-void
.end method

.method public static setQsBrightnessSliderTweaks(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 498
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 499
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "!"

    const/16 v2, 0x47

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBrightnessSliderCornerRadius:I

    .line 500
    const-string/jumbo v1, "tweaks_qs_brightness_slider_height"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBrightnessSliderHeight:I

    .line 501
    return-void
.end method

.method public static setQsTileLayout(Landroid/content/Context;)V
    .registers 9
    .param p0, "Context"    # Landroid/content/Context;

    .line 504
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 505
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_qs_columns"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mQsColumns:I

    .line 506
    const-string/jumbo v3, "tweaks_qqs_rows"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mQQsRows:I

    .line 507
    const-string/jumbo v3, "tweaks_qs_rows"

    const/4 v4, 0x4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/mwilky/Renovate;->mQsRows:I

    .line 508
    const-string/jumbo v5, "tweaks_qqs_label"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2e

    move v5, v7

    goto :goto_2f

    :cond_2e
    move v5, v6

    :goto_2f
    sput-boolean v5, Lcom/android/mwilky/Renovate;->mQQsLabel:Z

    .line 509
    const-string/jumbo v5, "tweaks_qqs_secondary_label"

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_3b

    goto :goto_3c

    :cond_3b
    move v7, v6

    :goto_3c
    sput-boolean v7, Lcom/android/mwilky/Renovate;->mQQsSecondaryLabel:Z

    .line 510
    sget v5, Lcom/android/mwilky/Renovate;->mQsColumns:I

    sget v7, Lcom/android/mwilky/Renovate;->mQQsRows:I

    mul-int/2addr v5, v7

    sput v5, Lcom/android/mwilky/Renovate;->mQQsMaxTiles:I

    .line 512
    const-string/jumbo v5, "tweaks_qs_style"

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/mwilky/Renovate;->mQsStyle:I

    .line 516
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 518
    .local v5, "QSColumns":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mwilky/Renovate;->isEmptyString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 519
    sget v6, Lcom/android/mwilky/Renovate;->mQsStyle:I

    if-nez v6, :cond_60

    .line 520
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_63

    .line 522
    :cond_60
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 528
    :cond_63
    :goto_63
    sget v2, Lcom/android/mwilky/Renovate;->mQsRows:I

    sget v6, Lcom/android/mwilky/Renovate;->mQQsRows:I

    if-ge v2, v6, :cond_6c

    .line 529
    invoke-static {v0, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 532
    :cond_6c
    sget v2, Lcom/android/mwilky/Renovate;->mQsStyle:I

    if-nez v2, :cond_77

    .line 533
    sget v2, Lcom/android/mwilky/Renovate;->mQsColumns:I

    if-le v2, v4, :cond_77

    .line 534
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 539
    :cond_77
    sget v2, Lcom/android/mwilky/Renovate;->mQsStyle:I

    if-lez v2, :cond_8b

    .line 540
    sget v2, Lcom/android/mwilky/Renovate;->mQsColumns:I

    if-ge v2, v4, :cond_82

    .line 541
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 544
    :cond_82
    sget v2, Lcom/android/mwilky/Renovate;->mQsColumns:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_8b

    .line 545
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 549
    :cond_8b
    return-void
.end method

.method public static setQsTileTweaks(Landroid/content/Context;)V
    .registers 7
    .param p0, "Context"    # Landroid/content/Context;

    .line 470
    invoke-static {p0}, Lcom/android/mwilky/Renovate;->setRiceType(Landroid/content/Context;)V

    .line 471
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 472
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_qs_tile_outline_active"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_14

    move v1, v3

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineActive:Z

    .line 473
    const-string/jumbo v1, "tweaks_qs_tile_outline_inactive"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_22

    move v1, v3

    goto :goto_23

    :cond_22
    move v1, v2

    :goto_23
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineInactive:Z

    .line 474
    const-string/jumbo v1, "tweaks_qs_tile_outline_width_active"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineWidthActive:I

    .line 475
    const-string/jumbo v1, "tweaks_qs_tile_outline_width_inactive"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineWidthInactive:I

    .line 476
    const-string/jumbo v1, "tweaks_qs_tile_outline_accent_active"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_42

    move v1, v3

    goto :goto_43

    :cond_42
    move v1, v2

    :goto_43
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineUseAccentActive:Z

    .line 477
    const-string/jumbo v1, "tweaks_qs_tile_outline_accent_inactive"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_4f

    move v2, v3

    :cond_4f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mQsTileOutlineUseAccentInactive:Z

    .line 478
    sget v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    const-string/jumbo v2, "tweaks_qs_tile_outline_color_inactive"

    const-string/jumbo v4, "tweaks_qs_tile_outline_color_active"

    const/4 v5, -0x1

    if-ne v1, v3, :cond_7f

    .line 479
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineUseAccentActive:Z

    if-eqz v1, :cond_67

    .line 480
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineColorActive:I

    goto :goto_6d

    .line 482
    :cond_67
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineColorActive:I

    .line 484
    :goto_6d
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineUseAccentInactive:Z

    if-eqz v1, :cond_78

    .line 485
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineColorInactive:I

    goto :goto_8b

    .line 487
    :cond_78
    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineColorInactive:I

    goto :goto_8b

    .line 490
    :cond_7f
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineColorActive:I

    .line 491
    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineColorInactive:I

    .line 493
    :goto_8b
    const/16 v1, 0x64

    const-string/jumbo v2, "tweaks_qs_tile_corner_radius_active"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileCornerRadiusActive:I

    .line 494
    const/16 v1, 0x14

    const-string/jumbo v2, "tweaks_qs_tile_corner_radius_inactive"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileCornerRadiusInactive:I

    .line 495
    return-void
.end method

.method public static setQsVibration(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 416
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 417
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_qs_vibration"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    move v2, v3

    :cond_10
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mQsVibration:Z

    .line 419
    return-void
.end method

.method public static setQuickQsPulldown(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 142
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_qs_pulldown_list"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQuickQsPulldown:I

    .line 144
    return-void
.end method

.method public static setRiceType(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 395
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 396
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "rice_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    .line 398
    return-void
.end method

.method public static setScrambleKeypad(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 401
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 402
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_scramble_pin"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    move v2, v3

    :cond_10
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mScrambleKeypad:Z

    .line 403
    return-void
.end method

.method public static setSmartPulldown(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 137
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_smart_pulldown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mSmartPulldown:I

    .line 138
    return-void
.end method

.method public static setStatusbarBrightnessControl(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 561
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 562
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_statusbar_brightness_control"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    move v2, v3

    :cond_10
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mStatusbarBrightnessControl:Z

    .line 563
    return-void
.end method

.method public static setStatusbarIconColors(Landroid/content/Context;)V
    .registers 8
    .param p0, "Context"    # Landroid/content/Context;

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 149
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/android/mwilky/Renovate;->setRiceType(Landroid/content/Context;)V

    .line 151
    const-string/jumbo v1, "tweaks_accent_statusbar"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    move v3, v4

    goto :goto_15

    :cond_14
    move v3, v2

    :goto_15
    sput-boolean v3, Lcom/android/mwilky/Renovate;->mUseAccentForStatusbarIcons:Z

    .line 152
    const-string/jumbo v3, "tweaks_accent_statusbar_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_22

    move v5, v4

    goto :goto_23

    :cond_22
    move v5, v2

    :goto_23
    sput-boolean v5, Lcom/android/mwilky/Renovate;->mUseAccentForQsIcons:Z

    .line 153
    const-string/jumbo v5, "tweaks_accent_statusbar_ls"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_30

    move v6, v4

    goto :goto_31

    :cond_30
    move v6, v2

    :goto_31
    sput-boolean v6, Lcom/android/mwilky/Renovate;->mUseAccentForLsIcons:Z

    .line 155
    sget v6, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-eq v6, v4, :cond_40

    .line 156
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    :cond_40
    const-string/jumbo v1, "tweaks_global_statusbar_icon_color"

    const/4 v3, -0x1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColor:I

    .line 162
    const/high16 v1, -0x67000000

    const-string/jumbo v5, "tweaks_dark_icon_color"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mDarkIconColor:I

    .line 164
    const-string/jumbo v1, "tweaks_global_statusbar_icon_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColorQs:I

    .line 166
    const-string/jumbo v1, "tweaks_global_statusbar_icon_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColorLs:I

    .line 168
    const-string/jumbo v1, "tweaks_statusbar_link_all_colours"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_71

    move v2, v4

    :cond_71
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mLinkAllStatusbarColours:Z

    .line 171
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mUseAccentForStatusbarIcons:Z

    if-eqz v1, :cond_b4

    .line 172
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mClockColor:I

    .line 173
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    .line 174
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    .line 175
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationIconColor:I

    .line 176
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    .line 177
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    .line 178
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    .line 179
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    .line 180
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    .line 181
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    goto :goto_129

    .line 183
    :cond_b4
    sget v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-ne v1, v4, :cond_113

    .line 184
    const-string/jumbo v1, "tweaks_statusbar_clock_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mClockColor:I

    .line 185
    const-string/jumbo v1, "tweaks_statusbar_battery_percent_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    .line 186
    const-string/jumbo v1, "tweaks_battery_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    .line 187
    const-string/jumbo v1, "tweaks_notification_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationIconColor:I

    .line 188
    const-string/jumbo v1, "tweaks_wifi_signal_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    .line 189
    const-string/jumbo v1, "tweaks_mobile_signal_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    .line 190
    const-string/jumbo v1, "tweaks_bluetooth_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    .line 191
    const-string/jumbo v1, "tweaks_volume_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    .line 192
    const-string/jumbo v1, "tweaks_location_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    .line 193
    const-string/jumbo v1, "tweaks_statusbar_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    goto :goto_129

    .line 195
    :cond_113
    sget v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mClockColor:I

    .line 196
    sput v1, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    .line 197
    sput v1, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    .line 198
    sput v1, Lcom/android/mwilky/Renovate;->mNotificationIconColor:I

    .line 199
    sput v1, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    .line 200
    sput v1, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    .line 201
    sput v1, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    .line 202
    sput v1, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    .line 203
    sput v1, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    .line 204
    sput v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    .line 209
    :goto_129
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mUseAccentForQsIcons:Z

    if-eqz v1, :cond_177

    .line 210
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsCarrierTextColor:I

    .line 211
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAlarmIconColor:I

    .line 212
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    .line 213
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsClockColor:I

    .line 214
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBatteryPercentColor:I

    .line 215
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBatteryIconColor:I

    .line 216
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 217
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 218
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 219
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 220
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 221
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsMiscColor:I

    goto/16 :goto_259

    .line 223
    :cond_177
    sget v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-ne v1, v4, :cond_214

    .line 224
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mLinkAllStatusbarColours:Z

    if-eqz v1, :cond_1a7

    .line 225
    sget v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mQsCarrierTextColor:I

    .line 226
    sput v1, Lcom/android/mwilky/Renovate;->mQsAlarmIconColor:I

    .line 227
    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    .line 228
    sput v1, Lcom/android/mwilky/Renovate;->mQsClockColor:I

    .line 229
    sget v2, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsBatteryPercentColor:I

    .line 230
    sget v2, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsBatteryIconColor:I

    .line 231
    sget v2, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 232
    sget v2, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 233
    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 234
    sget v2, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 235
    sget v2, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 236
    sput v1, Lcom/android/mwilky/Renovate;->mQsMiscColor:I

    goto/16 :goto_259

    .line 238
    :cond_1a7
    const-string/jumbo v1, "tweaks_carrier_text_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsCarrierTextColor:I

    .line 239
    const-string/jumbo v1, "tweaks_alarm_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAlarmIconColor:I

    .line 240
    const-string/jumbo v1, "tweaks_statusbar_date_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    .line 241
    const-string/jumbo v1, "tweaks_statusbar_clock_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsClockColor:I

    .line 242
    const-string/jumbo v1, "tweaks_statusbar_battery_percent_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBatteryPercentColor:I

    .line 243
    const-string/jumbo v1, "tweaks_battery_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBatteryIconColor:I

    .line 244
    const-string/jumbo v1, "tweaks_bluetooth_icon_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 245
    const-string/jumbo v1, "tweaks_location_icon_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 246
    const-string/jumbo v1, "tweaks_volume_icon_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 247
    const-string/jumbo v1, "tweaks_mobile_signal_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 248
    const-string/jumbo v1, "tweaks_wifi_signal_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 249
    const-string/jumbo v1, "tweaks_qs_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsMiscColor:I

    goto :goto_259

    .line 252
    :cond_214
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mLinkAllStatusbarColours:Z

    if-eqz v1, :cond_23f

    .line 253
    sget v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mQsCarrierTextColor:I

    .line 254
    sput v1, Lcom/android/mwilky/Renovate;->mQsAlarmIconColor:I

    .line 255
    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    .line 256
    sput v1, Lcom/android/mwilky/Renovate;->mQsClockColor:I

    .line 257
    sget v2, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsBatteryPercentColor:I

    .line 258
    sget v2, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsBatteryIconColor:I

    .line 259
    sget v2, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 260
    sget v2, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 261
    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 262
    sget v2, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 263
    sget v2, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 264
    sput v1, Lcom/android/mwilky/Renovate;->mQsMiscColor:I

    goto :goto_259

    .line 266
    :cond_23f
    sget v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColorQs:I

    sput v1, Lcom/android/mwilky/Renovate;->mQsCarrierTextColor:I

    .line 267
    sput v1, Lcom/android/mwilky/Renovate;->mQsAlarmIconColor:I

    .line 268
    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    .line 269
    sput v1, Lcom/android/mwilky/Renovate;->mQsClockColor:I

    .line 270
    sput v1, Lcom/android/mwilky/Renovate;->mQsBatteryPercentColor:I

    .line 271
    sput v1, Lcom/android/mwilky/Renovate;->mQsBatteryIconColor:I

    .line 272
    sput v1, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 273
    sput v1, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 274
    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 275
    sput v1, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 276
    sput v1, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 277
    sput v1, Lcom/android/mwilky/Renovate;->mQsMiscColor:I

    .line 283
    :goto_259
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mUseAccentForLsIcons:Z

    if-eqz v1, :cond_295

    .line 284
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryPercentColor:I

    .line 285
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryIconColor:I

    .line 286
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsSignalIconColor:I

    .line 287
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsWifiIconColor:I

    .line 288
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsBluetoothIconColor:I

    .line 289
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsLocationIconColor:I

    .line 290
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsCarrierTextColor:I

    .line 291
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsVolumeIconColor:I

    .line 292
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsMiscColor:I

    goto/16 :goto_34e

    .line 294
    :cond_295
    sget v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-ne v1, v4, :cond_313

    .line 295
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mLinkAllStatusbarColours:Z

    if-eqz v1, :cond_2c1

    .line 296
    sget v1, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryPercentColor:I

    .line 297
    sget v1, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryIconColor:I

    .line 298
    sget v1, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsSignalIconColor:I

    .line 299
    sget v1, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsWifiIconColor:I

    .line 300
    sget v1, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBluetoothIconColor:I

    .line 301
    sget v1, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsVolumeIconColor:I

    .line 302
    sget v1, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsLocationIconColor:I

    .line 303
    sget v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsCarrierTextColor:I

    .line 304
    sput v1, Lcom/android/mwilky/Renovate;->mLsMiscColor:I

    goto/16 :goto_34e

    .line 306
    :cond_2c1
    const-string/jumbo v1, "tweaks_statusbar_battery_percent_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryPercentColor:I

    .line 307
    const-string/jumbo v1, "tweaks_battery_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryIconColor:I

    .line 308
    const-string/jumbo v1, "tweaks_mobile_signal_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsSignalIconColor:I

    .line 309
    const-string/jumbo v1, "tweaks_wifi_signal_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsWifiIconColor:I

    .line 310
    const-string/jumbo v1, "tweaks_bluetooth_icon_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsBluetoothIconColor:I

    .line 311
    const-string/jumbo v1, "tweaks_volume_icon_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsVolumeIconColor:I

    .line 312
    const-string/jumbo v1, "tweaks_location_icon_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsLocationIconColor:I

    .line 313
    const-string/jumbo v1, "tweaks_carrier_text_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsCarrierTextColor:I

    .line 314
    const-string/jumbo v1, "tweaks_ls_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsMiscColor:I

    goto :goto_34e

    .line 317
    :cond_313
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mLinkAllStatusbarColours:Z

    if-eqz v1, :cond_33a

    .line 318
    sget v1, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryPercentColor:I

    .line 319
    sget v1, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryIconColor:I

    .line 320
    sget v1, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsSignalIconColor:I

    .line 321
    sget v1, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsWifiIconColor:I

    .line 322
    sget v1, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBluetoothIconColor:I

    .line 323
    sget v1, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsVolumeIconColor:I

    .line 324
    sget v1, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsLocationIconColor:I

    .line 325
    sget v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsCarrierTextColor:I

    .line 326
    sput v1, Lcom/android/mwilky/Renovate;->mLsMiscColor:I

    goto :goto_34e

    .line 328
    :cond_33a
    sget v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColorLs:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryPercentColor:I

    .line 329
    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryIconColor:I

    .line 330
    sput v1, Lcom/android/mwilky/Renovate;->mLsSignalIconColor:I

    .line 331
    sput v1, Lcom/android/mwilky/Renovate;->mLsWifiIconColor:I

    .line 332
    sput v1, Lcom/android/mwilky/Renovate;->mLsBluetoothIconColor:I

    .line 333
    sput v1, Lcom/android/mwilky/Renovate;->mLsVolumeIconColor:I

    .line 334
    sput v1, Lcom/android/mwilky/Renovate;->mLsLocationIconColor:I

    .line 335
    sput v1, Lcom/android/mwilky/Renovate;->mLsCarrierTextColor:I

    .line 336
    sput v1, Lcom/android/mwilky/Renovate;->mLsMiscColor:I

    .line 341
    :goto_34e
    return-void
.end method

.method public static updateQsBrightnessSliderPosition(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 457
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 458
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_qs_brightness_slider_position"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBrightnessSliderPosition:I

    .line 459
    const/4 v3, 0x2

    if-ne v1, v3, :cond_17

    .line 460
    const-string/jumbo v1, "tweaks_qqs_brightness_slider"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 462
    :cond_17
    return-void
.end method
