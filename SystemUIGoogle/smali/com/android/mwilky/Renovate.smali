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

.field public static mQsAnimationDuration:I

.field public static mQsAnimationInterpolator:I

.field public static mQsAnimationStyle:I

.field public static mQsBatteryIconColor:I

.field public static mQsBatteryPercentColor:I

.field public static mQsBluetoothIconColor:I

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

    .line 350
    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 351
    .local v0, "Context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 352
    .local v1, "ContentResolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_be

    .line 353
    const-string/jumbo v2, "statusbar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "volume"

    const-string v4, "mute"

    const-string v5, "location"

    const-string v6, "bluetooth"

    if-eqz v2, :cond_4b

    .line 354
    if-eqz p0, :cond_27

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 355
    sget v2, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    return v2

    .line 356
    :cond_27
    if-eqz p0, :cond_32

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 357
    sget v2, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    return v2

    .line 358
    :cond_32
    if-eqz p0, :cond_3d

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 359
    sget v2, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    return v2

    .line 360
    :cond_3d
    if-eqz p0, :cond_48

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 361
    sget v2, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    return v2

    .line 363
    :cond_48
    sget v2, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    return v2

    .line 365
    :cond_4b
    const-string v2, "qs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 366
    if-eqz p0, :cond_5e

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 367
    sget v2, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    return v2

    .line 368
    :cond_5e
    if-eqz p0, :cond_69

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 369
    sget v2, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    return v2

    .line 370
    :cond_69
    if-eqz p0, :cond_76

    const-string v2, "alarm_clock"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 371
    sget v2, Lcom/android/mwilky/Renovate;->mQsAlarmIconColor:I

    return v2

    .line 372
    :cond_76
    if-eqz p0, :cond_81

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 373
    sget v2, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    return v2

    .line 374
    :cond_81
    if-eqz p0, :cond_8c

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 375
    sget v2, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    return v2

    .line 377
    :cond_8c
    sget v2, Lcom/android/mwilky/Renovate;->mQsMiscColor:I

    return v2

    .line 379
    :cond_8f
    const-string v2, "lockscreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 380
    if-eqz p0, :cond_a2

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 381
    sget v2, Lcom/android/mwilky/Renovate;->mLsLocationIconColor:I

    return v2

    .line 383
    :cond_a2
    sget v2, Lcom/android/mwilky/Renovate;->mLsMiscColor:I

    return v2

    .line 388
    :cond_a5
    if-eqz p0, :cond_b0

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 389
    sget v2, Lcom/android/mwilky/Renovate;->mLsVolumeIconColor:I

    return v2

    .line 390
    :cond_b0
    if-eqz p0, :cond_bb

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 391
    sget v2, Lcom/android/mwilky/Renovate;->mLsBluetoothIconColor:I

    return v2

    .line 393
    :cond_bb
    sget v2, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    return v2

    .line 397
    :cond_be
    sget v2, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    return v2
.end method

.method public static isEmptyString(Ljava/lang/String;)Z
    .registers 3
    .param p0, "text"    # Ljava/lang/String;

    .line 560
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

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_clock_position"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mClockPosition:I

    .line 134
    return-void
.end method

