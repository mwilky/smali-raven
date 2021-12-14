.class public Lcom/android/server/biometrics/AuthService;
.super Lcom/android/server/SystemService;
.source "AuthService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/AuthService$AuthServiceImpl;,
        Lcom/android/server/biometrics/AuthService$Injector;
    }
.end annotation


# static fields
.field private static final DEFAULT_HIDL_DISABLED:I = 0x0

.field private static final SETTING_HIDL_DISABLED:Ljava/lang/String; = "com.android.server.biometrics.AuthService.hidlDisabled"

.field private static final TAG:Ljava/lang/String; = "AuthService"


# instance fields
.field private mBiometricService:Landroid/hardware/biometrics/IBiometricService;

.field final mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

.field private final mInjector:Lcom/android/server/biometrics/AuthService$Injector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/biometrics/AuthService$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/AuthService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/AuthService;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/AuthService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/AuthService$Injector;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    new-instance v0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;-><init>(Lcom/android/server/biometrics/AuthService;Lcom/android/server/biometrics/AuthService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/AuthService;->mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/AuthService;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/AuthService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/AuthService;)Lcom/android/server/biometrics/AuthService$Injector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/AuthService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/biometrics/AuthService;->checkPermission()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/AuthService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/biometrics/AuthService;->checkInternalPermission()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/AuthService;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/AuthService;->checkAppOps(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    return-object v0
.end method

.method static synthetic access$600(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->getCredentialBackupModality(I)I

    move-result v0

    return v0
.end method

.method private checkAppOps(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/AuthService$Injector;->getAppOps(Landroid/content/Context;)Landroid/app/AppOpsManager;

    move-result-object v2

    const/16 v3, 0x4e

    const/4 v6, 0x0

    move v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkInternalPermission()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    const-string v2, "Must have USE_BIOMETRIC_INTERNAL permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkPermission()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC"

    const-string v2, "Must have USE_BIOMETRIC permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static getCredentialBackupModality(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    and-int/lit8 v0, p0, -0x2

    :goto_0
    return v0
.end method

.method private getHidlFaceSensorProps(II)Landroid/hardware/face/FaceSensorPropertiesInternal;
    .locals 14

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x1

    new-instance v13, Landroid/hardware/face/FaceSensorPropertiesInternal;

    invoke-static/range {p2 .. p2}, Lcom/android/server/biometrics/Utils;->authenticatorStrengthToPropertyStrength(I)I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object v2, v13

    move v3, p1

    move v5, v1

    move v9, v0

    invoke-direct/range {v2 .. v10}, Landroid/hardware/face/FaceSensorPropertiesInternal;-><init>(IIILjava/util/List;IZZZ)V

    return-object v13
.end method

.method private getHidlFingerprintSensorProps(II)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11100fa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v1, :cond_0

    const/4 v4, 0x3

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0064

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_2

    array-length v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    new-instance v15, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-static/range {p2 .. p2}, Lcom/android/server/biometrics/Utils;->authenticatorStrengthToPropertyStrength(I)I

    move-result v7

    const/4 v11, 0x0

    const/4 v5, 0x0

    aget v12, v0, v5

    aget v13, v0, v2

    const/4 v2, 0x2

    aget v14, v0, v2

    move-object v5, v15

    move/from16 v6, p1

    move/from16 v8, v18

    move v10, v4

    invoke-direct/range {v5 .. v14}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;-><init>(IIILjava/util/List;IZIII)V

    return-object v15

    :cond_2
    new-instance v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-static/range {p2 .. p2}, Lcom/android/server/biometrics/Utils;->authenticatorStrengthToPropertyStrength(I)I

    move-result v12

    const/16 v16, 0x0

    move-object v10, v2

    move/from16 v11, p1

    move/from16 v13, v18

    move-object v14, v9

    move v15, v4

    invoke-direct/range {v10 .. v16}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;-><init>(IIILjava/util/List;IZ)V

    return-object v2
.end method

.method private getHidlIrisSensorProps(II)Landroid/hardware/biometrics/SensorPropertiesInternal;
    .locals 11

    const/4 v0, 0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Landroid/hardware/biometrics/SensorPropertiesInternal;

    invoke-static {p2}, Lcom/android/server/biometrics/Utils;->authenticatorStrengthToPropertyStrength(I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v10

    move v2, p1

    invoke-direct/range {v1 .. v7}, Landroid/hardware/biometrics/SensorPropertiesInternal;-><init>(IIILjava/util/List;ZZ)V

    return-object v10
.end method

.method private registerAuthenticators([Lcom/android/server/biometrics/SensorConfig;)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "AuthService"

    if-eqz p1, :cond_0

    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, p1, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Registering HIDL ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/biometrics/SensorConfig;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Modality: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/biometrics/SensorConfig;->modality:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Strength: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/biometrics/SensorConfig;->strength:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v6, Lcom/android/server/biometrics/SensorConfig;->modality:I

    sparse-switch v7, :sswitch_data_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown modality: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/biometrics/SensorConfig;->modality:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_0
    iget v7, v6, Lcom/android/server/biometrics/SensorConfig;->id:I

    iget v8, v6, Lcom/android/server/biometrics/SensorConfig;->strength:I

    invoke-direct {p0, v7, v8}, Lcom/android/server/biometrics/AuthService;->getHidlFaceSensorProps(II)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_1
    iget v7, v6, Lcom/android/server/biometrics/SensorConfig;->id:I

    iget v8, v6, Lcom/android/server/biometrics/SensorConfig;->strength:I

    invoke-direct {p0, v7, v8}, Lcom/android/server/biometrics/AuthService;->getHidlIrisSensorProps(II)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_2
    iget v7, v6, Lcom/android/server/biometrics/SensorConfig;->id:I

    iget v8, v6, Lcom/android/server/biometrics/SensorConfig;->strength:I

    invoke-direct {p0, v7, v8}, Lcom/android/server/biometrics/AuthService;->getHidlFingerprintSensorProps(II)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v4}, Lcom/android/server/biometrics/AuthService$Injector;->getFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-interface {v4, v0}, Landroid/hardware/fingerprint/IFingerprintService;->registerAuthenticators(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v5

    const-string v6, "RemoteException when registering fingerprint authenticators"

    invoke-static {v3, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    const-string v5, "HIDL fingerprint configuration exists, but FingerprintService is null."

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    iget-object v5, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v5}, Lcom/android/server/biometrics/AuthService$Injector;->getFaceService()Landroid/hardware/face/IFaceService;

    move-result-object v5

    if-eqz v5, :cond_3

    :try_start_1
    invoke-interface {v5, v1}, Landroid/hardware/face/IFaceService;->registerAuthenticators(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    goto :goto_5

    :catch_1
    move-exception v6

    const-string v7, "RemoteException when registering face authenticators"

    invoke-static {v3, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    const-string v6, "HIDL face configuration exists, but FaceService is null."

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_5
    iget-object v6, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v6}, Lcom/android/server/biometrics/AuthService$Injector;->getIrisService()Landroid/hardware/iris/IIrisService;

    move-result-object v6

    if-eqz v6, :cond_5

    :try_start_2
    invoke-interface {v6, v2}, Landroid/hardware/iris/IIrisService;->registerAuthenticators(Ljava/util/List;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_6
    goto :goto_7

    :catch_2
    move-exception v7

    const-string v8, "RemoteException when registering iris authenticators"

    invoke-static {v3, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    const-string v7, "HIDL iris configuration exists, but IrisService is null."

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public onStart()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthService$Injector;->getBiometricService()Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/AuthService$Injector;->isHidlDisabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/AuthService$Injector;->getConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lcom/android/server/biometrics/SensorConfig;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/android/server/biometrics/SensorConfig;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Lcom/android/server/biometrics/SensorConfig;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/biometrics/AuthService;->registerAuthenticators([Lcom/android/server/biometrics/SensorConfig;)V

    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    iget-object v2, p0, Lcom/android/server/biometrics/AuthService;->mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

    invoke-virtual {v0, p0, v2}, Lcom/android/server/biometrics/AuthService$Injector;->publishBinderService(Lcom/android/server/biometrics/AuthService;Landroid/hardware/biometrics/IAuthService$Stub;)V

    return-void
.end method
