.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInvalidationClient;
.super Lcom/android/server/biometrics/sensors/InvalidationClient;
.source "FingerprintInvalidationClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/InvalidationClient<",
        "Landroid/hardware/fingerprint/Fingerprint;",
        "Landroid/hardware/biometrics/fingerprint/ISession;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintInvalidationClient"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;IILjava/util/Map;Landroid/hardware/biometrics/IInvalidationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "Landroid/hardware/biometrics/fingerprint/ISession;",
            ">;II",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/hardware/biometrics/IInvalidationCallback;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Lcom/android/server/biometrics/sensors/InvalidationClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;IILjava/util/Map;Landroid/hardware/biometrics/IInvalidationCallback;)V

    return-void
.end method


# virtual methods
.method protected startHalOperation()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInvalidationClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/ISession;

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/ISession;->invalidateAuthenticatorId()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintInvalidationClient"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInvalidationClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_0
    return-void
.end method
