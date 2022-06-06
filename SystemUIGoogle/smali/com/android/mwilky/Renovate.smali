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

.field public static mQsTileOutlineUseAccent:Z

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

    .line 343
    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 344
    .local v0, "Context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 345
    .local v1, "ContentResolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_be

    .line 346
    const-string/jumbo v2, "statusbar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "volume"

    const-string v4, "mute"

    const-string v5, "location"

    const-string v6, "bluetooth"

    if-eqz v2, :cond_4b

    .line 347
    if-eqz p0, :cond_27

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 348
    sget v2, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    return v2

    .line 349
    :cond_27
    if-eqz p0, :cond_32

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 350
    sget v2, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    return v2

    .line 351
    :cond_32
    if-eqz p0, :cond_3d

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 352
    sget v2, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    return v2

    .line 353
    :cond_3d
    if-eqz p0, :cond_48

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 354
    sget v2, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    return v2

    .line 356
    :cond_48
    sget v2, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    return v2

    .line 358
    :cond_4b
    const-string v2, "qs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 359
    if-eqz p0, :cond_5e

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 360
    sget v2, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    return v2

    .line 361
    :cond_5e
    if-eqz p0, :cond_69

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 362
    sget v2, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    return v2

    .line 363
    :cond_69
    if-eqz p0, :cond_76

    const-string v2, "alarm_clock"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 364
    sget v2, Lcom/android/mwilky/Renovate;->mQsAlarmIconColor:I

    return v2

    .line 365
    :cond_76
    if-eqz p0, :cond_81

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 366
    sget v2, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    return v2

    .line 367
    :cond_81
    if-eqz p0, :cond_8c

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 368
    sget v2, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    return v2

    .line 370
    :cond_8c
    sget v2, Lcom/android/mwilky/Renovate;->mQsMiscColor:I

    return v2

    .line 372
    :cond_8f
    const-string v2, "lockscreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 373
    if-eqz p0, :cond_a2

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 374
    sget v2, Lcom/android/mwilky/Renovate;->mLsLocationIconColor:I

    return v2

    .line 376
    :cond_a2
    sget v2, Lcom/android/mwilky/Renovate;->mLsMiscColor:I

    return v2

    .line 381
    :cond_a5
    if-eqz p0, :cond_b0

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 382
    sget v2, Lcom/android/mwilky/Renovate;->mLsVolumeIconColor:I

    return v2

    .line 383
    :cond_b0
    if-eqz p0, :cond_bb

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 384
    sget v2, Lcom/android/mwilky/Renovate;->mLsBluetoothIconColor:I

    return v2

    .line 386
    :cond_bb
    sget v2, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    return v2

    .line 390
    :cond_be
    sget v2, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    return v2
.end method

.method public static isEmptyString(Ljava/lang/String;)Z
    .registers 3
    .param p0, "text"    # Ljava/lang/String;

    .line 543
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

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 126
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_clock_position"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mClockPosition:I

    .line 127
    return-void
.end method

