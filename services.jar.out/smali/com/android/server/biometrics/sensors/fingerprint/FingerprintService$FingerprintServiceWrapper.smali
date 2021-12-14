.class final Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;
.super Landroid/hardware/fingerprint/IFingerprintService$Stub;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FingerprintServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V

    return-void
.end method

.method private addAidlProviders()V
    .locals 15

    sget-object v0, Landroid/hardware/biometrics/fingerprint/IFingerprint;->DESCRIPTOR:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v10, v0, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/hardware/biometrics/fingerprint/IFingerprint;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    nop

    invoke-static {v11}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/fingerprint/IFingerprint;

    move-result-object v12

    const-string v13, "FingerprintService"

    if-nez v12, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get declared service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-interface {v12}, Landroid/hardware/biometrics/fingerprint/IFingerprint;->getSensorProps()[Landroid/hardware/biometrics/fingerprint/SensorProps;

    move-result-object v6

    new-instance v14, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$700(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    move-result-object v5

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$600(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-result-object v8

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$900(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object v9

    move-object v3, v14

    move-object v7, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;[Landroid/hardware/biometrics/fingerprint/SensorProps;Ljava/lang/String;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)V

    move-object v3, v14

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$500(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote exception in getSensorProps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method private addHidlProviders(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    sget-boolean v2, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/os/Build;->IS_ENG:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x2

    const-string v5, "com.android.server.biometrics.sensors.fingerprint.test_udfps.enable"

    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$700(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$600(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$900(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object v5

    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->newInstance(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$700(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$600(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$900(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object v5

    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->newInstance(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    move-result-object v2

    :goto_1
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$500(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private authenticateWithPrompt(JLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)J
    .locals 10

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-direct {v1, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x10401a5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    const v2, 0x104038d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    invoke-virtual {v1, v2, v8, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget v3, p3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowedSensorIds(Ljava/util/List;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v9

    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;

    invoke-direct {v4, p0, p5, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;I)V

    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    move-object v1, v9

    move-object v3, v8

    move v5, p4

    move-wide v6, p1

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateUserForOperation(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;IJ)J

    move-result-wide v1

    return-wide v1
.end method

.method static synthetic lambda$authenticateWithPrompt$0(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/content/DialogInterface;I)V
    .locals 3

    const/16 v0, 0xa

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, v0, v1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "Remote exception in negative button onClick()"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "FingerprintService"

    const-string v1, "addAuthenticatorsRegisteredCallback, callback is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$1000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$1100(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$1200(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$1300(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    const-string v0, "FingerprintService"

    const-string v3, "addAuthenticatorsRegisteredCallback failed to register callback"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public addClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$900(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->registerCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V

    return-void
.end method

.method public addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$600(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->addCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V

    return-void
.end method

.method public authenticate(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)J
    .locals 26

    move-object/from16 v7, p0

    move/from16 v8, p4

    move-object/from16 v15, p7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v23

    iget-object v1, v7, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    const/4 v3, 0x1

    move-object/from16 v2, p7

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v6, v23

    invoke-static/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$300(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z

    move-result v0

    const-wide/16 v1, -0x1

    const-string v3, "FingerprintService"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authenticate rejecting package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_0
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v15}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v24

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    if-eqz v24, :cond_1

    :try_start_0
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$400(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v14, p5

    :try_start_1
    invoke-static {v0, v14}, Lcom/android/server/biometrics/Utils;->isUserEncryptedOrLockdown(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x534e4554

    const-string v6, "79776455"

    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    const-string v0, "Authenticate invoked when user is encrypted or lockdown"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move/from16 v14, p5

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_1
    move/from16 v14, p5

    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    iget-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v6}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_3

    move/from16 v18, v6

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    move/from16 v18, v0

    :goto_1
    if-eqz v24, :cond_4

    move/from16 v19, v6

    goto :goto_2

    :cond_4
    const/4 v0, 0x3

    move/from16 v19, v0

    :goto_2
    nop

    const/4 v0, -0x1

    if-ne v8, v0, :cond_5

    iget-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$200(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object v0

    move-object v12, v0

    goto :goto_3

    :cond_5
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v6}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/util/Pair;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v9, v7, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v9, v8}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v9

    invoke-direct {v0, v6, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v12, v0

    :goto_3
    if-nez v12, :cond_6

    const-string v0, "Null provider for authenticate"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_6
    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v0, v8}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getSensorProperties(I)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v25

    if-nez v24, :cond_7

    iget-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v15}, Lcom/android/server/biometrics/Utils;->isSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v25, :cond_7

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, v25

    move/from16 v5, p5

    move-object/from16 v6, p6

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->authenticateWithPrompt(JLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)J

    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v0

    :catchall_2
    move-exception v0

    move-object v1, v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_7
    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v0, 0x0

    new-instance v1, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v2, p6

    invoke-direct {v1, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    move-object/from16 v11, p1

    move-object v3, v12

    move-wide/from16 v12, p2

    move/from16 v14, p5

    move v15, v0

    move-object/from16 v16, v1

    move-object/from16 v17, p7

    move/from16 v20, v24

    invoke-interface/range {v9 .. v20}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;ZIZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    const/4 v2, 0x1

    move-object v1, p2

    move v3, v6

    move v4, v7

    move v5, v8

    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$300(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z

    move-result v0

    const-string v1, "FingerprintService"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelAuthentication rejecting package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$200(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v2, "Null provider for cancelAuthentication"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, p1, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->cancelAuthentication(ILandroid/os/IBinder;J)V

    return-void
.end method

.method public cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelAuthenticationFromService, sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "Null provider for cancelAuthenticationFromService"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p4, p5}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->cancelAuthentication(ILandroid/os/IBinder;J)V

    return-void
.end method

.method public cancelEnrollment(Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$200(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "FingerprintService"

    const-string v2, "Null provider for cancelEnrollment"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->cancelEnrollment(ILandroid/os/IBinder;)V

    return-void
.end method

.method public cancelFingerprintDetect(Landroid/os/IBinder;Ljava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "FingerprintService"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelFingerprintDetect called from non-sysui package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$200(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v2, "Null provider for cancelFingerprintDetect"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, p1, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->cancelAuthentication(ILandroid/os/IBinder;J)V

    return-void
.end method

.method public createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null provider for createTestSession, sensorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v1

    return-object v1
.end method

.method public detectFingerprint(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)J
    .locals 9

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, -0x1

    const-string v3, "FingerprintService"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "detectFingerprint called from non-sysui package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$400(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->isUserEncryptedOrLockdown(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "detectFingerprint invoked when user is not encrypted or lockdown"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$200(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v4, "Null provider for detectFingerprint"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_2
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v6, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v6, p3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    const/4 v8, 0x1

    move-object v4, p1

    move v5, p2

    move-object v7, p4

    invoke-interface/range {v2 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleFingerDetect(ILandroid/os/IBinder;ILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)J

    move-result-wide v1

    return-wide v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    array-length v2, p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "--proto"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v2, v4, :cond_3

    :try_start_1
    aget-object v2, p3, v5

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "--state"

    aget-object v4, p3, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$500(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v4}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v8, v7, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-interface {v4, v8, v2, v5}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    goto/16 :goto_6

    :cond_3
    array-length v2, p3

    if-lez v2, :cond_6

    aget-object v2, p3, v5

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$500(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v6, v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-interface {v3, v6, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->dumpProtoMetrics(ILjava/io/FileDescriptor;)V

    goto :goto_3

    :cond_4
    goto :goto_2

    :cond_5
    goto/16 :goto_6

    :cond_6
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$500(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dumping for sensorId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", provider: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fps state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v7}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$700(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->getFingerprintState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v6, v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-interface {v3, v6, p2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->dumpInternal(ILjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :cond_7
    goto :goto_4

    :cond_8
    :goto_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public dumpSensorServiceStateProto(IZ)[B
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V

    :cond_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v2

    return-object v2
.end method

.method public enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;I)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v1, v2}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$200(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "FingerprintService"

    const-string v3, "Null provider for enroll"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-interface/range {v3 .. v10}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;I)V

    return-void
.end method

.method public generateChallenge(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching sensor for generateChallenge, sensorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, v0

    move v2, p2

    move v3, p3

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleGenerateChallenge(IILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    return-void
.end method

.method public getAuthenticatorId(II)J
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "FingerprintService"

    const-string v2, "Null provider for getAuthenticatorId"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    return-wide v1

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getAuthenticatorId(II)J

    move-result-wide v1

    return-wide v1
.end method

.method public getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    const/4 v2, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$300(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$800(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLockoutModeForUser(II)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "FingerprintService"

    const-string v2, "Null provider for getLockoutModeForUser"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getLockoutModeForUser(II)I

    move-result v1

    return v1
.end method

.method public getSensorProperties(ILjava/lang/String;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching sensor for getSensorProperties, sensorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", caller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-interface {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getSensorProperties(I)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v1

    return-object v1
.end method

.method public getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$100(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasEnrolledFingerprints(IILjava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null provider for hasEnrolledFingerprints, caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FingerprintService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getEnrolledFingerprints(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hasEnrolledFingerprintsDeprecated(ILjava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    const/4 v2, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$300(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$800(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "FingerprintService"

    const-string v2, "Null provider for invalidateAuthenticatorId"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleInvalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    return-void
.end method

.method public isClientActive()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$900(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->isAnySensorActive()Z

    move-result v0

    return v0
.end method

.method public isHardwareDetected(ILjava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null provider for isHardwareDetected, caller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-interface {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->isHardwareDetected(I)Z

    move-result v1

    return v1
.end method

.method public isHardwareDetectedDeprecated(Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    const/4 v2, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$300(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$200(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Null provider for isHardwareDetectedDeprecated, caller: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_1
    :try_start_1
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->isHardwareDetected(I)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public synthetic lambda$registerAuthenticators$1$FingerprintService$FingerprintServiceWrapper(Ljava/util/List;)V
    .locals 13

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->addHidlProviders(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->addAidlProviders()V

    const-string v0, "biometric"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$500(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    nop

    invoke-interface {v2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v6, v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget v7, v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    invoke-static {v7}, Lcom/android/server/biometrics/Utils;->propertyStrengthToAuthenticatorStrength(I)I

    move-result v7

    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v9}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$1400(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;-><init>(Landroid/hardware/fingerprint/IFingerprintService;I)V

    const/4 v9, 0x2

    :try_start_0
    invoke-interface {v0, v6, v9, v7, v8}, Landroid/hardware/biometrics/IBiometricService;->registerAuthenticator(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v9

    const-string v10, "FingerprintService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Remote exception when registering sensorId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$1000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$500(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$1200(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    nop

    goto :goto_3

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$1500(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintStateListener;)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$1300(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onPointerDown(IIIFF)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching provider for onFingerDown, sensorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->onPointerDown(IIIFF)V

    return-void
.end method

.method public onPointerUp(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching provider for onFingerUp, sensorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->onPointerUp(I)V

    return-void
.end method

.method public onUiReady(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching provider for onUiReady, sensorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->onUiReady(I)V

    return-void
.end method

.method public prepareForAuthentication(ILandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v1, v2}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    move/from16 v15, p1

    invoke-static {v1, v15}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "FingerprintService"

    const-string v3, "Null provider for prepareForAuthentication"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v16, 0x1

    new-instance v9, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v14, p6

    invoke-direct {v9, v14}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/biometrics/IBiometricSensorReceiver;)V

    const/4 v13, 0x1

    const/16 v17, 0x2

    move-object v2, v1

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p10

    move-object/from16 v10, p7

    move-wide/from16 v11, p8

    move/from16 v14, v17

    move/from16 v15, p11

    invoke-interface/range {v2 .. v15}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;JZIZ)V

    return-void
.end method

.method public registerAuthenticators(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "FingerprintService"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerFingerprintStateListener(Landroid/hardware/fingerprint/IFingerprintStateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->registerFingerprintStateListener(Landroid/hardware/fingerprint/IFingerprintStateListener;)V

    return-void
.end method

.method public remove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$200(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "FingerprintService"

    const-string v2, "Null provider for remove"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v4, p1

    move-object v5, p4

    move v6, p2

    move v7, p3

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleRemove(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IILjava/lang/String;)V

    return-void
.end method

.method public removeAll(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v5, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$2;

    invoke-direct {v5, p0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$500(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v3, v10, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    move-object v2, v1

    move-object v4, p1

    move v6, p2

    move-object v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleRemoveAll(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$900(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->removeCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V

    return-void
.end method

.method public rename(IILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$200(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "FingerprintService"

    const-string v2, "Null provider for rename"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->rename(IIILjava/lang/String;)V

    return-void
.end method

.method public resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null provider for resetLockout, caller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleResetLockout(II[B)V

    return-void
.end method

.method public revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching sensor for revokeChallenge, sensorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, v0

    move v2, p2

    move v3, p3

    move-object v4, p1

    move-object v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V

    return-void
.end method

.method public setSidefpsController(Landroid/hardware/fingerprint/ISidefpsController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$500(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->setSidefpsController(Landroid/hardware/fingerprint/ISidefpsController;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$500(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startPreparedClient(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "FingerprintService"

    const-string v2, "Null provider for startPreparedClient"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->startPreparedClient(II)V

    return-void
.end method
