.class public final Lcom/android/server/biometrics/AuthSession;
.super Ljava/lang/Object;
.source "AuthSession.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;,
        Lcom/android/server/biometrics/AuthSession$MultiSensorState;,
        Lcom/android/server/biometrics/AuthSession$SessionState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BiometricService/AuthSession"


# instance fields
.field private mAuthenticatedTimeMs:J

.field private mCancelled:Z

.field private final mClientDeathReceiver:Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

.field private final mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDebugEnabled:Z

.field private mErrorEscrow:I

.field private final mFingerprintSensorProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mMultiSensorMode:I

.field private mMultiSensorState:I

.field private final mOpPackageName:Ljava/lang/String;

.field private final mOperationId:J

.field final mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

.field final mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field private final mRandom:Ljava/util/Random;

.field private final mRequestId:J

.field private final mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

.field private mSensors:[I

.field private mStartTimeMs:J

.field private mState:I

.field private final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

.field final mToken:Landroid/os/IBinder;

.field private mTokenEscrow:[B

.field private final mUserId:I

.field private mVendorCodeEscrow:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/statusbar/IStatusBarService;Landroid/hardware/biometrics/IBiometricSysuiReceiver;Landroid/security/KeyStore;Ljava/util/Random;Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;Lcom/android/server/biometrics/PreAuthInfo;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;ZLjava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            "Landroid/hardware/biometrics/IBiometricSysuiReceiver;",
            "Landroid/security/KeyStore;",
            "Ljava/util/Random;",
            "Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;",
            "Lcom/android/server/biometrics/PreAuthInfo;",
            "Landroid/os/IBinder;",
            "JJI",
            "Landroid/hardware/biometrics/IBiometricSensorReceiver;",
            "Landroid/hardware/biometrics/IBiometricServiceReceiver;",
            "Ljava/lang/String;",
            "Landroid/hardware/biometrics/PromptInfo;",
            "Z",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/biometrics/AuthSession;->mState:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating AuthSession with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BiometricService/AuthSession"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p1

    iput-object v3, v1, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    move-object/from16 v5, p2

    iput-object v5, v1, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v6, p3

    iput-object v6, v1, Lcom/android/server/biometrics/AuthSession;->mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-object/from16 v7, p4

    iput-object v7, v1, Lcom/android/server/biometrics/AuthSession;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v8, p5

    iput-object v8, v1, Lcom/android/server/biometrics/AuthSession;->mRandom:Ljava/util/Random;

    move-object/from16 v9, p6

    iput-object v9, v1, Lcom/android/server/biometrics/AuthSession;->mClientDeathReceiver:Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

    iput-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    move-object/from16 v10, p8

    iput-object v10, v1, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    move-wide/from16 v11, p9

    iput-wide v11, v1, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    move-wide/from16 v13, p11

    iput-wide v13, v1, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    move/from16 v15, p13

    iput v15, v1, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    move-object/from16 v2, p14

    iput-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-object/from16 v2, p15

    iput-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    move-object/from16 v2, p16

    iput-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    move-object/from16 v2, p17

    iput-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    move/from16 v2, p18

    iput-boolean v2, v1, Lcom/android/server/biometrics/AuthSession;->mDebugEnabled:Z

    move-object/from16 v2, p19

    iput-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mFingerprintSensorProperties:Ljava/util/List;

    iput-boolean v0, v1, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    :try_start_0
    invoke-interface/range {p15 .. p15}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Unable to link to death"

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateUnknown()V

    return-void
.end method

.method private cancelAllSensors()V
    .locals 1

    sget-object v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    return-void
.end method

.method private cancelAllSensors(Ljava/util/function/Function;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "BiometricService/AuthSession"

    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v1, v1, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sensorId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", shouldCancel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/server/biometrics/BiometricSensor;->goToStateCancelling(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "Unable to cancel authentication"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_0

    :cond_1
    return-void
.end method

.method private containsCookie(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricSensor;->getCookie()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getAcquiredMessageForSensor(III)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    return-object v1

    :sswitch_0
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, p3}, Landroid/hardware/face/FaceManager;->getAuthHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_1
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private getEligibleModalities()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual {v0}, Lcom/android/server/biometrics/PreAuthInfo;->getEligibleModalities()I

    move-result v0

    return v0
.end method

.method private static getMultiSensorModeForNewSession(Ljava/util/Collection;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/BiometricSensor;

    iget v4, v3, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    iget v4, v3, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    return v2

    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method private hasPausableBiometric()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    iget v2, v1, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isAllowDeviceCredential()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v0

    return v0
.end method

.method private isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricSensor;->confirmationSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/BiometricSensor;->confirmationAlwaysRequired(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-boolean v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isConfirmationRequiredByAnyEligibleSensor()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    invoke-direct {p0, v1}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$cancelAllSensors$2(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$startAllPreparedFingerprintSensors$1(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .locals 2

    iget v0, p0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$startAllPreparedSensorsExceptFingerprint$0(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .locals 2

    iget v0, p0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private logOnDialogDismissed(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedTimeMs:J

    sub-long/2addr v2, v4

    const/16 v6, 0x58

    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->statsModality()I

    move-result v7

    iget v8, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->isCrypto()Z

    move-result v9

    const/4 v10, 0x2

    iget-object v4, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-boolean v11, v4, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    const/4 v12, 0x3

    iget-boolean v15, v0, Lcom/android/server/biometrics/AuthSession;->mDebugEnabled:Z

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    move-wide v13, v2

    invoke-static/range {v6 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIZIJZIF)V

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/biometrics/AuthSession;->mStartTimeMs:J

    sub-long/2addr v2, v4

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    const/16 v4, 0xd

    move v12, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    const/16 v4, 0xa

    move v12, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    move v12, v4

    :goto_0
    nop

    const/16 v6, 0x59

    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->statsModality()I

    move-result v7

    iget v8, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->isCrypto()Z

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x2

    const/4 v13, 0x0

    iget-boolean v14, v0, Lcom/android/server/biometrics/AuthSession;->mDebugEnabled:Z

    const/16 v17, -0x1

    move-wide v15, v2

    invoke-static/range {v6 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIZJI)V

    :goto_1
    return-void
.end method

.method private sensorIdToModality(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    iget v2, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne p1, v2, :cond_0

    iget v0, v1, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown sensor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/AuthSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private setSensorsToStateUnknown()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricSensor;->goToStateUnknown()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setSensorsToStateWaitingForCookie()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v1, v1, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    iget-object v3, v0, Lcom/android/server/biometrics/AuthSession;->mRandom:Ljava/util/Random;

    const v4, 0x7ffffffe

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v15, v3, 0x1

    invoke-direct {v0, v2}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z

    move-result v16

    iget-object v5, v0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-wide v6, v0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget v8, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    iget-object v9, v0, Lcom/android/server/biometrics/AuthSession;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    iget-object v10, v0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v11, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    iget-object v3, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v3}, Landroid/hardware/biometrics/PromptInfo;->isAllowBackgroundAuthentication()Z

    move-result v14

    move-object v3, v2

    move/from16 v4, v16

    move v13, v15

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/biometrics/BiometricSensor;->goToStateWaitingForCookie(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startAllPreparedFingerprintSensors()V
    .locals 1

    sget-object v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensors(Ljava/util/function/Function;)V

    return-void
.end method

.method private startAllPreparedSensors(Ljava/util/function/Function;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricSensor;->startSensor()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start prepared client, sensor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BiometricService/AuthSession"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    goto :goto_0

    :cond_1
    return-void
.end method

.method private startAllPreparedSensorsExceptFingerprint()V
    .locals 1

    sget-object v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda2;

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensors(Ljava/util/function/Function;)V

    return-void
.end method

.method private startFingerprintSensorsNow()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedFingerprintSensors()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    return-void
.end method

.method private statsModality()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v1, v1, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    iget v3, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    iget v3, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    iget v3, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    goto :goto_0

    :cond_3
    return v0
.end method


# virtual methods
.method allCookiesReceived()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual {v0}, Lcom/android/server/biometrics/PreAuthInfo;->numSensorsWaitingForCookie()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remaining cookies: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricService/AuthSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public binderDied()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder died, session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/AuthSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mClientDeathReceiver:Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

    invoke-interface {v0}, Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;->onClientDied()V

    return-void
.end method

.method getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    return-wide v0
.end method

.method getState()I
    .locals 1

    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    return v0
.end method

.method goToInitialState()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-boolean v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v0, 0x0

    new-array v4, v0, [I

    iput-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    const/4 v13, 0x0

    iput v13, p0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorMode:I

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorState:I

    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    iget-wide v8, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget-object v10, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v11, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-interface/range {v1 .. v13}, Lcom/android/internal/statusbar/IStatusBarService;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;JI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateWaitingForCookie()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No authenticators requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isCrypto()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onAcquired(III)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/AuthSession;->getAcquiredMessageForSensor(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sensorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " acquiredInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricService/AuthSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v3

    invoke-interface {v1, v3, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricHelp(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Remote exception"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method onAuthenticationRejected()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(III)V

    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->hasPausableBiometric()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BiometricService/AuthSession"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method onAuthenticationSucceeded(IZ[B)V
    .locals 4

    const-string v0, "BiometricService/AuthSession"

    if-eqz p2, :cond_0

    iput-object p3, p0, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping authToken for non-strong biometric, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricAuthenticated()V

    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequiredByAnyEligibleSensor()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v2, 0x7

    iput v2, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedTimeMs:J

    const/4 v2, 0x6

    iput v2, p0, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "RemoteException"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method onAuthenticationTimedOut(IIII)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v1

    invoke-interface {v0, v1, p3, p4}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(III)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BiometricService/AuthSession"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method onCancelAuthSession(Z)Z
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    iget v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v2, 0x0

    if-eq v1, v0, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    return v2

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->getEligibleModalities()I

    move-result v4

    const/4 v5, 0x5

    invoke-interface {v3, v4, v5, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v3}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v3, "BiometricService/AuthSession"

    const-string v4, "Remote exception"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method onClientDied()Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iget v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0

    :pswitch_0
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    const/4 v0, 0x0

    return v0

    :goto_0
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricService/AuthSession"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method onCookieReceived(I)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-boolean v0, v1, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    const-string v3, "BiometricService/AuthSession"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received cookie but already cancelled (ignoring): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/biometrics/BiometricSensor;

    invoke-virtual {v4, v2}, Lcom/android/server/biometrics/BiometricSensor;->goToStateCookieReturnedIfCookieMatches(I)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->allCookiesReceived()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/biometrics/AuthSession;->mStartTimeMs:J

    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensorsExceptFingerprint()V

    iget v0, v1, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v4, 0x5

    if-eq v0, v4, :cond_3

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequiredByAnyEligibleSensor()Z

    move-result v10

    iget-object v0, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, v1, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    const/4 v0, 0x0

    :goto_1
    iget-object v4, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v4, v4, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v4, v1, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    iget-object v5, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v5, v5, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/biometrics/BiometricSensor;

    iget v5, v5, Lcom/android/server/biometrics/BiometricSensor;->id:I

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthSession;->getMultiSensorModeForNewSession(Ljava/util/Collection;)I

    move-result v0

    iput v0, v1, Lcom/android/server/biometrics/AuthSession;->mMultiSensorMode:I

    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/biometrics/AuthSession;->mMultiSensorState:I

    iget-object v5, v1, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v6, v1, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v7, v1, Lcom/android/server/biometrics/AuthSession;->mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    iget-object v8, v1, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    iget-object v0, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual {v0}, Lcom/android/server/biometrics/PreAuthInfo;->shouldShowCredential()Z

    move-result v9

    iget v11, v1, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    iget-wide v12, v1, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget-object v14, v1, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v3

    :try_start_1
    iget-wide v2, v1, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    iget v0, v1, Lcom/android/server/biometrics/AuthSession;->mMultiSensorMode:I

    move-wide v15, v2

    move/from16 v17, v0

    invoke-interface/range {v5 .. v17}, Lcom/android/internal/statusbar/IStatusBarService;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;JI)V

    const/4 v0, 0x2

    iput v0, v1, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v3

    :goto_2
    const-string v2, "Remote exception"

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    goto :goto_4

    :cond_3
    const/4 v0, 0x3

    iput v0, v1, Lcom/android/server/biometrics/AuthSession;->mState:I

    goto :goto_4

    :cond_4
    move-object v4, v3

    const-string/jumbo v0, "onCookieReceived: still waiting"

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method onDeviceCredentialPressed()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    return-void
.end method

.method onDialogAnimatedIn()V
    .locals 3

    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDialogAnimatedIn, unexpected state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BiometricService/AuthSession"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iput v1, p0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorState:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->startFingerprintSensorsNow()V

    :goto_0
    return-void
.end method

.method onDialogDismissed(I[B)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthSession;->logOnDialogDismissed(I)V

    const-string v0, "BiometricService/AuthSession"

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, p2}, Landroid/security/KeyStore;->addAuthToken([B)I

    goto :goto_0

    :cond_0
    const-string v1, "credentialAttestation is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->getEligibleModalities()I

    move-result v2

    iget v3, p0, Lcom/android/server/biometrics/AuthSession;->mErrorEscrow:I

    iget v4, p0, Lcom/android/server/biometrics/AuthSession;->mVendorCodeEscrow:I

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    goto :goto_3

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->getEligibleModalities()I

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    goto :goto_3

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v1, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onDialogDismissed(I)V

    goto :goto_3

    :goto_0
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, v1}, Landroid/security/KeyStore;->addAuthToken([B)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAuthToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "mTokenEscrow is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getAuthenticationTypeForResult(I)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationSucceeded(I)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v1

    goto :goto_5

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    nop

    :goto_4
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    goto :goto_6

    :goto_5
    :try_start_1
    const-string v2, "Remote exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_4

    :goto_6
    return-void

    :goto_7
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onErrorReceived(IIII)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onErrorReceived sensor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " error: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "BiometricService/AuthSession"

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/AuthSession;->containsCookie(I)Z

    move-result v4

    const/4 v7, 0x0

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown/expired cookie: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    iget-object v4, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v4, v4, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/biometrics/BiometricSensor;

    invoke-virtual {v8}, Lcom/android/server/biometrics/BiometricSensor;->getSensorState()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    invoke-virtual {v8, v1, v2}, Lcom/android/server/biometrics/BiometricSensor;->goToStoppedStateIfCookieMatches(II)V

    :cond_1
    goto :goto_0

    :cond_2
    iput v2, v0, Lcom/android/server/biometrics/AuthSession;->mErrorEscrow:I

    iput v3, v0, Lcom/android/server/biometrics/AuthSession;->mVendorCodeEscrow:I

    invoke-direct/range {p0 .. p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v4

    iget v8, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/16 v9, 0x9

    const/4 v10, 0x1

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unhandled error state, mState: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_1
    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v6}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog()V

    return v10

    :pswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Biometric canceled, ignoring from state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_3
    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v6, v4, v2, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v6}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog()V

    return v10

    :pswitch_4
    const/4 v8, 0x7

    if-eq v2, v8, :cond_4

    if-ne v2, v9, :cond_3

    goto :goto_1

    :cond_3
    move v8, v7

    goto :goto_2

    :cond_4
    :goto_1
    move v8, v10

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->isAllowDeviceCredential()Z

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v8, :cond_5

    iput v9, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v6, v4, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(III)V

    goto/16 :goto_3

    :cond_5
    const/4 v9, 0x5

    if-ne v2, v9, :cond_6

    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v6}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog()V

    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v6, v4, v2, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    return v10

    :cond_6
    const/16 v9, 0x8

    iput v9, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    iget v9, v0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorMode:I

    if-ne v9, v10, :cond_7

    iget v9, v0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorState:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_7

    const-string/jumbo v9, "onErrorReceived: waiting for modality switch callback"

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v10, v0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorState:I

    :cond_7
    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v6, v4, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(III)V

    goto :goto_3

    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->isAllowDeviceCredential()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v6}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/biometrics/Utils;->removeBiometricBits(I)I

    move-result v6

    iget-object v8, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v8, v6}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    iput v9, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v8, 0x0

    iput v8, v0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorMode:I

    iput v7, v0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorState:I

    new-array v13, v7, [I

    iput-object v13, v0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    iget-object v10, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v11, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v12, v0, Lcom/android/server/biometrics/AuthSession;->mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    iget v9, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    iget-wide v7, v0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget-object v15, v0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    move-object/from16 v18, v15

    iget-wide v14, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    move-wide/from16 v20, v14

    const/4 v14, 0x1

    move-object/from16 v19, v18

    const/4 v15, 0x0

    move/from16 v16, v9

    move-wide/from16 v17, v7

    const/4 v7, 0x0

    move/from16 v22, v7

    invoke-interface/range {v10 .. v22}, Lcom/android/internal/statusbar/IStatusBarService;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;JI)V

    goto :goto_3

    :cond_8
    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v6, v4, v2, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    return v10

    :goto_3
    const/4 v6, 0x0

    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method onStartFingerprint()V
    .locals 4

    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorMode:I

    const-string v1, "BiometricService/AuthSession"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartFingerprint, unexpected mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartFingerprint, started from unexpected state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput v3, p0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorState:I

    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->startFingerprintSensorsNow()V

    return-void
.end method

.method onSystemEvent(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isReceiveSystemEvents()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onSystemEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BiometricService/AuthSession"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method onTryAgainPressed()V
    .locals 4

    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const-string v1, "BiometricService/AuthSession"

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTryAgainPressed, state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateWaitingForCookie()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cancelled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCrypto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->isCrypto()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", PreAuthInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
