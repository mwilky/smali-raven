.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintResetLockoutClient;
.super Lcom/android/server/biometrics/sensors/BaseClientMonitor;
.source "FingerprintResetLockoutClient.java"


# instance fields
.field final mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;ILcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;)V
    .locals 11

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move v7, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIIII)V

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintResetLockoutClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintResetLockoutClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintResetLockoutClient;->getTargetUserId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->resetFailedAttemptsForUser(ZI)V

    invoke-interface {p1, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method
