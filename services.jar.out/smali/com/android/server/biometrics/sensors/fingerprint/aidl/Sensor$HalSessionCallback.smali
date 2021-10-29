.class Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;
.super Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;
.source "Sensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HalSessionCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

.field private final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field private final mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

.field private final mSensorId:I

.field private final mTag:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;IILcom/android/server/biometrics/sensors/LockoutCache;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    iput p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    iput p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mUserId:I

    iput-object p7, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    iput-object p8, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iput-object p9, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    const-string v0, "3621eefdbae063097dad0037cd1f111792ff12ec"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$onAcquired$2$Sensor$HalSessionCallback(BI)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAcquired for non-acquisition client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlConversionUtils;->toFrameworkAcquiredInfo(B)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    return-void
.end method

.method public synthetic lambda$onAuthenticationFailed$6$Sensor$HalSessionCallback()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthenticationFailed for non-authentication consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    new-instance v2, Landroid/hardware/fingerprint/Fingerprint;

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v3, v3

    const-string v5, ""

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6, v3, v4}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v6, v3}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    return-void
.end method

.method public synthetic lambda$onAuthenticationSucceeded$5$Sensor$HalSessionCallback(ILandroid/hardware/keymaster/HardwareAuthToken;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthenticationSucceeded for non-authentication consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    new-instance v2, Landroid/hardware/fingerprint/Fingerprint;

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v3, v3

    const-string v5, ""

    invoke-direct {v2, v5, p1, v3, v4}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    invoke-static {p2}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toByteArray(Landroid/hardware/keymaster/HardwareAuthToken;)[B

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-byte v7, v3, v6

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    invoke-interface {v1, v2, v5, v4}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    return-void
.end method

.method public synthetic lambda$onAuthenticatorIdInvalidated$14$Sensor$HalSessionCallback(J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInvalidationClient;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthenticatorIdInvalidated for wrong consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInvalidationClient;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInvalidationClient;->onAuthenticatorIdInvalidated(J)V

    return-void
.end method

.method public synthetic lambda$onAuthenticatorIdRetrieved$13$Sensor$HalSessionCallback(J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthenticatorIdRetrieved for wrong consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;->onAuthenticatorIdRetrieved(J)V

    return-void
.end method

.method public synthetic lambda$onChallengeGenerated$0$Sensor$HalSessionCallback(J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGenerateChallengeClient;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChallengeGenerated for wrong client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGenerateChallengeClient;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mUserId:I

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGenerateChallengeClient;->onChallengeGenerated(IIJ)V

    return-void
.end method

.method public synthetic lambda$onChallengeRevoked$1$Sensor$HalSessionCallback(J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChallengeRevoked for wrong client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mUserId:I

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;->onChallengeRevoked(IIJ)V

    return-void
.end method

.method public synthetic lambda$onEnrollmentProgress$4$Sensor$HalSessionCallback(II)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEnrollmentProgress for non-enroll client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Landroid/hardware/fingerprint/Fingerprint;

    iget v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v4, v4

    invoke-direct {v3, v2, p1, v4, v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    move-object v4, v0

    check-cast v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;

    invoke-virtual {v4, v3, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method public synthetic lambda$onEnrollmentsEnumerated$11$Sensor$HalSessionCallback([I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEnrollmentsEnumerated for non-enumerate consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    array-length v2, p1

    if-lez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    new-instance v3, Landroid/hardware/fingerprint/Fingerprint;

    aget v4, p1, v2

    iget v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v5, v5

    const-string v7, ""

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    array-length v4, p1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v3, v4}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onEnrollmentsRemoved$12$Sensor$HalSessionCallback([I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRemoved for non-removal consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    array-length v2, p1

    if-lez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    new-instance v3, Landroid/hardware/fingerprint/Fingerprint;

    aget v4, p1, v2

    iget v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v5, v5

    const-string v7, ""

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    array-length v4, p1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v3, v4}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onError$3$Sensor$HalSessionCallback(BI)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onError, client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", vendorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onError for non-error consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlConversionUtils;->toFrameworkError(B)I

    move-result v2

    invoke-interface {v1, v2, p2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;

    invoke-interface {v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;->onHardwareUnavailable()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onInteractionDetected$10$Sensor$HalSessionCallback()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onInteractionDetected for non-detect client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->onInteractionDetected()V

    return-void
.end method

.method public synthetic lambda$onLockoutCleared$9$Sensor$HalSessionCallback()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "onLockoutCleared outside of resetLockout by HAL"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mUserId:I

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;->resetLocalLockoutStateToNone(IILcom/android/server/biometrics/sensors/LockoutCache;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "onLockoutCleared after resetLockout"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;->onLockoutCleared()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onLockoutPermanent$8$Sensor$HalSessionCallback()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLockoutPermanent for non-lockout consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/LockoutConsumer;->onLockoutPermanent()V

    return-void
.end method

.method public synthetic lambda$onLockoutTimed$7$Sensor$HalSessionCallback(J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLockoutTimed for non-lockout consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/biometrics/sensors/LockoutConsumer;->onLockoutTimed(J)V

    return-void
.end method

.method public onAcquired(BI)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;BI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;ILandroid/hardware/keymaster/HardwareAuthToken;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticatorIdInvalidated(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticatorIdRetrieved(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChallengeGenerated(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChallengeRevoked(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnrollmentProgress(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnrollmentsEnumerated([I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnrollmentsRemoved([I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(BI)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;BI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInteractionDetected()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLockoutCleared()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLockoutPermanent()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLockoutTimed(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSessionClosed()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
