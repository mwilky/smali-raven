.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;
.super Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint$Stub;
.source "TestHal.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "fingerprint.hidl.TestHal"


# instance fields
.field private mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

.field private final mContext:Landroid/content/Context;

.field private final mSensorId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mSensorId:I

    return-void
.end method


# virtual methods
.method public authenticate(JI)I
    .locals 2

    const-string v0, "fingerprint.hidl.TestHal"

    const-string v1, "Authenticate"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public cancel()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    const/4 v4, 0x5

    invoke-interface {v0, v2, v3, v4, v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onError(JII)V

    :cond_0
    return v1
.end method

.method public enroll([BII)I
    .locals 2

    const-string v0, "fingerprint.hidl.TestHal"

    const-string v1, "enroll"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public enumerate()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "fingerprint.hidl.TestHal"

    const-string v1, "Enumerate"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    if-eqz v2, :cond_0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onEnumerate(JIII)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthenticatorId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isUdfps(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFingerDown(IIFF)V
    .locals 0

    return-void
.end method

.method public onFingerUp()V
    .locals 0

    return-void
.end method

.method public postEnroll()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public preEnroll()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public remove(II)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "fingerprint.hidl.TestHal"

    const-string v1, "Remove"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    const-wide/16 v4, 0x0

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v1

    add-int/lit8 v8, v7, -0x1

    move v7, p1

    invoke-interface/range {v3 .. v8}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onRemoved(JIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    move v5, p2

    move v6, p1

    invoke-interface/range {v2 .. v7}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onRemoved(JIII)V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public setActiveGroup(ILjava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J
    .locals 2

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    const-wide/16 v0, 0x0

    return-wide v0
.end method
