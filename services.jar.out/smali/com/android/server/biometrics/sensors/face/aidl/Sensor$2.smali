.class public Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;
.super Ljava/lang/Object;
.source "Sensor.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/aidl/Sensor;-><init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/face/FaceSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/log/BiometricContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

.field public final synthetic val$biometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field public final synthetic val$lockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final synthetic val$provider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;


# direct methods
.method public static synthetic $r8$lambda$1Xf0XGeXTSj37rDoDvXV8MMuK-Y(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->lambda$getStopUserClient$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$53vLAmUI9iQLVp29LXVuBmz3ado(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;ILcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/hardware/biometrics/face/ISession;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->lambda$getStartUserClient$2(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;ILcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/hardware/biometrics/face/ISession;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$lkdLazpnel2hoQjK8Z7W-z1EKQI(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->lambda$getStartUserClient$1()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->val$biometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->val$lockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->val$provider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$getStartUserClient$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmTag(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Got ERROR_HW_UNAVAILABLE"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fputmCurrentSession(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;)V

    return-void
.end method

.method private synthetic lambda$getStartUserClient$2(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;ILcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/hardware/biometrics/face/ISession;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmTag(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New session created for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with hal version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    invoke-direct {v1, p6, p5, p4, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;-><init>(ILandroid/hardware/biometrics/face/ISession;ILcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;)V

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fputmCurrentSession(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;)V

    invoke-static {p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object p1

    iget-object p5, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {p5}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p1, p5, p4}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->isInvalidationInProgress(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmTag(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Scheduling unfinished invalidation request for sensor: "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", user: "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3, p2, p4}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleInvalidationRequest(II)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getStopUserClient$0()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fputmCurrentSession(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;)V

    return-void
.end method


# virtual methods
.method public getStartUserClient(I)Lcom/android/server/biometrics/sensors/StartUserClient;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/biometrics/sensors/StartUserClient<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object v0

    iget v0, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    new-instance v11, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/os/Handler;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmTag(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmLockoutCache(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Lcom/android/server/biometrics/sensors/LockoutCache;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->val$lockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    new-instance v10, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2$$ExternalSyntheticLambda0;

    invoke-direct {v10, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;)V

    move-object v1, v11

    move v6, v0

    move v7, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;IILcom/android/server/biometrics/sensors/LockoutCache;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$Callback;)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->val$provider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    new-instance v10, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0, v11, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;ILcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)V

    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceStartUserClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->val$provider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmToken(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/os/IBinder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object v1

    iget v6, v1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->val$biometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v1, v0

    move v5, p1

    move-object v9, v11

    invoke-direct/range {v1 .. v10}, Lcom/android/server/biometrics/sensors/face/aidl/FaceStartUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Landroid/hardware/biometrics/face/ISessionCallback;Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;)V

    return-object v0
.end method

.method public getStopUserClient(I)Lcom/android/server/biometrics/sensors/StopUserClient;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/biometrics/sensors/StopUserClient<",
            "*>;"
        }
    .end annotation

    new-instance v9, Lcom/android/server/biometrics/sensors/face/aidl/FaceStopUserClient;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmLazySession(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Ljava/util/function/Supplier;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmToken(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/os/IBinder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object v0

    iget v5, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->val$biometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    new-instance v8, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;)V

    move-object v0, v9

    move v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/face/aidl/FaceStopUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;)V

    return-object v9
.end method