.method public static setClockShowSeconds(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 138
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

    .line 139
    return-void
.end method

.method public static setDisableLockscreenLargeClock(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 451
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 452
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

    .line 453
    return-void
.end method

.method public static setDisableQsLockscreen(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 445
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 446
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

    .line 448
    return-void
.end method

.method public static setDoubleTapStatusbarSleep(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 433
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 434
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

    .line 436
    return-void
.end method

.method public static setExpandedNotifications(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 428
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 429
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

    .line 430
    return-void
.end method

.method public static setHideLockscreenShortcuts(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 417
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 418
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

    .line 419
    return-void
.end method

.method public static setHideLockscreenStatusbar(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 412
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 413
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

    .line 414
    return-void
.end method

.method public static setHideQsBuildNumber(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 471
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 472
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

    .line 473
    return-void
.end method

.method public static setKeyguardPower(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 564
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 565
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

    .line 566
    return-void
.end method

.method public static setMaxNotifications(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 439
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 440
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_max_notifications"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mMaxNotifications:I

    .line 442
    return-void
.end method

.method public static setNotificationTextColors(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 574
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 575
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/android/mwilky/Renovate;->setRiceType(Landroid/content/Context;)V

    .line 576
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

    .line 577
    const-string/jumbo v1, "tweaks_notification_text_accent"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_21

    move v2, v3

    :cond_21
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mNotificationTextColorUseAccent:Z

    .line 578
    if-eqz v2, :cond_30

    sget v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-ne v1, v3, :cond_30

    .line 579
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationTextColor:I

    goto :goto_3a

    .line 581
    :cond_30
    const/4 v1, -0x1

    const-string/jumbo v2, "tweaks_notification_text_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationTextColor:I

    .line 583
    :goto_3a
    return-void
.end method

.method public static setQsAnimationValues(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 586
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 587
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_qstile_animation_style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAnimationStyle:I

    .line 588
    const-string/jumbo v1, "tweaks_qstile_animation_duration"

    const/16 v3, 0x7d0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAnimationDuration:I

    .line 589
    const-string/jumbo v1, "tweaks_qstile_animation_interpolator"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAnimationInterpolator:I

    .line 590
    return-void
.end method

.method public static setQsBrightnessSliderPosition(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 456
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
    const-string/jumbo v1, "tweaks_qqs_brightness_slider"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_19

    move v2, v3

    :cond_19
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mQQsBrightnesSlider:Z

    .line 460
    return-void
.end method

.method public static setQsTileLayout(Landroid/content/Context;)V
    .registers 9
    .param p0, "Context"    # Landroid/content/Context;

    .line 512
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 513
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_qs_columns"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mQsColumns:I

    .line 514
    const-string/jumbo v3, "tweaks_qqs_rows"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/mwilky/Renovate;->mQQsRows:I

    .line 515
    const-string/jumbo v3, "tweaks_qs_rows"

    const/4 v4, 0x4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/mwilky/Renovate;->mQsRows:I

    .line 516
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

    .line 517
    const-string/jumbo v5, "tweaks_qqs_secondary_label"

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_3b

    goto :goto_3c

    :cond_3b
    move v7, v6

    :goto_3c
    sput-boolean v7, Lcom/android/mwilky/Renovate;->mQQsSecondaryLabel:Z

    .line 518
    sget v5, Lcom/android/mwilky/Renovate;->mQsColumns:I

    sget v7, Lcom/android/mwilky/Renovate;->mQQsRows:I

    mul-int/2addr v5, v7

    sput v5, Lcom/android/mwilky/Renovate;->mQQsMaxTiles:I

    .line 520
    const-string/jumbo v5, "tweaks_qs_style"

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/mwilky/Renovate;->mQsStyle:I

    .line 524
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 526
    .local v5, "QSColumns":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mwilky/Renovate;->isEmptyString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 527
    sget v6, Lcom/android/mwilky/Renovate;->mQsStyle:I

    if-nez v6, :cond_60

    .line 528
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_63

    .line 530
    :cond_60
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 536
    :cond_63
    :goto_63
    sget v2, Lcom/android/mwilky/Renovate;->mQsRows:I

    sget v6, Lcom/android/mwilky/Renovate;->mQQsRows:I

    if-ge v2, v6, :cond_6c

    .line 537
    invoke-static {v0, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 540
    :cond_6c
    sget v2, Lcom/android/mwilky/Renovate;->mQsStyle:I

    if-nez v2, :cond_77

    .line 541
    sget v2, Lcom/android/mwilky/Renovate;->mQsColumns:I

    if-le v2, v4, :cond_77

    .line 542
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 547
    :cond_77
    sget v2, Lcom/android/mwilky/Renovate;->mQsStyle:I

    if-lez v2, :cond_8b

    .line 548
    sget v2, Lcom/android/mwilky/Renovate;->mQsColumns:I

    if-ge v2, v4, :cond_82

    .line 549
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 552
    :cond_82
    sget v2, Lcom/android/mwilky/Renovate;->mQsColumns:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_8b

    .line 553
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 557
    :cond_8b
    return-void
.end method

.method public static setQsTileTweaks(Landroid/content/Context;)V
    .registers 7
    .param p0, "Context"    # Landroid/content/Context;

    .line 476
    invoke-static {p0}, Lcom/android/mwilky/Renovate;->setRiceType(Landroid/content/Context;)V

    .line 477
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 478
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

    .line 479
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

    .line 480
    const-string/jumbo v1, "tweaks_qs_tile_outline_width_active"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineWidthActive:I

    .line 481
    const-string/jumbo v1, "tweaks_qs_tile_outline_width_inactive"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineWidthInactive:I

    .line 482
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

    .line 483
    const-string/jumbo v1, "tweaks_qs_tile_outline_accent_inactive"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_4f

    move v2, v3

    :cond_4f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mQsTileOutlineUseAccentInactive:Z

    .line 484
    sget v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    const-string/jumbo v2, "tweaks_qs_tile_outline_color_inactive"

    const-string/jumbo v4, "tweaks_qs_tile_outline_color_active"

    const/4 v5, -0x1

    if-ne v1, v3, :cond_7f

    .line 485
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineUseAccentActive:Z

    if-eqz v1, :cond_67

    .line 486
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineColorActive:I

    goto :goto_6d

    .line 488
    :cond_67
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineColorActive:I

    .line 490
    :goto_6d
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineUseAccentInactive:Z

    if-eqz v1, :cond_78

    .line 491
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineColorInactive:I

    goto :goto_8b

    .line 493
    :cond_78
    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineColorInactive:I

    goto :goto_8b

    .line 496
    :cond_7f
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineColorActive:I

    .line 497
    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineColorInactive:I

    .line 499
    :goto_8b
    const/16 v1, 0x64

    const-string/jumbo v2, "tweaks_qs_tile_corner_radius_active"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileCornerRadiusActive:I

    .line 500
    const/16 v1, 0x14

    const-string/jumbo v2, "tweaks_qs_tile_corner_radius_inactive"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsTileCornerRadiusInactive:I

    .line 501
    return-void
.end method

.method public static setQsVibration(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 422
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 423
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

    .line 425
    return-void
.end method

.method public static setQuickQsPulldown(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 148
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_qs_pulldown_list"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQuickQsPulldown:I

    .line 150
    return-void
.end method

.method public static setRiceType(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 401
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 402
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "rice_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    .line 404
    return-void
.end method

.method public static setScrambleKeypad(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 407
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 408
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

    .line 409
    return-void
.end method

.method public static setSmartPulldown(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 143
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_smart_pulldown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mSmartPulldown:I

    .line 144
    return-void
.end method

.method public static setStatusbarBrightnessControl(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 569
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 570
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

    .line 571
    return-void
.end method

.method public static setStatusbarIconColors(Landroid/content/Context;)V
    .registers 8
    .param p0, "Context"    # Landroid/content/Context;

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 155
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/android/mwilky/Renovate;->setRiceType(Landroid/content/Context;)V

    .line 157
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

    .line 158
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

    .line 159
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

    .line 161
    sget v6, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-eq v6, v4, :cond_40

    .line 162
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 164
    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    :cond_40
    const-string/jumbo v1, "tweaks_global_statusbar_icon_color"

    const/4 v3, -0x1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColor:I

    .line 168
    const/high16 v1, -0x67000000

    const-string/jumbo v5, "tweaks_dark_icon_color"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mDarkIconColor:I

    .line 170
    const-string/jumbo v1, "tweaks_global_statusbar_icon_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColorQs:I

    .line 172
    const-string/jumbo v1, "tweaks_global_statusbar_icon_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColorLs:I

    .line 174
    const-string/jumbo v1, "tweaks_statusbar_link_all_colours"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_71

    move v2, v4

    :cond_71
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mLinkAllStatusbarColours:Z

    .line 177
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mUseAccentForStatusbarIcons:Z

    if-eqz v1, :cond_b4

    .line 178
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mClockColor:I

    .line 179
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    .line 180
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    .line 181
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationIconColor:I

    .line 182
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    .line 183
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    .line 184
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    .line 185
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    .line 186
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    .line 187
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    goto :goto_129

    .line 189
    :cond_b4
    sget v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-ne v1, v4, :cond_113

    .line 190
    const-string/jumbo v1, "tweaks_statusbar_clock_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mClockColor:I

    .line 191
    const-string/jumbo v1, "tweaks_statusbar_battery_percent_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    .line 192
    const-string/jumbo v1, "tweaks_battery_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    .line 193
    const-string/jumbo v1, "tweaks_notification_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationIconColor:I

    .line 194
    const-string/jumbo v1, "tweaks_wifi_signal_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    .line 195
    const-string/jumbo v1, "tweaks_mobile_signal_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    .line 196
    const-string/jumbo v1, "tweaks_bluetooth_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    .line 197
    const-string/jumbo v1, "tweaks_volume_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    .line 198
    const-string/jumbo v1, "tweaks_location_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    .line 199
    const-string/jumbo v1, "tweaks_statusbar_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    goto :goto_129

    .line 201
    :cond_113
    sget v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mClockColor:I

    .line 202
    sput v1, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    .line 203
    sput v1, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    .line 204
    sput v1, Lcom/android/mwilky/Renovate;->mNotificationIconColor:I

    .line 205
    sput v1, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    .line 206
    sput v1, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    .line 207
    sput v1, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    .line 208
    sput v1, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    .line 209
    sput v1, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    .line 210
    sput v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    .line 215
    :goto_129
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mUseAccentForQsIcons:Z

    if-eqz v1, :cond_177

    .line 216
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsCarrierTextColor:I

    .line 217
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAlarmIconColor:I

    .line 218
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    .line 219
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsClockColor:I

    .line 220
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBatteryPercentColor:I

    .line 221
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBatteryIconColor:I

    .line 222
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 223
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 224
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 225
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 226
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 227
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsMiscColor:I

    goto/16 :goto_259

    .line 229
    :cond_177
    sget v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-ne v1, v4, :cond_214

    .line 230
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mLinkAllStatusbarColours:Z

    if-eqz v1, :cond_1a7

    .line 231
    sget v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mQsCarrierTextColor:I

    .line 232
    sput v1, Lcom/android/mwilky/Renovate;->mQsAlarmIconColor:I

    .line 233
    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    .line 234
    sput v1, Lcom/android/mwilky/Renovate;->mQsClockColor:I

    .line 235
    sget v2, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsBatteryPercentColor:I

    .line 236
    sget v2, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsBatteryIconColor:I

    .line 237
    sget v2, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 238
    sget v2, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 239
    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 240
    sget v2, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 241
    sget v2, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 242
    sput v1, Lcom/android/mwilky/Renovate;->mQsMiscColor:I

    goto/16 :goto_259

    .line 244
    :cond_1a7
    const-string/jumbo v1, "tweaks_carrier_text_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsCarrierTextColor:I

    .line 245
    const-string/jumbo v1, "tweaks_alarm_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAlarmIconColor:I

    .line 246
    const-string/jumbo v1, "tweaks_statusbar_date_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    .line 247
    const-string/jumbo v1, "tweaks_statusbar_clock_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsClockColor:I

    .line 248
    const-string/jumbo v1, "tweaks_statusbar_battery_percent_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBatteryPercentColor:I

    .line 249
    const-string/jumbo v1, "tweaks_battery_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBatteryIconColor:I

    .line 250
    const-string/jumbo v1, "tweaks_bluetooth_icon_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 251
    const-string/jumbo v1, "tweaks_location_icon_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 252
    const-string/jumbo v1, "tweaks_volume_icon_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 253
    const-string/jumbo v1, "tweaks_mobile_signal_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 254
    const-string/jumbo v1, "tweaks_wifi_signal_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 255
    const-string/jumbo v1, "tweaks_qs_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsMiscColor:I

    goto :goto_259

    .line 258
    :cond_214
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mLinkAllStatusbarColours:Z

    if-eqz v1, :cond_23f

    .line 259
    sget v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mQsCarrierTextColor:I

    .line 260
    sput v1, Lcom/android/mwilky/Renovate;->mQsAlarmIconColor:I

    .line 261
    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    .line 262
    sput v1, Lcom/android/mwilky/Renovate;->mQsClockColor:I

    .line 263
    sget v2, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsBatteryPercentColor:I

    .line 264
    sget v2, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsBatteryIconColor:I

    .line 265
    sget v2, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 266
    sget v2, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 267
    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 268
    sget v2, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 269
    sget v2, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 270
    sput v1, Lcom/android/mwilky/Renovate;->mQsMiscColor:I

    goto :goto_259

    .line 272
    :cond_23f
    sget v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColorQs:I

    sput v1, Lcom/android/mwilky/Renovate;->mQsCarrierTextColor:I

    .line 273
    sput v1, Lcom/android/mwilky/Renovate;->mQsAlarmIconColor:I

    .line 274
    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    .line 275
    sput v1, Lcom/android/mwilky/Renovate;->mQsClockColor:I

    .line 276
    sput v1, Lcom/android/mwilky/Renovate;->mQsBatteryPercentColor:I

    .line 277
    sput v1, Lcom/android/mwilky/Renovate;->mQsBatteryIconColor:I

    .line 278
    sput v1, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 279
    sput v1, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 280
    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 281
    sput v1, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 282
    sput v1, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 283
    sput v1, Lcom/android/mwilky/Renovate;->mQsMiscColor:I

    .line 289
    :goto_259
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mUseAccentForLsIcons:Z

    if-eqz v1, :cond_295

    .line 290
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryPercentColor:I

    .line 291
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryIconColor:I

    .line 292
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsSignalIconColor:I

    .line 293
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsWifiIconColor:I

    .line 294
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsBluetoothIconColor:I

    .line 295
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsLocationIconColor:I

    .line 296
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsCarrierTextColor:I

    .line 297
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsVolumeIconColor:I

    .line 298
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsMiscColor:I

    goto/16 :goto_34e

    .line 300
    :cond_295
    sget v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-ne v1, v4, :cond_313

    .line 301
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mLinkAllStatusbarColours:Z

    if-eqz v1, :cond_2c1

    .line 302
    sget v1, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryPercentColor:I

    .line 303
    sget v1, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryIconColor:I

    .line 304
    sget v1, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsSignalIconColor:I

    .line 305
    sget v1, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsWifiIconColor:I

    .line 306
    sget v1, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBluetoothIconColor:I

    .line 307
    sget v1, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsVolumeIconColor:I

    .line 308
    sget v1, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsLocationIconColor:I

    .line 309
    sget v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsCarrierTextColor:I

    .line 310
    sput v1, Lcom/android/mwilky/Renovate;->mLsMiscColor:I

    goto/16 :goto_34e

    .line 312
    :cond_2c1
    const-string/jumbo v1, "tweaks_statusbar_battery_percent_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryPercentColor:I

    .line 313
    const-string/jumbo v1, "tweaks_battery_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryIconColor:I

    .line 314
    const-string/jumbo v1, "tweaks_mobile_signal_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsSignalIconColor:I

    .line 315
    const-string/jumbo v1, "tweaks_wifi_signal_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsWifiIconColor:I

    .line 316
    const-string/jumbo v1, "tweaks_bluetooth_icon_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsBluetoothIconColor:I

    .line 317
    const-string/jumbo v1, "tweaks_volume_icon_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsVolumeIconColor:I

    .line 318
    const-string/jumbo v1, "tweaks_location_icon_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsLocationIconColor:I

    .line 319
    const-string/jumbo v1, "tweaks_carrier_text_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsCarrierTextColor:I

    .line 320
    const-string/jumbo v1, "tweaks_ls_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsMiscColor:I

    goto :goto_34e

    .line 323
    :cond_313
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mLinkAllStatusbarColours:Z

    if-eqz v1, :cond_33a

    .line 324
    sget v1, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryPercentColor:I

    .line 325
    sget v1, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryIconColor:I

    .line 326
    sget v1, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsSignalIconColor:I

    .line 327
    sget v1, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsWifiIconColor:I

    .line 328
    sget v1, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBluetoothIconColor:I

    .line 329
    sget v1, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsVolumeIconColor:I

    .line 330
    sget v1, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsLocationIconColor:I

    .line 331
    sget v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsCarrierTextColor:I

    .line 332
    sput v1, Lcom/android/mwilky/Renovate;->mLsMiscColor:I

    goto :goto_34e

    .line 334
    :cond_33a
    sget v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColorLs:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryPercentColor:I

    .line 335
    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryIconColor:I

    .line 336
    sput v1, Lcom/android/mwilky/Renovate;->mLsSignalIconColor:I

    .line 337
    sput v1, Lcom/android/mwilky/Renovate;->mLsWifiIconColor:I

    .line 338
    sput v1, Lcom/android/mwilky/Renovate;->mLsBluetoothIconColor:I

    .line 339
    sput v1, Lcom/android/mwilky/Renovate;->mLsVolumeIconColor:I

    .line 340
    sput v1, Lcom/android/mwilky/Renovate;->mLsLocationIconColor:I

    .line 341
    sput v1, Lcom/android/mwilky/Renovate;->mLsCarrierTextColor:I

    .line 342
    sput v1, Lcom/android/mwilky/Renovate;->mLsMiscColor:I

    .line 347
    :goto_34e
    return-void
.end method

.method public static updateQsBrightnessSliderPosition(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 463
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 464
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "tweaks_qs_brightness_slider_position"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBrightnessSliderPosition:I

    .line 465
    const/4 v3, 0x2

    if-ne v1, v3, :cond_17

    .line 466
    const-string/jumbo v1, "tweaks_qqs_brightness_slider"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 468
    :cond_17
    return-void
.end method
