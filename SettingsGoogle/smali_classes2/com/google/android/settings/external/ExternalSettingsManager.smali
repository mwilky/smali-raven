.class public Lcom/google/android/settings/external/ExternalSettingsManager;
.super Ljava/lang/Object;
.source "ExternalSettingsManager.java"


# direct methods
.method public static getAccessCursorForSpecialSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/slices/SliceData;)Landroid/database/Cursor;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move v0, v1

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "location"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "gesture_double_tap_screen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "data_saver"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "magnify_navbar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "gesture_double_tap_power"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "gesture_double_twist"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "gesture_swipe_down_fingerprint"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "color_inversion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "magnify_gesture"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "auto_brightness"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "master_wifi_toggle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "nfc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "notification_badging"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "enable_wifi_ap"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "night_display"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "gesture_assist"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_10
    const-string v0, "talkback"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_11
    const-string v0, "toggle_airplane"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_12
    const-string v0, "auto_rotate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_13
    const-string v0, "mobile_data"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_14
    const-string v0, "ambient_display_always_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_15
    const-string v0, "gesture_pick_up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_16
    const-string v0, "ambient_display_notification"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 p3, 0x0

    goto :goto_2

    :pswitch_0
    sget-object v0, Lcom/google/android/settings/external/InlineSettings;->LOCATION_SETTING:Lcom/google/android/settings/external/specialcase/LocationSetting;

    invoke-virtual {v0, p0, p3}, Lcom/google/android/settings/external/specialcase/LocationSetting;->getAccessCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/database/Cursor;

    move-result-object p3

    goto :goto_2

    :pswitch_1
    sget-object v0, Lcom/google/android/settings/external/InlineSettings;->DATA_SAVER_SETTING:Lcom/google/android/settings/external/specialcase/DataSaverSetting;

    invoke-virtual {v0, p0, p3}, Lcom/google/android/settings/external/specialcase/DataSaverSetting;->getAccessCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/database/Cursor;

    move-result-object p3

    goto :goto_2

    :pswitch_2
    sget-object v0, Lcom/google/android/settings/external/InlineSettings;->MAGNIFY_NAVBAR_SETTING:Lcom/google/android/settings/external/specialcase/MagnificationSetting;

    invoke-virtual {v0, p0, p3}, Lcom/google/android/settings/external/specialcase/MagnificationSetting;->getAccessCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/database/Cursor;

    move-result-object p3

    goto :goto_2

    :pswitch_3
    sget-object v0, Lcom/google/android/settings/external/InlineSettings;->COLOR_INVERSION_SETTING:Lcom/google/android/settings/external/specialcase/ColorInversionSetting;

    invoke-virtual {v0, p0, p3}, Lcom/google/android/settings/external/specialcase/ColorInversionSetting;->getAccessCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/database/Cursor;

    move-result-object p3

    goto :goto_2

    :pswitch_4
    sget-object v0, Lcom/google/android/settings/external/InlineSettings;->MAGNIFY_GESTURE_SETTING:Lcom/google/android/settings/external/specialcase/MagnificationSetting;

    invoke-virtual {v0, p0, p3}, Lcom/google/android/settings/external/specialcase/MagnificationSetting;->getAccessCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/database/Cursor;

    move-result-object p3

    goto :goto_2

    :pswitch_5
    sget-object v0, Lcom/google/android/settings/external/InlineSettings;->WIFI_SETTING:Lcom/google/android/settings/external/specialcase/WifiSetting;

    invoke-virtual {v0, p0, p3}, Lcom/google/android/settings/external/specialcase/WifiSetting;->getAccessCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/database/Cursor;

    move-result-object p3

    goto :goto_2

    :pswitch_6
    sget-object v0, Lcom/google/android/settings/external/InlineSettings;->NFC_SETTING:Lcom/google/android/settings/external/specialcase/NfcSetting;

    invoke-virtual {v0, p0, p3}, Lcom/google/android/settings/external/specialcase/NfcSetting;->getAccessCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/database/Cursor;

    move-result-object p3

    goto :goto_2

    :pswitch_7
    sget-object v0, Lcom/google/android/settings/external/InlineSettings;->HOTSPOT_SETTING:Lcom/google/android/settings/external/specialcase/HotspotSetting;

    invoke-virtual {v0, p0, p3}, Lcom/google/android/settings/external/specialcase/HotspotSetting;->getAccessCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/database/Cursor;

    move-result-object p3

    goto :goto_2

    :pswitch_8
    sget-object v0, Lcom/google/android/settings/external/InlineSettings;->NIGHTDISPLAY_SETTING:Lcom/google/android/settings/external/specialcase/NightDisplaySetting;

    invoke-virtual {v0, p0, p3}, Lcom/google/android/settings/external/specialcase/NightDisplaySetting;->getAccessCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/database/Cursor;

    move-result-object p3

    goto :goto_2

    :pswitch_9
    sget-object v0, Lcom/google/android/settings/external/InlineSettings;->TALKBACK_SETTING:Lcom/google/android/settings/external/specialcase/AccessibilitySetting;

    invoke-virtual {v0, p0, p3}, Lcom/google/android/settings/external/specialcase/AccessibilitySetting;->getAccessCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/database/Cursor;

    move-result-object p3

    goto :goto_2

    :pswitch_a
    sget-object v0, Lcom/google/android/settings/external/InlineSettings;->MOBILE_DATA_SETTING:Lcom/google/android/settings/external/specialcase/MobileDataSetting;

    invoke-virtual {v0, p0, p3}, Lcom/google/android/settings/external/specialcase/MobileDataSetting;->getAccessCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/database/Cursor;

    move-result-object p3

    goto :goto_2

    :pswitch_b
    new-instance v0, Lcom/google/android/settings/external/specialcase/SliceBasedSetting;

    invoke-direct {v0}, Lcom/google/android/settings/external/specialcase/SliceBasedSetting;-><init>()V

    invoke-virtual {v0, p0, p3}, Lcom/google/android/settings/external/specialcase/SliceBasedSetting;->getAccessCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/database/Cursor;

    move-result-object p3

    :goto_2
    if-eqz p3, :cond_18

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "existing_value"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_17

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :cond_17
    invoke-static {p0, p1, p2, v1}, Lcom/google/android/settings/external/ExternalSettingsManager;->logAccessSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p3

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid access special case key: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x716f2371 -> :sswitch_16
        -0x5c87617d -> :sswitch_15
        -0x5ae99f15 -> :sswitch_14
        -0x4e55d2d9 -> :sswitch_13
        -0x4bd7f615 -> :sswitch_12
        -0x3bb86c23 -> :sswitch_11
        -0x245dfc6d -> :sswitch_10
        -0x2442b1e1 -> :sswitch_f
        -0x16c57465 -> :sswitch_e
        -0x12ca7923 -> :sswitch_d
        -0x8d18fb4 -> :sswitch_c
        0x1a9ab -> :sswitch_b
        0xefdd61 -> :sswitch_a
        0x176690e1 -> :sswitch_9
        0x20012eab -> :sswitch_8
        0x21327637 -> :sswitch_7
        0x3b9766e2 -> :sswitch_6
        0x3e33006f -> :sswitch_5
        0x559beab1 -> :sswitch_4
        0x5f57966e -> :sswitch_3
        0x6081d9c0 -> :sswitch_2
        0x62549440 -> :sswitch_1
        0x714f9fb5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_7
        :pswitch_b
        :pswitch_6
        :pswitch_5
        :pswitch_b
        :pswitch_4
        :pswitch_3
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_2
        :pswitch_1
        :pswitch_b
        :pswitch_0
    .end packed-switch
