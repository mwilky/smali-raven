.class public Lcom/android/mwilky/Renovate;
.super Ljava/lang/Object;
.source "Renovate.java"


# static fields
.field public static mBatteryIconColor:I

.field public static mBatteryPercentColor:I

.field public static mBluetoothIconColor:I

.field public static mClockColor:I

.field public static mClockPosition:I

.field public static mClockShowSeconds:Z

.field public static mDarkIconColor:I

.field public static mDisableQsLockscreen:Z

.field public static mDoubleTapStatusbarSleep:Z

.field public static mExpandedNotifications:Z

.field public static mGlobalStatusbarIconColor:I

.field public static mGlobalStatusbarIconColorLs:I

.field public static mGlobalStatusbarIconColorQs:I

.field public static mHideLockscreenShortcuts:Z

.field public static mHideLockscreenStatusbar:Z

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

.field public static mQsAlarmIconColor:I

.field public static mQsBatteryIconColor:I

.field public static mQsBatteryPercentColor:I

.field public static mQsBluetoothIconColor:I

.field public static mQsCarrierTextColor:I

.field public static mQsClockColor:I

.field public static mQsDateColor:I

.field public static mQsLocationIconColor:I

.field public static mQsMiscColor:I

.field public static mQsSignalIconColor:I

.field public static mQsVibration:Z

.field public static mQsVolumeIconColor:I

.field public static mQsWifiIconColor:I

.field public static mQuickQsPulldown:I

.field public static mRiceType:I

.field public static mScrambleKeypad:Z

.field public static mSignalIconColor:I

.field public static mSmartPulldown:I

.field public static mStatusbarMiscColor:I

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

    .line 306
    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 307
    .local v0, "Context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 308
    .local v1, "ContentResolver":Landroid/content/ContentResolver;
    const-string v2, "statusbar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "volume"

    const-string v4, "mute"

    const-string v5, "location"

    const-string v6, "bluetooth"

    if-eqz v2, :cond_3f

    .line 309
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 310
    sget v2, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    return v2

    .line 311
    :cond_21
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 312
    sget v2, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    return v2

    .line 313
    :cond_2a
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 314
    sget v2, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    return v2

    .line 315
    :cond_33
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 316
    sget v2, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    return v2

    .line 318
    :cond_3c
    sget v2, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    return v2

    .line 320
    :cond_3f
    const-string v2, "qs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 321
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 322
    sget v2, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    return v2

    .line 323
    :cond_50
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 324
    sget v2, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    return v2

    .line 325
    :cond_59
    const-string v2, "alarm_clock"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 326
    sget v2, Lcom/android/mwilky/Renovate;->mQsAlarmIconColor:I

    return v2

    .line 327
    :cond_64
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 328
    sget v2, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    return v2

    .line 329
    :cond_6d
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 330
    sget v2, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    return v2

    .line 332
    :cond_76
    sget v2, Lcom/android/mwilky/Renovate;->mQsMiscColor:I

    return v2

    .line 334
    :cond_79
    const-string v2, "lockscreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 335
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 336
    sget v2, Lcom/android/mwilky/Renovate;->mLsLocationIconColor:I

    return v2

    .line 338
    :cond_8a
    sget v2, Lcom/android/mwilky/Renovate;->mLsMiscColor:I

    return v2

    .line 343
    :cond_8d
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 344
    sget v2, Lcom/android/mwilky/Renovate;->mLsVolumeIconColor:I

    return v2

    .line 345
    :cond_96
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 346
    sget v2, Lcom/android/mwilky/Renovate;->mLsBluetoothIconColor:I

    return v2

    .line 348
    :cond_9f
    sget v2, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    return v2
.end method

