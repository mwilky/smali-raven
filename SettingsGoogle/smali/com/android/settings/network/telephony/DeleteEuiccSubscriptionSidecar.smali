.class public Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;
.super Lcom/android/settings/network/telephony/EuiccOperationSidecar;
.source "DeleteEuiccSubscriptionSidecar.java"


# instance fields
.field private mSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;-><init>()V

    return-void
.end method

.method private deleteSubscription()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;->mSubscriptions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->createCallbackIntent()Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting subscription ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeleteEuiccSubscriptionSidecar"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/euicc/EuiccManager;->deleteSubscription(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public static get(Landroid/app/FragmentManager;)Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;
    .locals 3

    const-class v0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;

    const-string v1, "DeleteEuiccSubscriptionSidecar"

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/android/settings/SidecarFragment;->get(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/android/settings/SidecarFragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;

    return-object p0
.end method


# virtual methods
.method public getReceiverAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.android.settings.network.DELETE_SUBSCRIPTION"

    return-object p0
.end method

.method protected onActionReceived()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->getResultCode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;->deleteSubscription()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->onActionReceived()V

    :goto_0
    return-void
.end method

.method public run(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SidecarFragment;->setState(II)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;->mSubscriptions:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;->deleteSubscription()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Subscriptions cannot be empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
