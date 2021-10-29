.class Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;
.super Lcom/android/server/location/contexthub/IContextHubWrapper;
.source "IContextHubWrapper.java"

# interfaces
.implements Landroid/hardware/contexthub/V1_2/IContexthub$getHubs_1_2Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/IContextHubWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContextHubWrapperV1_2"
.end annotation


# instance fields
.field private final mHub:Landroid/hardware/contexthub/V1_2/IContexthub;

.field private mHubInfo:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/V1_0/ContextHub;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/hardware/contexthub/V1_2/IContexthub;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper;-><init>()V

    new-instance v0, Landroid/util/Pair;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->mHubInfo:Landroid/util/Pair;

    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->mHub:Landroid/hardware/contexthub/V1_2/IContexthub;

    return-void
.end method

.method private sendSettingChanged(BB)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->mHub:Landroid/hardware/contexthub/V1_2/IContexthub;

    invoke-interface {v0, p1, p2}, Landroid/hardware/contexthub/V1_2/IContexthub;->onSettingChanged_1_2(BB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IContextHubWrapper"

    const-string v2, "Failed to send setting change to Contexthub"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getHub()Landroid/hardware/contexthub/V1_0/IContexthub;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->mHub:Landroid/hardware/contexthub/V1_2/IContexthub;

    return-object v0
.end method

.method public getHubs()Landroid/util/Pair;
    .locals 1
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

    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->mHub:Landroid/hardware/contexthub/V1_2/IContexthub;

    invoke-interface {v0, p0}, Landroid/hardware/contexthub/V1_2/IContexthub;->getHubs_1_2(Landroid/hardware/contexthub/V1_2/IContexthub$getHubs_1_2Callback;)V

    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->mHubInfo:Landroid/util/Pair;

    return-object v0
.end method

.method public onAirplaneModeSettingChanged(Z)V
    .locals 1

    nop

    nop

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->sendSettingChanged(BB)V

    return-void
.end method

.method public onLocationSettingChanged(Z)V
    .locals 1

    nop

    nop

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->sendSettingChanged(BB)V

    return-void
.end method

.method public onMicrophoneDisableSettingChanged(Z)V
    .locals 2

    nop

    nop

    xor-int/lit8 v0, p1, 0x1

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->sendSettingChanged(BB)V

    return-void
.end method

.method public onValues(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/contexthub/V1_0/ContextHub;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->mHubInfo:Landroid/util/Pair;

    return-void
.end method

.method public onWifiSettingChanged(Z)V
    .locals 1

    nop

    nop

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->sendSettingChanged(BB)V

    return-void
.end method

.method public registerCallback(ILandroid/hardware/contexthub/V1_2/IContexthubCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;->mHub:Landroid/hardware/contexthub/V1_2/IContexthub;

    invoke-interface {v0, p1, p2}, Landroid/hardware/contexthub/V1_2/IContexthub;->registerCallback_1_2(ILandroid/hardware/contexthub/V1_2/IContexthubCallback;)I

    return-void
.end method

.method public supportsAirplaneModeSettingNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsLocationSettingNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsMicrophoneDisableSettingNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsWifiSettingNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
