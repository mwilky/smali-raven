.class public final Lcom/android/systemui/statusbar/tv/VpnStatusObserver;
.super Lcom/android/systemui/SystemUI;
.source "VpnStatusObserver.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tv/VpnStatusObserver$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/tv/VpnStatusObserver$Companion;

.field private static final NOTIFICATION_TAG:Ljava/lang/String;


# instance fields
.field private final notificationChannel:Landroid/app/NotificationChannel;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private final securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private vpnConnected:Z

.field private final vpnConnectedNotificationBuilder:Landroid/app/Notification$Builder;

.field private final vpnDisconnectedNotification:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/tv/VpnStatusObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->Companion:Lcom/android/systemui/statusbar/tv/VpnStatusObserver$Companion;

    const-class v0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VpnStatusObserver::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->NOTIFICATION_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(SecurityController::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->notificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->createNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->notificationChannel:Landroid/app/NotificationChannel;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->createVpnConnectedNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->vpnConnectedNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->createVpnDisconnectedNotification()Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->vpnDisconnectedNotification:Landroid/app/Notification;

    return-void
.end method

.method public static final synthetic access$getNOTIFICATION_TAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->NOTIFICATION_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final createNotificationChannel()Landroid/app/NotificationChannel;
    .locals 3

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "VPN Status"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-object v0
.end method

.method private final createVpnConnectedNotification()Landroid/app/Notification;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->vpnConnectedNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->getVpnName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->notification_disclosure_vpn_text:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method private final createVpnConnectedNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 3

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "VPN Status"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->getVpnIconId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v2, "sys"

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v2, Landroid/app/Notification$TvExtender;

    invoke-direct {v2}, Landroid/app/Notification$TvExtender;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->notification_vpn_connected:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method private final createVpnDisconnectedNotification()Landroid/app/Notification;
    .locals 3

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "VPN Status"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->getVpnIconId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "sys"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$TvExtender;

    invoke-direct {v1}, Landroid/app/Notification$TvExtender;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->notification_vpn_disconnected:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method private final getVpnIconId()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnBranded()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_branded_vpn:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_vpn_ic:I

    :goto_0
    return p0
.end method

.method private final getVpnName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileVpnName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private final notifyVpnConnected()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->notificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->Companion:Lcom/android/systemui/statusbar/tv/VpnStatusObserver$Companion;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tv/VpnStatusObserver$Companion;->getNOTIFICATION_TAG()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->createVpnConnectedNotification()Landroid/app/Notification;

    move-result-object p0

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private final notifyVpnDisconnected()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->notificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->Companion:Lcom/android/systemui/statusbar/tv/VpnStatusObserver$Companion;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tv/VpnStatusObserver$Companion;->getNOTIFICATION_TAG()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tv/VpnStatusObserver$Companion;->getNOTIFICATION_TAG()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->vpnDisconnectedNotification:Landroid/app/Notification;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->vpnConnected:Z

    if-eq v1, v0, :cond_1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->notifyVpnConnected()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->notifyVpnDisconnected()V

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->vpnConnected:Z

    :cond_1
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/VpnStatusObserver;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method
