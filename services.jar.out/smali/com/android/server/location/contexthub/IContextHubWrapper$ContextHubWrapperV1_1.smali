.class Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_1;
.super Lcom/android/server/location/contexthub/IContextHubWrapper;
.source "IContextHubWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/IContextHubWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContextHubWrapperV1_1"
.end annotation


# instance fields
.field private mHub:Landroid/hardware/contexthub/V1_1/IContexthub;


# direct methods
.method constructor <init>(Landroid/hardware/contexthub/V1_1/IContexthub;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_1;->mHub:Landroid/hardware/contexthub/V1_1/IContexthub;

    return-void
.end method


# virtual methods
.method public getHub()Landroid/hardware/contexthub/V1_0/IContexthub;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_1;->mHub:Landroid/hardware/contexthub/V1_1/IContexthub;

    return-object v0
.end method

.method public getHubs()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/V1_0/ContextHub;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_1;->mHub:Landroid/hardware/contexthub/V1_1/IContexthub;

    invoke-interface {v1}, Landroid/hardware/contexthub/V1_1/IContexthub;->getHubs()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public onAirplaneModeSettingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onLocationSettingChanged(Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_1;->mHub:Landroid/hardware/contexthub/V1_1/IContexthub;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-interface {v0, v1, v2}, Landroid/hardware/contexthub/V1_1/IContexthub;->onSettingChanged(BB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "IContextHubWrapper"

    const-string v2, "Failed to send setting change to Contexthub"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public onMicrophoneDisableSettingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onWifiSettingChanged(Z)V
    .locals 0

    return-void
.end method

.method public registerCallback(ILandroid/hardware/contexthub/V1_2/IContexthubCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_1;->mHub:Landroid/hardware/contexthub/V1_1/IContexthub;

    invoke-interface {v0, p1, p2}, Landroid/hardware/contexthub/V1_1/IContexthub;->registerCallback(ILandroid/hardware/contexthub/V1_0/IContexthubCallback;)I

    return-void
.end method

.method public supportsAirplaneModeSettingNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsLocationSettingNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsMicrophoneDisableSettingNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsWifiSettingNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