.method public static setClockShowSeconds(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 131
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

    .line 132
    return-void
.end method

.method public static setDisableLockscreenLargeClock(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 444
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 445
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

    .line 446
    return-void
.end method

.method public static setDisableQsLockscreen(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 438
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 439
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

    .line 441
    return-void
.end method

.method public static setDoubleTapStatusbarSleep(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 426
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 427
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

    .line 429
    return-void
.end method

.method public static setExpandedNotifications(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 421
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 422
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

    .line 423
    return-void
.end method

.method public static setHideLockscreenShortcuts(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 410
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 411
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

    .line 412
    return-void
.end method

.method public static setHideLockscreenStatusbar(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 405
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 406
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

    .line 407
    return-void
.end method

.method public static setHideQsBuildNumber(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 464
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 465
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

    .line 466
    return-void
.end method

.method public static setKeyguardPower(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 547
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 548
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

    .line 549
    return-void
.end method

.method public static setMaxNotifications(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 432
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 433
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_max_notifications"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mMaxNotifications:I

    .line 435
    return-void
.end method

.method public static setNotificationTextColors(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 557
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 558
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/android/mwilky/Renovate;->setRiceType(Landroid/content/Context;)V

    .line 559
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

    .line 560
    const-string/jumbo v1, "tweaks_notification_text_accent"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_21

    move v2, v3

    :cond_21
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mNotificationTextColorUseAccent:Z

    .line 561
    if-eqz v2, :cond_30

    sget v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-ne v1, v3, :cond_30

    .line 562
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationTextColor:I

    goto :goto_3a

    .line 564
    :cond_30
    const/4 v1, -0x1

    const-string/jumbo v2, "tweaks_notification_text_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationTextColor:I

    .line 566
    :goto_3a
    return-void
.end method

.method public static setQsBrightnessSliderPosition(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 449
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 451
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_qs_brightness_slider_position"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBrightnessSliderPosition:I

    .line 452
    const-string/jumbo v1, "tweaks_qqs_brightness_slider"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_19

    move v2, v3

    :cond_19
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mQQsBrightnesSlider:Z

    .line 453
    return-void
.end method

.method public static setQsBrightnessSliderTweaks(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 489
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 490
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "!"

    const/16 v2, 0x47

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBrightnessSliderCornerRadius:I

    .line 491
    const-string/jumbo v1, "tweaks_qs_brightness_slider_height"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBrightnessSliderHeight:I

    .line 492
    return-void
.end method

.method public static setQsTileLayout(Landroid/content/Context;)V
    .registers 9
    .param p0, "Context"    # Landroid/content/Context;

    .line 495
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 496
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_qs_columns"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mQsColumns:I

    .line 497
    const-string/jumbo v3, "tweaks_qqs_rows"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mQQsRows:I

    .line 498
    const-string/jumbo v3, "tweaks_qs_rows"

    const/4 v4, 0x4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/mwilky/Renovate;->mQsRows:I

    .line 499
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

    .line 500
    const-string/jumbo v5, "tweaks_qqs_secondary_label"

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_3b

    goto :goto_3c

    :cond_3b
    move v7, v6

    :goto_3c
    sput-boolean v7, Lcom/android/mwilky/Renovate;->mQQsSecondaryLabel:Z

    .line 501
    sget v5, Lcom/android/mwilky/Renovate;->mQsColumns:I

    sget v7, Lcom/android/mwilky/Renovate;->mQQsRows:I

    mul-int/2addr v5, v7

    sput v5, Lcom/android/mwilky/Renovate;->mQQsMaxTiles:I

    .line 503
    const-string/jumbo v5, "tweaks_qs_style"

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/mwilky/Renovate;->mQsStyle:I

    .line 507
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 509
    .local v5, "QSColumns":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mwilky/Renovate;->isEmptyString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 510
    sget v6, Lcom/android/mwilky/Renovate;->mQsStyle:I

    if-nez v6, :cond_60

    .line 511
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_63

    .line 513
    :cond_60
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 519
    :cond_63
    :goto_63
    sget v2, Lcom/android/mwilky/Renovate;->mQsRows:I

    sget v6, Lcom/android/mwilky/Renovate;->mQQsRows:I

    if-ge v2, v6, :cond_6c

    .line 520
    invoke-static {v0, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 523
    :cond_6c
    sget v2, Lcom/android/mwilky/Renovate;->mQsStyle:I

    if-nez v2, :cond_77

    .line 524
    sget v2, Lcom/android/mwilky/Renovate;->mQsColumns:I

    if-le v2, v4, :cond_77

    .line 525
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 530
    :cond_77
    sget v2, Lcom/android/mwilky/Renovate;->mQsStyle:I

    if-lez v2, :cond_8b

    .line 531
    sget v2, Lcom/android/mwilky/Renovate;->mQsColumns:I

    if-ge v2, v4, :cond_82

    .line 532
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 535
    :cond_82
    sget v2, Lcom/android/mwilky/Renovate;->mQsColumns:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_8b

    .line 536
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 540
    :cond_8b
    return-void
.end method

.method public static setQsTileTweaks(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 469
    invoke-static {p0}, Lcom/android/mwilky/Renovate;->setRiceType(Landroid/content/Context;)V

    .line 470
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 471
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

    .line 472
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

    .line 473
    const-string/jumbo v1, "tweaks_qs_tile_outline_width_active"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineWidthActive:I

    .line 474
    const-string/jumbo v1, "tweaks_qs_tile_outline_width_inactive"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineWidthInactive:I

    .line 475
    const-string/jumbo v1, "tweaks_qs_tile_outline_accent"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_41

    move v2, v3

    :cond_41
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mQsTileOutlineUseAccent:Z

    .line 476
    if-eqz v2, :cond_5d

    sget v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-ne v1, v3, :cond_5d

    .line 477
    const-string v1, "mwilky"

    const-string v2, "is here"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineColorActive:I

    .line 479
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineColorInactive:I

    goto :goto_70

    .line 481
    :cond_5d
    const-string/jumbo v1, "tweaks_qs_tile_outline_color_active"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineColorActive:I

    .line 482
    const-string/jumbo v1, "tweaks_qs_tile_outline_color_inactive"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineColorInactive:I

    .line 484
    :goto_70
    const/16 v1, 0x64

    const-string/jumbo v2, "tweaks_qs_tile_corner_radius_active"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileCornerRadiusActive:I

    .line 485
    const/16 v1, 0x14

    const-string/jumbo v2, "tweaks_qs_tile_corner_radius_inactive"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileCornerRadiusInactive:I

    .line 486
    return-void
.end method

.method public static setQsVibration(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 415
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 416
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

    .line 418
    return-void
.end method

.method public static setQuickQsPulldown(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 141
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_qs_pulldown_list"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQuickQsPulldown:I

    .line 143
    return-void
.end method

.method public static setRiceType(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 394
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 395
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "rice_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    .line 397
    return-void
.end method

.method public static setScrambleKeypad(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 400
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 401
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

    .line 402
    return-void
.end method

.method public static setSmartPulldown(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 136
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_smart_pulldown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mSmartPulldown:I

    .line 137
    return-void
.end method

.method public static setStatusbarBrightnessControl(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 552
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 553
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

    .line 554
    return-void
.end method

.method public static setStatusbarIconColors(Landroid/content/Context;)V
    .registers 8
    .param p0, "Context"    # Landroid/content/Context;

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 148
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/android/mwilky/Renovate;->setRiceType(Landroid/content/Context;)V

    .line 150
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

    .line 151
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

    .line 152
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

    .line 154
    sget v6, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-eq v6, v4, :cond_40

    .line 155
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    :cond_40
    const-string/jumbo v1, "tweaks_global_statusbar_icon_color"

    const/4 v3, -0x1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColor:I

    .line 161
    const/high16 v1, -0x67000000

    const-string/jumbo v5, "tweaks_dark_icon_color"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mDarkIconColor:I

    .line 163
    const-string/jumbo v1, "tweaks_global_statusbar_icon_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColorQs:I

    .line 165
    const-string/jumbo v1, "tweaks_global_statusbar_icon_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColorLs:I

    .line 167
    const-string/jumbo v1, "tweaks_statusbar_link_all_colours"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_71

    move v2, v4

    :cond_71
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mLinkAllStatusbarColours:Z

    .line 170
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mUseAccentForStatusbarIcons:Z

    if-eqz v1, :cond_b4

    .line 171
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mClockColor:I

    .line 172
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    .line 173
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    .line 174
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationIconColor:I

    .line 175
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    .line 176
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    .line 177
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    .line 178
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    .line 179
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    .line 180
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    goto :goto_129

    .line 182
    :cond_b4
    sget v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-ne v1, v4, :cond_113

    .line 183
    const-string/jumbo v1, "tweaks_statusbar_clock_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mClockColor:I

    .line 184
    const-string/jumbo v1, "tweaks_statusbar_battery_percent_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    .line 185
    const-string/jumbo v1, "tweaks_battery_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    .line 186
    const-string/jumbo v1, "tweaks_notification_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationIconColor:I

    .line 187
    const-string/jumbo v1, "tweaks_wifi_signal_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    .line 188
    const-string/jumbo v1, "tweaks_mobile_signal_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    .line 189
    const-string/jumbo v1, "tweaks_bluetooth_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    .line 190
    const-string/jumbo v1, "tweaks_volume_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    .line 191
    const-string/jumbo v1, "tweaks_location_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    .line 192
    const-string/jumbo v1, "tweaks_statusbar_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    goto :goto_129

    .line 194
    :cond_113
    sget v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mClockColor:I

    .line 195
    sput v1, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    .line 196
    sput v1, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    .line 197
    sput v1, Lcom/android/mwilky/Renovate;->mNotificationIconColor:I

    .line 198
    sput v1, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    .line 199
    sput v1, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    .line 200
    sput v1, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    .line 201
    sput v1, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    .line 202
    sput v1, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    .line 203
    sput v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    .line 208
    :goto_129
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mUseAccentForQsIcons:Z

    if-eqz v1, :cond_177

    .line 209
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsCarrierTextColor:I

    .line 210
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAlarmIconColor:I

    .line 211
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    .line 212
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsClockColor:I

    .line 213
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBatteryPercentColor:I

    .line 214
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBatteryIconColor:I

    .line 215
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 216
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 217
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 218
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 219
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 220
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsMiscColor:I

    goto/16 :goto_259

    .line 222
    :cond_177
    sget v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-ne v1, v4, :cond_214

    .line 223
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mLinkAllStatusbarColours:Z

    if-eqz v1, :cond_1a7

    .line 224
    sget v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mQsCarrierTextColor:I

    .line 225
    sput v1, Lcom/android/mwilky/Renovate;->mQsAlarmIconColor:I

    .line 226
    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    .line 227
    sput v1, Lcom/android/mwilky/Renovate;->mQsClockColor:I

    .line 228
    sget v2, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsBatteryPercentColor:I

    .line 229
    sget v2, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsBatteryIconColor:I

    .line 230
    sget v2, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 231
    sget v2, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 232
    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 233
    sget v2, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 234
    sget v2, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 235
    sput v1, Lcom/android/mwilky/Renovate;->mQsMiscColor:I

    goto/16 :goto_259

    .line 237
    :cond_1a7
    const-string/jumbo v1, "tweaks_carrier_text_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsCarrierTextColor:I

    .line 238
    const-string/jumbo v1, "tweaks_alarm_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAlarmIconColor:I

    .line 239
    const-string/jumbo v1, "tweaks_statusbar_date_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    .line 240
    const-string/jumbo v1, "tweaks_statusbar_clock_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsClockColor:I

    .line 241
    const-string/jumbo v1, "tweaks_statusbar_battery_percent_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBatteryPercentColor:I

    .line 242
    const-string/jumbo v1, "tweaks_battery_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBatteryIconColor:I

    .line 243
    const-string/jumbo v1, "tweaks_bluetooth_icon_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 244
    const-string/jumbo v1, "tweaks_location_icon_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 245
    const-string/jumbo v1, "tweaks_volume_icon_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 246
    const-string/jumbo v1, "tweaks_mobile_signal_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 247
    const-string/jumbo v1, "tweaks_wifi_signal_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 248
    const-string/jumbo v1, "tweaks_qs_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsMiscColor:I

    goto :goto_259

    .line 251
    :cond_214
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mLinkAllStatusbarColours:Z

    if-eqz v1, :cond_23f

    .line 252
    sget v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mQsCarrierTextColor:I

    .line 253
    sput v1, Lcom/android/mwilky/Renovate;->mQsAlarmIconColor:I

    .line 254
    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    .line 255
    sput v1, Lcom/android/mwilky/Renovate;->mQsClockColor:I

    .line 256
    sget v2, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsBatteryPercentColor:I

    .line 257
    sget v2, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsBatteryIconColor:I

    .line 258
    sget v2, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 259
    sget v2, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 260
    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 261
    sget v2, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 262
    sget v2, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 263
    sput v1, Lcom/android/mwilky/Renovate;->mQsMiscColor:I

    goto :goto_259

    .line 265
    :cond_23f
    sget v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColorQs:I

    sput v1, Lcom/android/mwilky/Renovate;->mQsCarrierTextColor:I

    .line 266
    sput v1, Lcom/android/mwilky/Renovate;->mQsAlarmIconColor:I

    .line 267
    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    .line 268
    sput v1, Lcom/android/mwilky/Renovate;->mQsClockColor:I

    .line 269
    sput v1, Lcom/android/mwilky/Renovate;->mQsBatteryPercentColor:I

    .line 270
    sput v1, Lcom/android/mwilky/Renovate;->mQsBatteryIconColor:I

    .line 271
    sput v1, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 272
    sput v1, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 273
    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 274
    sput v1, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 275
    sput v1, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 276
    sput v1, Lcom/android/mwilky/Renovate;->mQsMiscColor:I

    .line 282
    :goto_259
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mUseAccentForLsIcons:Z

    if-eqz v1, :cond_295

    .line 283
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryPercentColor:I

    .line 284
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryIconColor:I

    .line 285
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsSignalIconColor:I

    .line 286
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsWifiIconColor:I

    .line 287
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsBluetoothIconColor:I

    .line 288
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsLocationIconColor:I

    .line 289
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsCarrierTextColor:I

    .line 290
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsVolumeIconColor:I

    .line 291
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsMiscColor:I

    goto/16 :goto_34e

    .line 293
    :cond_295
    sget v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-ne v1, v4, :cond_313

    .line 294
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mLinkAllStatusbarColours:Z

    if-eqz v1, :cond_2c1

    .line 295
    sget v1, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryPercentColor:I

    .line 296
    sget v1, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryIconColor:I

    .line 297
    sget v1, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsSignalIconColor:I

    .line 298
    sget v1, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsWifiIconColor:I

    .line 299
    sget v1, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBluetoothIconColor:I

    .line 300
    sget v1, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsVolumeIconColor:I

    .line 301
    sget v1, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsLocationIconColor:I

    .line 302
    sget v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsCarrierTextColor:I

    .line 303
    sput v1, Lcom/android/mwilky/Renovate;->mLsMiscColor:I

    goto/16 :goto_34e

    .line 305
    :cond_2c1
    const-string/jumbo v1, "tweaks_statusbar_battery_percent_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryPercentColor:I

    .line 306
    const-string/jumbo v1, "tweaks_battery_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryIconColor:I

    .line 307
    const-string/jumbo v1, "tweaks_mobile_signal_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsSignalIconColor:I

    .line 308
    const-string/jumbo v1, "tweaks_wifi_signal_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsWifiIconColor:I

    .line 309
    const-string/jumbo v1, "tweaks_bluetooth_icon_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsBluetoothIconColor:I

    .line 310
    const-string/jumbo v1, "tweaks_volume_icon_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsVolumeIconColor:I

    .line 311
    const-string/jumbo v1, "tweaks_location_icon_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsLocationIconColor:I

    .line 312
    const-string/jumbo v1, "tweaks_carrier_text_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsCarrierTextColor:I

    .line 313
    const-string/jumbo v1, "tweaks_ls_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsMiscColor:I

    goto :goto_34e

    .line 316
    :cond_313
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mLinkAllStatusbarColours:Z

    if-eqz v1, :cond_33a

    .line 317
    sget v1, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryPercentColor:I

    .line 318
    sget v1, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryIconColor:I

    .line 319
    sget v1, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsSignalIconColor:I

    .line 320
    sget v1, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsWifiIconColor:I

    .line 321
    sget v1, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBluetoothIconColor:I

    .line 322
    sget v1, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsVolumeIconColor:I

    .line 323
    sget v1, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsLocationIconColor:I

    .line 324
    sget v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsCarrierTextColor:I

    .line 325
    sput v1, Lcom/android/mwilky/Renovate;->mLsMiscColor:I

    goto :goto_34e

    .line 327
    :cond_33a
    sget v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColorLs:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryPercentColor:I

    .line 328
    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryIconColor:I

    .line 329
    sput v1, Lcom/android/mwilky/Renovate;->mLsSignalIconColor:I

    .line 330
    sput v1, Lcom/android/mwilky/Renovate;->mLsWifiIconColor:I

    .line 331
    sput v1, Lcom/android/mwilky/Renovate;->mLsBluetoothIconColor:I

    .line 332
    sput v1, Lcom/android/mwilky/Renovate;->mLsVolumeIconColor:I

    .line 333
    sput v1, Lcom/android/mwilky/Renovate;->mLsLocationIconColor:I

    .line 334
    sput v1, Lcom/android/mwilky/Renovate;->mLsCarrierTextColor:I

    .line 335
    sput v1, Lcom/android/mwilky/Renovate;->mLsMiscColor:I

    .line 340
    :goto_34e
    return-void
.end method

.method public static updateQsBrightnessSliderPosition(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 456
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 457
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_qs_brightness_slider_position"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBrightnessSliderPosition:I

    .line 458
    const/4 v3, 0x2

    if-ne v1, v3, :cond_17

    .line 459
    const-string/jumbo v1, "tweaks_qqs_brightness_slider"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 461
    :cond_17
    return-void
.end method
