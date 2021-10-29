.class public Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;
.super Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;
.source "Face10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/face/hidl/Face10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HalResultController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field private final mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

.field private final mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field private final mSensorId:I


# direct methods
.method constructor <init>(ILandroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;-><init>()V

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mSensorId:I

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    iput-object p6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAcquired$2$Face10$HalResultController(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAcquired for non-acquire client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Face10"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    return-void
.end method

.method public synthetic lambda$onAuthenticated$1$Face10$HalResultController(IJLjava/util/ArrayList;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticated for non-authentication consumer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Face10"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Landroid/hardware/face/Face;

    const-string v4, ""

    invoke-direct {v3, v4, p1, p2, p3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    invoke-interface {v1, v3, v2, p4}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    return-void
.end method

.method public synthetic lambda$onEnrollResult$0$Face10$HalResultController(IIJI)V
    .locals 5

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/Face;

    invoke-direct {v1, v0, p2, p3, p4}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v2

    instance-of v3, v2, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onEnrollResult for non-enroll client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Face10"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v3, v2

    check-cast v3, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;

    invoke-virtual {v3, v1, p5}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method public synthetic lambda$onEnumerate$5$Face10$HalResultController(Ljava/util/ArrayList;J)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnumerate for non-enumerate consumer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Face10"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    new-instance v3, Landroid/hardware/face/Face;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, ""

    invoke-direct {v3, v5, v4, p2, p3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

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

.method public synthetic lambda$onError$3$Face10$HalResultController(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleError, client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vendorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Face10"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onError for non-error consumer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    const-string v3, "Got ERROR_HW_UNAVAILABLE"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mCallback:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;->onHardwareUnavailable()V

    :cond_2
    return-void
.end method

.method public synthetic lambda$onLockoutChanged$6$Face10$HalResultController(J)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLockoutChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Face10"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_2

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x2

    :goto_1
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    invoke-virtual {v3, v2}, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;->setCurrentUserLockoutMode(I)V

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mSensorId:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->notifyLockoutResetCallbacks(I)V

    :cond_3
    return-void
.end method

.method public synthetic lambda$onRemoved$4$Face10$HalResultController(Ljava/util/ArrayList;J)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    const-string v2, "Face10"

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRemoved for non-removal consumer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v6, Landroid/hardware/face/Face;

    const-string v7, ""

    invoke-direct {v6, v7, v5, p2, p3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removed, faceId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", remaining: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v6, v7}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    invoke-interface {v1, v2, v4}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    :goto_1
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    const-string v5, "face_unlock_re_enroll"

    invoke-static {v2, v5, v4, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public onAcquired(JIII)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p4, p5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticated(JIILjava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda3;

    move-object v1, v7

    move-object v2, p0

    move v3, p3

    move-wide v4, p1

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;IJLjava/util/ArrayList;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda2;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move v4, p3

    move-wide v5, p1

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;IIJI)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnumerate(JLjava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;Ljava/util/ArrayList;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(JIII)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p4, p5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLockoutChanged(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRemoved(JLjava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;Ljava/util/ArrayList;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCallback(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mCallback:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;

    return-void
.end method
