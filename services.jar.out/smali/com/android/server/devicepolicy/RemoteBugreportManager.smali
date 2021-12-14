.class public Lcom/android/server/devicepolicy/RemoteBugreportManager;
.super Ljava/lang/Object;
.source "RemoteBugreportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/RemoteBugreportManager$RemoteBugreportNotificationType;
    }
.end annotation


# static fields
.field static final BUGREPORT_MIMETYPE:Ljava/lang/String; = "application/vnd.android.bugreport"

.field private static final CTL_STOP:Ljava/lang/String; = "ctl.stop"

.field private static final NOTIFICATION_ID:I = 0x28700e57

.field private static final REMOTE_BUGREPORT_SERVICE:Ljava/lang/String; = "bugreportd"

.field private static final REMOTE_BUGREPORT_TIMEOUT_MILLIS:J = 0x927c0L


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

.field private final mRemoteBugreportConsentReceiver:Landroid/content/BroadcastReceiver;

.field private final mRemoteBugreportFinishedReceiver:Landroid/content/BroadcastReceiver;

.field private final mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mRemoteBugreportTimeoutRunnable:Ljava/lang/Runnable;

.field private final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/android/server/devicepolicy/RemoteBugreportManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/RemoteBugreportManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicepolicy/RemoteBugreportManager;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/devicepolicy/RemoteBugreportManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/RemoteBugreportManager$1;-><init>(Lcom/android/server/devicepolicy/RemoteBugreportManager;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportFinishedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/devicepolicy/RemoteBugreportManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/RemoteBugreportManager$2;-><init>(Lcom/android/server/devicepolicy/RemoteBugreportManager;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportConsentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iget-object v0, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/devicepolicy/RemoteBugreportManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/devicepolicy/RemoteBugreportManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->onBugreportFinished(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/devicepolicy/RemoteBugreportManager;)Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/devicepolicy/RemoteBugreportManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->onBugreportSharingAccepted()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/devicepolicy/RemoteBugreportManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->onBugreportSharingDeclined()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/devicepolicy/RemoteBugreportManager;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportConsentReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/devicepolicy/RemoteBugreportManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildNotification(I)Landroid/app/Notification;
    .locals 11

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SHOW_REMOTE_BUGREPORT_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.app.extra.bugreport_notification_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x100000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v2, "DevicePolicyManager"

    const-string v3, "Failed to resolve intent for remote bugreport dialog"

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    const/high16 v5, 0x4000000

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, p1

    move-object v4, v0

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x108080e

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    const v6, 0x106001c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    new-instance v5, Landroid/app/Notification$TvExtender;

    invoke-direct {v5}, Landroid/app/Notification$TvExtender;-><init>()V

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne p1, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    const v7, 0x10407e3

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v6, v6, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto/16 :goto_1

    :cond_1
    if-ne p1, v4, :cond_2

    iget-object v5, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    const v7, 0x1040851

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v6, v6, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v6, 0x28700e57

    const/high16 v7, 0x14000000

    invoke-static {v4, v6, v5, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6, v8, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v6, Landroid/app/Notification$Action$Builder;

    iget-object v7, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    const v8, 0x10402d3

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v8, v7, v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v6}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v6

    new-instance v7, Landroid/app/Notification$Action$Builder;

    iget-object v9, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    const v10, 0x10407de

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v4}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v7}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    const v8, 0x10407e0

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    const v8, 0x10407df

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v9, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_3
    :goto_1
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    return-object v4
.end method

.method private onBugreportFailed()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    const-string v2, "ctl.stop"

    const-string v3, "bugreportd"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDeviceOwnerRemoteBugreportUriAndHash(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    const-string v2, "DevicePolicyManager"

    const v3, 0x28700e57

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.app.extra.BUGREPORT_FAILURE_REASON"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v2, "android.app.action.BUGREPORT_FAILED"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportConsentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportFinishedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private onBugreportFinished(Landroid/content/Intent;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "android.intent.extra.REMOTE_BUGREPORT_HASH"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    const v4, 0x28700e57

    const-string v5, "DevicePolicyManager"

    if-eqz v3, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->shareBugreportWithDeviceOwnerIfExists(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDeviceOwnerRemoteBugreportUriAndHash(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v3

    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->buildNotification(I)Landroid/app/Notification;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :goto_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportFinishedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private onBugreportSharingAccepted()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerRemoteBugreportUriAndHash()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->shareBugreportWithDeviceOwnerIfExists(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    const v2, 0x28700e57

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->buildNotification(I)Landroid/app/Notification;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "DevicePolicyManager"

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onBugreportSharingDeclined()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    const-string v2, "ctl.stop"

    const-string v3, "bugreportd"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportFinishedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDeviceOwnerRemoteBugreportUriAndHash(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v2, "android.app.action.BUGREPORT_SHARING_DECLINED"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private registerRemoteBugreportReceivers()V
    .locals 4

    const-string v0, "application/vnd.android.bugreport"

    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REMOTE_BUGREPORT_DISPATCH"

    invoke-direct {v1, v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportFinishedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "DevicePolicyManager"

    const-string v3, "Failed to set type %s"

    invoke-static {v0, v1, v3, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportConsentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private shareBugreportWithDeviceOwnerIfExists(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v3, v2, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendBugreportToDeviceOwner(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDeviceOwnerRemoteBugreportUriAndHash(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "android.app.extra.BUGREPORT_FAILURE_REASON"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v5, "android.app.action.BUGREPORT_FAILED"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    return-void

    :goto_3
    iget-object v3, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDeviceOwnerRemoteBugreportUriAndHash(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public checkForPendingBugreportAfterBoot()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerRemoteBugreportUriAndHash()Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportConsentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    const v2, 0x28700e57

    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->buildNotification(I)Landroid/app/Notification;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "DevicePolicyManager"

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public synthetic lambda$new$0$RemoteBugreportManager()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->onBugreportFailed()V

    :cond_0
    return-void
.end method

.method public requestBugreport()Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "DevicePolicyManager"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerRemoteBugreportUriAndHash()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getIActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->requestRemoteBugReport()V

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->registerRemoteBugreportReceivers()V

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    const v6, 0x28700e57

    invoke-direct {p0, v5}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->buildNotification(I)Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v6, v7, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/32 v7, 0x927c0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return v5

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v5, "Failed to make remote calls to start bugreportremote service"

    invoke-static {v2, v5, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    iget-object v2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return v1

    :goto_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    throw v0

    :cond_1
    :goto_1
    const-string v0, "Remote bugreport wasn\'t started because there\'s already one running"

    invoke-static {v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
