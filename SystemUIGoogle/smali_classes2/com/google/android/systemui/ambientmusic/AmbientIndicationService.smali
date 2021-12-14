.class public Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;
.super Landroid/content/BroadcastReceiver;
.source "AmbientIndicationService.java"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAmbientIndicationContainer:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mContext:Landroid/content/Context;

.field private final mHideIndicationListener:Landroid/app/AlarmManager$OnAlarmListener;


# direct methods
.method public static synthetic $r8$lambda$_PISy3-NUfWLGTo7xoM-qjBWnTI(Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;Landroid/app/AlarmManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService$1;-><init>(Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;)V

    iput-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mAmbientIndicationContainer:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    iput-object p3, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance p1, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;)V

    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mHideIndicationListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->start()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mAmbientIndicationContainer:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    invoke-virtual {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->hideAmbientMusic()V

    return-void
.end method

.method private verifyAmbientApiVersion(Landroid/content/Intent;)Z
    .locals 3

    const-string p0, "com.google.android.ambientindication.extra.VERSION"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AmbientIndicationApi.EXTRA_VERSION is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but received an intent with version "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", dropping intent."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AmbientIndication"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    return p1
.end method


# virtual methods
.method getCurrentUser()I
    .locals 0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    return p0
.end method

.method isForCurrentUser()Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->getCurrentUser()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->isForCurrentUser()Z

    move-result v2

    const-string v3, "AmbientIndication"

    if-nez v2, :cond_0

    const-string v0, "Suppressing ambient, not for this user."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {v0, v1}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->verifyAmbientApiVersion(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v4, "com.google.android.ambientindication.action.AMBIENT_INDICATION_HIDE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "com.google.android.ambientindication.action.AMBIENT_INDICATION_SHOW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "com.google.android.ambientindication.extra.TEXT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    const-string v2, "com.google.android.ambientindication.extra.OPEN_INTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/app/PendingIntent;

    const-string v2, "com.google.android.ambientindication.extra.FAVORITING_INTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/app/PendingIntent;

    const-string v2, "com.google.android.ambientindication.extra.TTL_MILLIS"

    const-wide/32 v8, 0x2bf20

    invoke-virtual {v1, v2, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    const-string v2, "com.google.android.ambientindication.extra.SKIP_UNLOCK"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    const-string v2, "com.google.android.ambientindication.extra.ICON_OVERRIDE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iget-object v4, v0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mAmbientIndicationContainer:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->setAmbientMusic(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZ)V

    iget-object v12, v0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v13, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long v14, v1, v10

    iget-object v0, v0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mHideIndicationListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/16 v18, 0x0

    const-string v16, "AmbientIndication"

    move-object/from16 v17, v0

    invoke-virtual/range {v12 .. v18}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    const-string v0, "Showing ambient indication."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, v0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mHideIndicationListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iget-object v0, v0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mAmbientIndicationContainer:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    invoke-virtual {v0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->hideAmbientMusic()V

    const-string v0, "Hiding ambient indication."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method onUserSwitched()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mAmbientIndicationContainer:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    invoke-virtual {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->hideAmbientMusic()V

    return-void
.end method

.method start()V
    .locals 6

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.google.android.ambientindication.action.AMBIENT_INDICATION_SHOW"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.ambientindication.action.AMBIENT_INDICATION_HIDE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "com.google.android.ambientindication.permission.AMBIENT_INDICATION"

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
