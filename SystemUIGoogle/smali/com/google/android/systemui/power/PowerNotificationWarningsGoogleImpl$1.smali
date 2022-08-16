.class public final Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerNotificationWarningsGoogleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    if-eqz v2, :cond_2c

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_14

    :cond_0
    const-string/jumbo v0, "onReceive: "

    invoke-static {v0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PowerNotificationWarningsGoogleImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    iget-object v3, v3, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mBatteryInfoBroadcast:Lcom/google/android/systemui/power/BatteryInfoBroadcast;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v12, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v11, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v12, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_0

    :cond_2
    const/4 v11, 0x7

    goto :goto_0

    :sswitch_2
    const-string v12, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_0

    :cond_3
    const/4 v11, 0x6

    goto :goto_0

    :sswitch_3
    const-string v12, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_0

    :cond_4
    const/4 v11, 0x5

    goto :goto_0

    :sswitch_4
    const-string v12, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_0

    :cond_5
    const/4 v11, 0x4

    goto :goto_0

    :sswitch_5
    const-string v12, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_0

    :cond_6
    const/4 v11, 0x3

    goto :goto_0

    :sswitch_6
    const-string v12, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    goto :goto_0

    :cond_7
    const/4 v11, 0x2

    goto :goto_0

    :sswitch_7
    const-string v12, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_0

    :cond_8
    const/4 v11, 0x1

    goto :goto_0

    :sswitch_8
    const-string v12, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    goto :goto_0

    :cond_9
    const/4 v11, 0x0

    :goto_0
    packed-switch v11, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "PNW.bluetoothStatusChanged"

    invoke-static {v0}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_1
    const-string v11, "PNW.batteryStatusChanged"

    invoke-static {v11}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const-string v12, "battery_changed_intent"

    invoke-virtual {v11, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_a
    iget-object v12, v3, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v12}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v12

    const-string v13, "battery_save"

    invoke-virtual {v11, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v3, v11}, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isPowerSaveMode: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BatteryInfoBroadcast"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, v1, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    iget-object v0, v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mBatteryDefenderNotification:Lcom/google/android/systemui/power/BatteryDefenderNotification;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v11, "PNW.defenderResumeCharging"

    const-string/jumbo v12, "plugged"

    if-eqz v4, :cond_1b

    const-string v3, "level"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v13, "scale"

    invoke-virtual {v2, v13, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const/high16 v15, 0x42c80000    # 100.0f

    if-nez v14, :cond_b

    move v4, v8

    goto :goto_2

    :cond_b
    int-to-float v4, v4

    int-to-float v14, v14

    div-float/2addr v4, v14

    mul-float/2addr v4, v15

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    :goto_2
    iput v4, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mBatteryLevel:I

    invoke-virtual {v2, v12, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_c

    move v4, v9

    goto :goto_3

    :cond_c
    move v4, v10

    :goto_3
    const-string v14, "health"

    invoke-virtual {v2, v14, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v7, :cond_d

    move v7, v9

    goto :goto_4

    :cond_d
    move v7, v10

    :goto_4
    const-string/jumbo v14, "status"

    invoke-virtual {v2, v14, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v6, :cond_e

    move v6, v9

    goto :goto_5

    :cond_e
    move v6, v10

    :goto_5
    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v13, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_f

    goto :goto_6

    :cond_f
    int-to-float v3, v3

    int-to-float v8, v13

    div-float/2addr v3, v8

    mul-float/2addr v3, v15

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v8

    :goto_6
    if-nez v6, :cond_11

    const/16 v3, 0x64

    if-lt v8, v3, :cond_10

    goto :goto_7

    :cond_10
    move v9, v10

    :cond_11
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPlugged: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " | isOverheated: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " | defenderEnabled: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDefenderEnabled:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " | isCharged: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "BatteryDefenderNotification"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f13029b

    const-string v8, "battery_defender"

    if-eqz v9, :cond_12

    iget-boolean v9, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mPostNotificationVisible:Z

    if-eqz v9, :cond_12

    iput-boolean v10, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mPostNotificationVisible:Z

    invoke-virtual {v0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v9, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v8, v3, v13}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_12
    const-string/jumbo v9, "trigger_time"

    const v13, 0x108081e

    const-string v14, "android.intent.action.VIEW"

    const v15, 0x7f130297

    if-eqz v7, :cond_17

    iget-boolean v6, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDefenderEnabled:Z

    if-nez v6, :cond_14

    iget-boolean v6, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mPostNotificationVisible:Z

    if-eqz v6, :cond_13

    iput-boolean v10, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mPostNotificationVisible:Z

    invoke-virtual {v0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v6, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v8, v3, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_13
    invoke-virtual {v0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    invoke-interface {v3, v9, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_14
    iget-boolean v3, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDefenderEnabled:Z

    if-eqz v3, :cond_15

    iget-boolean v3, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mPrvPluggedState:Z

    if-ne v3, v4, :cond_15

    goto/16 :goto_b

    :cond_15
    iput-boolean v4, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mPrvPluggedState:Z

    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, v3, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput v13, v6, Landroid/app/Notification;->icon:I

    iget-object v6, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    const v7, 0x7f130299

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v3, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    iget-object v6, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    const v7, 0x7f130296

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v3, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    iget-object v6, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    const v7, 0x7f13011d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    invoke-virtual {v7, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v9, v14, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v10, 0x4000000

    const/4 v13, 0x0

    invoke-static {v7, v13, v9, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iget-object v9, v3, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v10, Landroidx/core/app/NotificationCompat$Action;

    invoke-direct {v10, v6, v7}, Landroidx/core/app/NotificationCompat$Action;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_16

    iget-object v4, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    const v6, 0x7f130298

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    invoke-static {v6, v11}, Lcom/google/android/systemui/power/PowerUtils;->createNormalChargingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    iget-object v7, v3, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroidx/core/app/NotificationCompat$Action;

    invoke-direct {v9, v4, v6}, Landroidx/core/app/NotificationCompat$Action;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    iget-object v4, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    const v6, 0x10405e3

    invoke-static {v4, v3, v6}, Lcom/google/android/systemui/power/PowerUtils;->overrideNotificationAppName(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;I)V

    iget-object v4, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v7, 0x7f130299

    invoke-virtual {v4, v8, v7, v3, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iget-boolean v3, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDefenderEnabled:Z

    if-nez v3, :cond_1d

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDefenderEnabled:Z

    iget-object v0, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz v0, :cond_1d

    sget-object v3, Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;->BATTERY_DEFENDER_NOTIFICATION:Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;

    invoke-interface {v0, v3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto/16 :goto_b

    :cond_17
    iget-boolean v4, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDefenderEnabled:Z

    if-eqz v4, :cond_1d

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mDefenderEnabled:Z

    iget-object v4, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v10, 0x7f130299

    invoke-virtual {v4, v8, v10, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    invoke-virtual {v0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {v0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-wide/16 v10, -0x1

    invoke-interface {v4, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v16, 0x0

    cmp-long v4, v9, v16

    if-lez v4, :cond_18

    iget-object v7, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    invoke-static {v7, v9, v10}, Lcom/google/android/systemui/power/PowerUtils;->getCurrentTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_18
    const/4 v7, 0x0

    :goto_8
    if-eqz v7, :cond_1a

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/time/Clock;->millis()J

    move-result-wide v16

    sub-long v16, v16, v9

    if-lez v4, :cond_19

    const-wide/32 v9, 0x927c0

    cmp-long v4, v16, v9

    if-ltz v4, :cond_19

    const/4 v4, 0x1

    goto :goto_9

    :cond_19
    const/4 v4, 0x0

    :goto_9
    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    invoke-static {v4, v9, v10}, Lcom/google/android/systemui/power/PowerUtils;->getCurrentTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v6

    const-wide v9, 0x3fe99999a0000000L    # 0.800000011920929

    invoke-virtual {v6, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    const v10, 0x7f13029a

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v11, v16

    const/4 v6, 0x1

    aput-object v7, v11, v6

    const/4 v6, 0x2

    aput-object v4, v11, v6

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v7, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, v6, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput v13, v7, Landroid/app/Notification;->icon:I

    iget-object v7, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v6, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v6, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    const v7, 0x7f13011d

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    invoke-virtual {v7, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v9, v14, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v10, 0x4000000

    const/4 v11, 0x0

    invoke-static {v7, v11, v9, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iget-object v9, v6, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v10, Landroidx/core/app/NotificationCompat$Action;

    invoke-direct {v10, v4, v7}, Landroidx/core/app/NotificationCompat$Action;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mContext:Landroid/content/Context;

    const v7, 0x10405e3

    invoke-static {v4, v6, v7}, Lcom/google/android/systemui/power/PowerUtils;->overrideNotificationAppName(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;I)V

    iget-object v4, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v8, v3, v6, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/google/android/systemui/power/BatteryDefenderNotification;->mPostNotificationVisible:Z

    goto :goto_a

    :cond_1a
    const-string v3, "error getting trigger time"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    invoke-virtual {v0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_b

    :cond_1b
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    sget-object v3, Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;->BATTERY_DEFENDER_BYPASS_LIMIT:Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;

    invoke-virtual {v0, v3}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->resumeCharging(Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;)V

    goto :goto_b

    :cond_1c
    const-string v4, "PNW.defenderResumeCharging.settings"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    sget-object v3, Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;->BATTERY_DEFENDER_BYPASS_LIMIT_FOR_TIPS:Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;

    invoke-virtual {v0, v3}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->resumeCharging(Lcom/google/android/systemui/power/BatteryDefenderNotification$BatteryDefenderEvent;)V

    :cond_1d
    :goto_b
    iget-object v0, v1, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    iget-object v3, v0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mAdaptiveChargingNotification:Lcom/google/android/systemui/power/AdaptiveChargingNotification;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    goto/16 :goto_11

    :cond_1e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v6, "com.google.android.systemui.adaptivecharging.ADAPTIVE_CHARGING_DEADLINE_SET"

    const v7, -0x5bb23923

    if-eq v4, v7, :cond_23

    const v7, -0xd2ac881

    if-eq v4, v7, :cond_21

    const v7, 0x52843923

    if-eq v4, v7, :cond_1f

    goto :goto_c

    :cond_1f
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_c

    :cond_20
    const/4 v0, 0x2

    goto :goto_d

    :cond_21
    const-string v4, "PNW.acChargeNormally"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_c

    :cond_22
    const/4 v0, 0x1

    goto :goto_d

    :cond_23
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    :goto_c
    const/4 v0, -0x1

    goto :goto_d

    :cond_24
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_28

    const/4 v4, 0x1

    if-eq v0, v4, :cond_26

    const/4 v6, 0x2

    if-eq v0, v6, :cond_25

    goto :goto_10

    :cond_25
    invoke-virtual {v3, v4}, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->checkAdaptiveChargingStatus(Z)V

    goto :goto_10

    :cond_26
    iget-object v0, v3, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->initHalInterface(Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$1;)Lvendor/google/google_battery/V1_2/IGoogleBattery;

    move-result-object v7

    if-nez v7, :cond_27

    goto :goto_f

    :cond_27
    :try_start_0
    invoke-interface {v7}, Lvendor/google/google_battery/V1_0/IGoogleBattery;->setChargingDeadline()B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :catch_0
    move-exception v0

    move-object v8, v0

    const-string v0, "AdaptiveChargingManager"

    const-string/jumbo v9, "setChargingDeadline failed: "

    invoke-static {v0, v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->destroyHalInterface(Lvendor/google/google_battery/V1_2/IGoogleBattery;Landroid/os/IHwBinder$DeathRecipient;)V

    :goto_f
    invoke-virtual {v3}, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->cancelNotification()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v6, 0x50000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-object v3, v3, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_10
    move v0, v4

    goto :goto_11

    :cond_28
    const/4 v0, 0x1

    invoke-virtual {v3, v2}, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->resolveBatteryChangedIntent(Landroid/content/Intent;)V

    :goto_11
    iget-object v1, v1, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$1;->this$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    iget-object v1, v1, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mSevereBatteryDialogController:Lcom/google/android/systemui/power/SevereBatteryDialogController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PNW.enableSevereDialog"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const-string v3, "extra_scheduled_by_percentage"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, v1, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "com.google.android.flipendo.api"

    const-string v6, "get_flipendo_state"

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7, v7}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "is_flipendo_aggressive"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_29

    if-eqz v2, :cond_29

    goto :goto_12

    :cond_29
    const/4 v0, 0x0

    :goto_12
    if-nez v0, :cond_2c

    invoke-virtual {v1}, Lcom/google/android/systemui/power/SevereBatteryDialogController;->showSevereBatteryDialog()V

    goto :goto_14

    :cond_2a
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_13

    :cond_2b
    move v0, v3

    :goto_13
    if-eqz v0, :cond_2c

    iget-object v0, v1, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mSevereBatteryDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, v1, Lcom/google/android/systemui/power/SevereBatteryDialogController;->mSevereBatteryDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2c
    :goto_14
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5bb23923 -> :sswitch_8
        -0x5b36f014 -> :sswitch_7
        -0x2486726f -> :sswitch_6
        0x2083ec2d -> :sswitch_5
        0x2287d448 -> :sswitch_4
        0x42f3be3f -> :sswitch_3
        0x46028ae6 -> :sswitch_2
        0x4a286686 -> :sswitch_1
        0x6a0dd473 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
