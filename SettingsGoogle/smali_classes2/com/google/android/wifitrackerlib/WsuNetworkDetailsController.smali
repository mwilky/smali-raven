.class public final Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;
.super Ljava/lang/Object;
.source "WsuNetworkDetailsController.java"


# instance fields
.field private final mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

.field private final mWorkerHandler:Landroid/os/Handler;

.field private final mWsuManager:Lcom/google/android/wifitrackerlib/WsuManager;

.field private final mWsuProvidersLoadCallback:Lcom/google/android/wifitrackerlib/WsuManager$WsuProvidersLoadCallback;


# direct methods
.method public static synthetic $r8$lambda$tPNla5qhKPo3zIvtpX9IvMB6yvY(Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/os/Handler;Lcom/android/wifitrackerlib/NetworkDetailsTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;->mWorkerHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    new-instance p4, Lcom/google/android/wifitrackerlib/WsuManager;

    invoke-direct {p4, p1, p2, p3}, Lcom/google/android/wifitrackerlib/WsuManager;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/os/Handler;)V

    iput-object p4, p0, Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;->mWsuManager:Lcom/google/android/wifitrackerlib/WsuManager;

    new-instance p1, Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;)V

    iput-object p1, p0, Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;->mWsuProvidersLoadCallback:Lcom/google/android/wifitrackerlib/WsuManager$WsuProvidersLoadCallback;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;->mWsuManager:Lcom/google/android/wifitrackerlib/WsuManager;

    iget-object v1, p0, Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/wifitrackerlib/WsuManager;->tryGetManageSubscriptionAction(Lcom/android/wifitrackerlib/WifiEntry;)Lcom/android/wifitrackerlib/WifiEntry$ManageSubscriptionAction;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry;->setManageSubscriptionAction(Lcom/android/wifitrackerlib/WifiEntry$ManageSubscriptionAction;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onUiStart()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;->mWsuManager:Lcom/google/android/wifitrackerlib/WsuManager;

    invoke-virtual {v0}, Lcom/google/android/wifitrackerlib/WsuManager;->bindAllServices()V

    iget-object v0, p0, Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;->mWsuManager:Lcom/google/android/wifitrackerlib/WsuManager;

    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;->mWsuProvidersLoadCallback:Lcom/google/android/wifitrackerlib/WsuManager$WsuProvidersLoadCallback;

    invoke-virtual {v0, p0}, Lcom/google/android/wifitrackerlib/WsuManager;->addWsuProvidersLoadCallback(Lcom/google/android/wifitrackerlib/WsuManager$WsuProvidersLoadCallback;)V

    return-void
.end method

.method public onUiStop()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;->mWsuManager:Lcom/google/android/wifitrackerlib/WsuManager;

    invoke-virtual {v0}, Lcom/google/android/wifitrackerlib/WsuManager;->unbindAllServices()V

    iget-object v0, p0, Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;->mWsuManager:Lcom/google/android/wifitrackerlib/WsuManager;

    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuNetworkDetailsController;->mWsuProvidersLoadCallback:Lcom/google/android/wifitrackerlib/WsuManager$WsuProvidersLoadCallback;

    invoke-virtual {v0, p0}, Lcom/google/android/wifitrackerlib/WsuManager;->removeWsuProvidersLoadCallback(Lcom/google/android/wifitrackerlib/WsuManager$WsuProvidersLoadCallback;)V

    return-void
.end method