.end method

.method public static getNewSettingValueQueryParameter(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const-string v0, "new_setting_value"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUpdateCursorForSpecialSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/slices/SliceData;)Landroid/database/Cursor;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move v0, v1

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "location"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "gesture_double_tap_screen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "data_saver"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "magnify_navbar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "gesture_double_tap_power"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "gesture_double_twist"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "gesture_swipe_down_fingerprint"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "color_inversion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "magnify_gesture"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "auto_brightness"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "master_wifi_toggle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "nfc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "notification_badging"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "enable_wifi_ap"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "night_display"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "gesture_assist"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_10
    const-string v0, "talkback"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_11
    const-string v0, "toggle_airplane"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_12
    const-string v0, "auto_rotate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_13
    const-string v0, "mobile_data"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_14
    const-string v0, "ambient_display_always_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_15
    const-string v0, "gesture_pick_up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_16
    const-string v0, "ambient_display_notification"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 p3, 0x0

    goto :goto_2

    :pswitch_0
    sget-object v0, Lcom/google/android/settings/external/InlineSettings;->LOCATION_SETTING:Lcom/google/android/settings/external/specialcase/LocationSetting;

    invoke-interface {v0, p0, p4, p3}, Lcom/google/android/settings/external/Queryable;->getUpdateCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    goto :goto_2

    :pswitch_1
    sget-object v0, Lcom/google/android/settings/external/InlineSettings;->DATA_SAVER_SETTING:Lcom/google/android/settings/external/specialcase/DataSaverSetting;

    invoke-interface {v0, p0, p4, p3}, Lcom/google/android/settings/external/Queryable;->getUpdateCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    goto :goto_2

    :pswitch_2
    sget-object v0, Lcom/google/android/settings/external/InlineSettings;->MAGNIFY_NAVBAR_SETTING:Lcom/google/android/settings/external/specialcase/MagnificationSetting;

    invoke-interface {v0, p0, p4, p3}, Lcom/google/android/settings/external/Queryable;->getUpdateCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    goto :goto_2

    :pswitch_3
    sget-object v0, Lcom/google/android/settings/external/InlineSettings;->COLOR_INVERSION_SETTING:Lcom/google/android/settings/external/specialcase/ColorInversionSetting;

    invoke-interface {v0, p0, p4, p3}, Lcom/google/android/settings/external/Queryable;->getUpdateCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    goto :goto_2

    :pswitch_4
    sget-object v0, Lcom/google/android/settings/external/InlineSettings;->MAGNIFY_GESTURE_SETTING:Lcom/google/android/settings/external/specialcase/MagnificationSetting;

    invoke-interface {v0, p0, p4, p3}, Lcom/google/android/settings/external/Queryable;->getUpdateCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    goto :goto_2

    :pswitch_5
    sget-object v0, Lcom/google/android/settings/external/InlineSettings;->WIFI_SETTING:Lcom/google/android/settings/external/specialcase/WifiSetting;

    invoke-interface {v0, p0, p4, p3}, Lcom/google/android/settings/external/Queryable;->getUpdateCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    goto :goto_2

    :pswitch_6
    sget-object v0, Lcom/google/android/settings/external/InlineSettings;->NFC_SETTING:Lcom/google/android/settings/external/specialcase/NfcSetting;

    invoke-interface {v0, p0, p4, p3}, Lcom/google/android/settings/external/Queryable;->getUpdateCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    goto :goto_2

    :pswitch_7
    sget-object v0, Lcom/google/android/settings/external/InlineSettings;->HOTSPOT_SETTING:Lcom/google/android/settings/external/specialcase/HotspotSetting;

    invoke-interface {v0, p0, p4, p3}, Lcom/google/android/settings/external/Queryable;->getUpdateCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    goto :goto_2

    :pswitch_8
    sget-object v0, Lcom/google/android/settings/external/InlineSettings;->NIGHTDISPLAY_SETTING:Lcom/google/android/settings/external/specialcase/NightDisplaySetting;

    invoke-interface {v0, p0, p4, p3}, Lcom/google/android/settings/external/Queryable;->getUpdateCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    goto :goto_2

    :pswitch_9
    sget-object v0, Lcom/google/android/settings/external/InlineSettings;->TALKBACK_SETTING:Lcom/google/android/settings/external/specialcase/AccessibilitySetting;

    invoke-interface {v0, p0, p4, p3}, Lcom/google/android/settings/external/Queryable;->getUpdateCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    goto :goto_2

    :pswitch_a
    sget-object v0, Lcom/google/android/settings/external/InlineSettings;->MOBILE_DATA_SETTING:Lcom/google/android/settings/external/specialcase/MobileDataSetting;

    invoke-interface {v0, p0, p4, p3}, Lcom/google/android/settings/external/Queryable;->getUpdateCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    goto :goto_2

    :pswitch_b
    new-instance v0, Lcom/google/android/settings/external/specialcase/SliceBasedSetting;

    invoke-direct {v0}, Lcom/google/android/settings/external/specialcase/SliceBasedSetting;-><init>()V

    invoke-interface {v0, p0, p4, p3}, Lcom/google/android/settings/external/Queryable;->getUpdateCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    :goto_2
    if-eqz p3, :cond_18

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p4

    if-eqz p4, :cond_18

    const-string p4, "newValue"

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    if-ltz p4, :cond_17

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :cond_17
    invoke-static {p0, p1, p2, v1}, Lcom/google/android/settings/external/ExternalSettingsManager;->logUpdateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p3

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid update special case key: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x716f2371 -> :sswitch_16
        -0x5c87617d -> :sswitch_15
        -0x5ae99f15 -> :sswitch_14
        -0x4e55d2d9 -> :sswitch_13
        -0x4bd7f615 -> :sswitch_12
        -0x3bb86c23 -> :sswitch_11
        -0x245dfc6d -> :sswitch_10
        -0x2442b1e1 -> :sswitch_f
        -0x16c57465 -> :sswitch_e
        -0x12ca7923 -> :sswitch_d
        -0x8d18fb4 -> :sswitch_c
        0x1a9ab -> :sswitch_b
        0xefdd61 -> :sswitch_a
        0x176690e1 -> :sswitch_9
        0x20012eab -> :sswitch_8
        0x21327637 -> :sswitch_7
        0x3b9766e2 -> :sswitch_6
        0x3e33006f -> :sswitch_5
        0x559beab1 -> :sswitch_4
        0x5f57966e -> :sswitch_3
        0x6081d9c0 -> :sswitch_2
        0x62549440 -> :sswitch_1
        0x714f9fb5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_7
        :pswitch_b
        :pswitch_6
        :pswitch_5
        :pswitch_b
        :pswitch_4
        :pswitch_3
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_2
        :pswitch_1
        :pswitch_b
        :pswitch_0
    .end packed-switch
.end method

.method private static logAccessSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/access"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->buildPrefKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x355

    const/4 v3, 0x0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method

.method private static logUpdateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    invoke-static {p1, p2}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->buildPrefKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x355

    const/4 v3, 0x0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method
