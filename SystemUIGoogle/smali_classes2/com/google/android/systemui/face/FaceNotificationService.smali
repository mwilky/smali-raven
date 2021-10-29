.class public Lcom/google/android/systemui/face/FaceNotificationService;
.super Ljava/lang/Object;
.source "FaceNotificationService.java"


# instance fields
.field private mBroadcastReceiver:Lcom/google/android/systemui/face/FaceNotificationBroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mNotificationQueued:Z


# direct methods
.method public static synthetic $r8$lambda$nJ8eJpUwLzDfNO8jiR4i3oJXpNU(Lcom/google/android/systemui/face/FaceNotificationService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/face/FaceNotificationService;->lambda$queueReenrollNotification$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/systemui/face/FaceNotificationService$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/face/FaceNotificationService$1;-><init>(Lcom/google/android/systemui/face/FaceNotificationService;)V

    iput-object v0, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/systemui/face/FaceNotificationService;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/face/FaceNotificationService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/face/FaceNotificationService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mNotificationQueued:Z

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/face/FaceNotificationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/face/FaceNotificationService;->queueReenrollNotification()V

    return-void
.end method

.method private synthetic lambda$queueReenrollNotification$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "face_action_show_reenroll_dialog"

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/systemui/face/FaceNotificationService;->showNotification(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private queueReenrollNotification()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mNotificationQueued:Z

    iget-object v0, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->face_reenroll_notification_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->face_reenroll_notification_content:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/systemui/face/FaceNotificationService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/systemui/face/FaceNotificationService$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/face/FaceNotificationService;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x2710

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showNotification(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mNotificationQueued:Z

    iget-object v1, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const-string v2, "FaceNotificationService"

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to show notification "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Notification manager is null!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "face_action_notification_dismissed"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mBroadcastReceiver:Lcom/google/android/systemui/face/FaceNotificationBroadcastReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {p1, v0, v3, v0, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v4, v0, v3, v0, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->face_notification_name:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/NotificationChannel;

    const/4 v5, 0x4

    const-string v6, "FaceHiPriNotificationChannel"

    invoke-direct {v4, v6, v3, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    new-instance v5, Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "sys"

    invoke-virtual {v5, p0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    const v5, 0x10803cf

    invoke-virtual {p0, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p2, -0x1

    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, p1, p0, p2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private start()V
    .locals 2

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v0, Lcom/google/android/systemui/face/FaceNotificationBroadcastReceiver;

    iget-object v1, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/systemui/face/FaceNotificationBroadcastReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mBroadcastReceiver:Lcom/google/android/systemui/face/FaceNotificationBroadcastReceiver;

    return-void
.end method