.method public static setClockPosition(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_clock_position"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mClockPosition:I

    .line 93
    return-void
.end method

.method public static setClockShowSeconds(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 97
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_clock_seconds"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mClockShowSeconds:Z

    .line 98
    return-void
.end method

.method public static setDisableQsLockscreen(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 398
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 399
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_disable_qs_lockscreen"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mDisableQsLockscreen:Z

    .line 401
    return-void
.end method

.method public static setDoubleTapStatusbarSleep(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 386
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 387
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_double_tap_sleep"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mDoubleTapStatusbarSleep:Z

    .line 389
    return-void
.end method

.method public static setExpandedNotifications(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 381
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 382
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_expanded_notifications"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mExpandedNotifications:Z

    .line 383
    return-void
.end method

.method public static setHideLockscreenShortcuts(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 371
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_hide_lockscreen_shortcuts"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mHideLockscreenShortcuts:Z

    .line 372
    return-void
.end method

.method public static setHideLockscreenStatusbar(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 365
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 366
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_hide_lockscreen_statusbar"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mHideLockscreenStatusbar:Z

    .line 367
    return-void
.end method

.method public static setMaxNotifications(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 392
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 393
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_max_notifications"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mMaxNotifications:I

    .line 395
    return-void
.end method

.method public static setQsVibration(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 375
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 376
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qs_vibration"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mQsVibration:Z

    .line 378
    return-void
.end method

.method public static setQuickQsPulldown(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 107
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qs_pulldown_list"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQuickQsPulldown:I

    .line 109
    return-void
.end method

.method public static setRiceType(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 354
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 355
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "rice_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    .line 357
    return-void
.end method

.method public static setScrambleKeypad(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 361
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_scramble_pin"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mScrambleKeypad:Z

    .line 362
    return-void
.end method

.method public static setSmartPulldown(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_smart_pulldown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mSmartPulldown:I

    .line 103
    return-void
.end method

.method public static setStatusbarIconColors(Landroid/content/Context;)V
    .registers 8
    .param p0, "Context"    # Landroid/content/Context;

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/android/mwilky/Renovate;->setRiceType(Landroid/content/Context;)V

    .line 116
    const-string v1, "tweaks_accent_statusbar"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_13

    move v3, v4

    goto :goto_14

    :cond_13
    move v3, v2

    :goto_14
    sput-boolean v3, Lcom/android/mwilky/Renovate;->mUseAccentForStatusbarIcons:Z

    .line 117
    const-string v3, "tweaks_accent_statusbar_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_20

    move v5, v4

    goto :goto_21

    :cond_20
    move v5, v2

    :goto_21
    sput-boolean v5, Lcom/android/mwilky/Renovate;->mUseAccentForQsIcons:Z

    .line 118
    const-string v5, "tweaks_accent_statusbar_ls"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_2d

    move v6, v4

    goto :goto_2e

    :cond_2d
    move v6, v2

    :goto_2e
    sput-boolean v6, Lcom/android/mwilky/Renovate;->mUseAccentForLsIcons:Z

    .line 120
    sget v6, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-eq v6, v4, :cond_3d

    .line 121
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    :cond_3d
    const-string v1, "tweaks_global_statusbar_icon_color"

    const/4 v3, -0x1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColor:I

    .line 127
    const/high16 v1, -0x67000000

    const-string v5, "tweaks_dark_icon_color"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mDarkIconColor:I

    .line 129
    const-string v1, "tweaks_global_statusbar_icon_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColorQs:I

    .line 131
    const-string v1, "tweaks_global_statusbar_icon_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColorLs:I

    .line 133
    const-string v1, "tweaks_statusbar_link_all_colours"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_69

    move v2, v4

    :cond_69
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mLinkAllStatusbarColours:Z

    .line 136
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mUseAccentForStatusbarIcons:Z

    if-eqz v1, :cond_ac

    .line 137
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mClockColor:I

    .line 138
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    .line 139
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    .line 140
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationIconColor:I

    .line 141
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    .line 142
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    .line 143
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    .line 144
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    .line 145
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    .line 146
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    goto :goto_117

    .line 148
    :cond_ac
    sget v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-ne v1, v4, :cond_101

    .line 149
    const-string v1, "tweaks_statusbar_clock_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mClockColor:I

    .line 150
    const-string v1, "tweaks_statusbar_battery_percent_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    .line 151
    const-string v1, "tweaks_battery_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    .line 152
    const-string v1, "tweaks_notification_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mNotificationIconColor:I

    .line 153
    const-string v1, "tweaks_wifi_signal_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    .line 154
    const-string v1, "tweaks_mobile_signal_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    .line 155
    const-string v1, "tweaks_bluetooth_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    .line 156
    const-string v1, "tweaks_volume_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    .line 157
    const-string v1, "tweaks_location_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    .line 158
    const-string v1, "tweaks_statusbar_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    goto :goto_117

    .line 160
    :cond_101
    sget v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mClockColor:I

    .line 161
    sput v1, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    .line 162
    sput v1, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    .line 163
    sput v1, Lcom/android/mwilky/Renovate;->mNotificationIconColor:I

    .line 164
    sput v1, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    .line 165
    sput v1, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    .line 166
    sput v1, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    .line 167
    sput v1, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    .line 168
    sput v1, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    .line 169
    sput v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    .line 174
    :goto_117
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mUseAccentForQsIcons:Z

    if-eqz v1, :cond_165

    .line 175
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsCarrierTextColor:I

    .line 176
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAlarmIconColor:I

    .line 177
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    .line 178
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsClockColor:I

    .line 179
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBatteryPercentColor:I

    .line 180
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBatteryIconColor:I

    .line 181
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 182
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 183
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 184
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 185
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 186
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsMiscColor:I

    goto/16 :goto_235

    .line 188
    :cond_165
    sget v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-ne v1, v4, :cond_1f4

    .line 189
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mLinkAllStatusbarColours:Z

    if-eqz v1, :cond_193

    .line 190
    sget v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mQsAlarmIconColor:I

    .line 191
    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    .line 192
    sput v1, Lcom/android/mwilky/Renovate;->mQsClockColor:I

    .line 193
    sget v2, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsBatteryPercentColor:I

    .line 194
    sget v2, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsBatteryIconColor:I

    .line 195
    sget v2, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 196
    sget v2, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 197
    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 198
    sget v2, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 199
    sget v2, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 200
    sput v1, Lcom/android/mwilky/Renovate;->mQsMiscColor:I

    goto/16 :goto_235

    .line 202
    :cond_193
    const-string v1, "tweaks_carrier_text_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsCarrierTextColor:I

    .line 203
    const-string v1, "tweaks_alarm_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAlarmIconColor:I

    .line 204
    const-string v1, "tweaks_statusbar_date_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    .line 205
    const-string v1, "tweaks_statusbar_clock_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsClockColor:I

    .line 206
    const-string v1, "tweaks_statusbar_battery_percent_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBatteryPercentColor:I

    .line 207
    const-string v1, "tweaks_battery_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBatteryIconColor:I

    .line 208
    const-string v1, "tweaks_bluetooth_icon_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 209
    const-string v1, "tweaks_location_icon_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 210
    const-string v1, "tweaks_volume_icon_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 211
    const-string v1, "tweaks_mobile_signal_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 212
    const-string v1, "tweaks_wifi_signal_color_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 213
    const-string v1, "tweaks_qs_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsMiscColor:I

    goto :goto_235

    .line 216
    :cond_1f4
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mLinkAllStatusbarColours:Z

    if-eqz v1, :cond_21d

    .line 217
    sget v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mQsAlarmIconColor:I

    .line 218
    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    .line 219
    sput v1, Lcom/android/mwilky/Renovate;->mQsClockColor:I

    .line 220
    sget v2, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsBatteryPercentColor:I

    .line 221
    sget v2, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsBatteryIconColor:I

    .line 222
    sget v2, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 223
    sget v2, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 224
    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 225
    sget v2, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 226
    sget v2, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    sput v2, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 227
    sput v1, Lcom/android/mwilky/Renovate;->mQsMiscColor:I

    goto :goto_235

    .line 229
    :cond_21d
    sget v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColorQs:I

    sput v1, Lcom/android/mwilky/Renovate;->mQsAlarmIconColor:I

    .line 230
    sput v1, Lcom/android/mwilky/Renovate;->mQsDateColor:I

    .line 231
    sput v1, Lcom/android/mwilky/Renovate;->mQsClockColor:I

    .line 232
    sput v1, Lcom/android/mwilky/Renovate;->mQsBatteryPercentColor:I

    .line 233
    sput v1, Lcom/android/mwilky/Renovate;->mQsBatteryIconColor:I

    .line 234
    sput v1, Lcom/android/mwilky/Renovate;->mQsBluetoothIconColor:I

    .line 235
    sput v1, Lcom/android/mwilky/Renovate;->mQsLocationIconColor:I

    .line 236
    sput v1, Lcom/android/mwilky/Renovate;->mQsVolumeIconColor:I

    .line 237
    sput v1, Lcom/android/mwilky/Renovate;->mQsSignalIconColor:I

    .line 238
    sput v1, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I

    .line 239
    sput v1, Lcom/android/mwilky/Renovate;->mQsMiscColor:I

    .line 245
    :goto_235
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mUseAccentForLsIcons:Z

    if-eqz v1, :cond_271

    .line 246
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryPercentColor:I

    .line 247
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryIconColor:I

    .line 248
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsSignalIconColor:I

    .line 249
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsWifiIconColor:I

    .line 250
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsBluetoothIconColor:I

    .line 251
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsLocationIconColor:I

    .line 252
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsCarrierTextColor:I

    .line 253
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsVolumeIconColor:I

    .line 254
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsMiscColor:I

    goto/16 :goto_321

    .line 256
    :cond_271
    sget v1, Lcom/android/mwilky/Renovate;->mRiceType:I

    if-ne v1, v4, :cond_2e6

    .line 257
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mLinkAllStatusbarColours:Z

    if-eqz v1, :cond_29d

    .line 258
    sget v1, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryPercentColor:I

    .line 259
    sget v1, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryIconColor:I

    .line 260
    sget v1, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsSignalIconColor:I

    .line 261
    sget v1, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsWifiIconColor:I

    .line 262
    sget v1, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBluetoothIconColor:I

    .line 263
    sget v1, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsVolumeIconColor:I

    .line 264
    sget v1, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsLocationIconColor:I

    .line 265
    sget v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsCarrierTextColor:I

    .line 266
    sput v1, Lcom/android/mwilky/Renovate;->mLsMiscColor:I

    goto/16 :goto_321

    .line 268
    :cond_29d
    const-string v1, "tweaks_statusbar_battery_percent_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryPercentColor:I

    .line 269
    const-string v1, "tweaks_battery_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryIconColor:I

    .line 270
    const-string v1, "tweaks_mobile_signal_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsSignalIconColor:I

    .line 271
    const-string v1, "tweaks_wifi_signal_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsWifiIconColor:I

    .line 272
    const-string v1, "tweaks_bluetooth_icon_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsBluetoothIconColor:I

    .line 273
    const-string v1, "tweaks_volume_icon_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsVolumeIconColor:I

    .line 274
    const-string v1, "tweaks_location_icon_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsLocationIconColor:I

    .line 275
    const-string v1, "tweaks_carrier_text_color_ls"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsCarrierTextColor:I

    .line 276
    const-string v1, "tweaks_ls_icon_color"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLsMiscColor:I

    goto :goto_321

    .line 279
    :cond_2e6
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mLinkAllStatusbarColours:Z

    if-eqz v1, :cond_30d

    .line 280
    sget v1, Lcom/android/mwilky/Renovate;->mBatteryPercentColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryPercentColor:I

    .line 281
    sget v1, Lcom/android/mwilky/Renovate;->mBatteryIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryIconColor:I

    .line 282
    sget v1, Lcom/android/mwilky/Renovate;->mSignalIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsSignalIconColor:I

    .line 283
    sget v1, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsWifiIconColor:I

    .line 284
    sget v1, Lcom/android/mwilky/Renovate;->mBluetoothIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBluetoothIconColor:I

    .line 285
    sget v1, Lcom/android/mwilky/Renovate;->mVolumeIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsVolumeIconColor:I

    .line 286
    sget v1, Lcom/android/mwilky/Renovate;->mLocationIconColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsLocationIconColor:I

    .line 287
    sget v1, Lcom/android/mwilky/Renovate;->mStatusbarMiscColor:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsCarrierTextColor:I

    .line 288
    sput v1, Lcom/android/mwilky/Renovate;->mLsMiscColor:I

    goto :goto_321

    .line 290
    :cond_30d
    sget v1, Lcom/android/mwilky/Renovate;->mGlobalStatusbarIconColorLs:I

    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryPercentColor:I

    .line 291
    sput v1, Lcom/android/mwilky/Renovate;->mLsBatteryIconColor:I

    .line 292
    sput v1, Lcom/android/mwilky/Renovate;->mLsSignalIconColor:I

    .line 293
    sput v1, Lcom/android/mwilky/Renovate;->mLsWifiIconColor:I

    .line 294
    sput v1, Lcom/android/mwilky/Renovate;->mLsBluetoothIconColor:I

    .line 295
    sput v1, Lcom/android/mwilky/Renovate;->mLsVolumeIconColor:I

    .line 296
    sput v1, Lcom/android/mwilky/Renovate;->mLsLocationIconColor:I

    .line 297
    sput v1, Lcom/android/mwilky/Renovate;->mLsCarrierTextColor:I

    .line 298
    sput v1, Lcom/android/mwilky/Renovate;->mLsMiscColor:I

    .line 303
    :goto_321
    return-void
.end method
