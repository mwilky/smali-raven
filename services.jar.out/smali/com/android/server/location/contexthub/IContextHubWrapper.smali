.class public abstract Lcom/android/server/location/contexthub/IContextHubWrapper;
.super Ljava/lang/Object;
.source "IContextHubWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;,
        Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_1;,
        Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IContextHubWrapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static maybeConnectTo1_0()Lcom/android/server/location/contexthub/IContextHubWrapper;
    .locals 4

    const-string v0, "IContextHubWrapper"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Landroid/hardware/contexthub/V1_0/IContexthub;->getService(Z)Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Context Hub HAL service not found"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "RemoteException while attaching to Context Hub HAL proxy"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_1
    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    :cond_0
    new-instance v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;

    invoke-direct {v0, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;-><init>(Landroid/hardware/contexthub/V1_0/IContexthub;)V

    :goto_2
    return-object v0
.end method

.method public static maybeConnectTo1_1()Lcom/android/server/location/contexthub/IContextHubWrapper;
    .locals 4

    const-string v0, "IContextHubWrapper"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Landroid/hardware/contexthub/V1_1/IContexthub;->getService(Z)Landroid/hardware/contexthub/V1_1/IContexthub;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Context Hub HAL service not found"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "RemoteException while attaching to Context Hub HAL proxy"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_1
    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    :cond_0
    new-instance v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_1;

    invoke-direct {v0, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_1;-><init>(Landroid/hardware/contexthub/V1_1/IContexthub;)V

    :goto_2
    return-object v0
.end method

.method public static maybeConnectTo1_2()Lcom/android/server/location/contexthub/IContextHubWrapper;
    .locals 4

    const-string v0, "IContextHubWrapper"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Landroid/hardware/contexthub/V1_2/IContexthub;->getService(Z)Landroid/hardware/contexthub/V1_2/IContexthub;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Context Hub HAL service not found"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "RemoteException while attaching to Context Hub HAL proxy"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_1
    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    :cond_0
    new-instance v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;

    invoke-direct {v0, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_2;-><init>(Landroid/hardware/contexthub/V1_2/IContexthub;)V

    :goto_2
    return-object v0
.end method


# virtual methods
.method public abstract getHub()Landroid/hardware/contexthub/V1_0/IContexthub;
.end method

.method public abstract getHubs()Landroid/util/Pair;
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
.end method

.method public abstract onAirplaneModeSettingChanged(Z)V
.end method

.method public abstract onLocationSettingChanged(Z)V
.end method

.method public abstract onMicrophoneDisableSettingChanged(Z)V
.end method

.method public abstract onWifiSettingChanged(Z)V
.end method

.method public abstract registerCallback(ILandroid/hardware/contexthub/V1_2/IContexthubCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract supportsAirplaneModeSettingNotifications()Z
.end method

.method public abstract supportsLocationSettingNotifications()Z
.end method

.method public abstract supportsMicrophoneDisableSettingNotifications()Z
.end method

.method public abstract supportsWifiSettingNotifications()Z
.end method
