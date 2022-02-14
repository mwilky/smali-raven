.class Lcom/android/server/biometrics/PreAuthInfo;
.super Ljava/lang/Object;
.source "PreAuthInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/PreAuthInfo$AuthenticatorStatus;
    }
.end annotation


# static fields
.field static final AUTHENTICATOR_OK:I = 0x1

.field static final BIOMETRIC_DISABLED_BY_DEVICE_POLICY:I = 0x3

.field static final BIOMETRIC_HARDWARE_NOT_DETECTED:I = 0x6

.field static final BIOMETRIC_INSUFFICIENT_STRENGTH:I = 0x4

.field static final BIOMETRIC_INSUFFICIENT_STRENGTH_AFTER_DOWNGRADE:I = 0x5

.field static final BIOMETRIC_LOCKOUT_PERMANENT:I = 0xb

.field static final BIOMETRIC_LOCKOUT_TIMED:I = 0xa

.field static final BIOMETRIC_NOT_ENABLED_FOR_APPS:I = 0x8

.field static final BIOMETRIC_NOT_ENROLLED:I = 0x7

.field static final BIOMETRIC_NO_HARDWARE:I = 0x2

.field static final BIOMETRIC_SENSOR_PRIVACY_ENABLED:I = 0xc

.field static final CREDENTIAL_NOT_ENROLLED:I = 0x9

.field private static final TAG:Ljava/lang/String; = "BiometricService/PreAuthInfo"


# instance fields
.field final confirmationRequested:Z

.field final context:Landroid/content/Context;

.field final credentialAvailable:Z

.field final credentialRequested:Z

.field final eligibleSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            ">;"
        }
    .end annotation
.end field

.field final ignoreEnrollmentState:Z

.field final ineligibleSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBiometricRequested:Z

.field private final mBiometricStrengthRequested:I

.field final userId:I


# direct methods
.method private constructor <init>(ZIZLjava/util/List;Ljava/util/List;ZZZILandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZ",
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            "Ljava/lang/Integer;",
            ">;>;ZZZI",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    iput p2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricStrengthRequested:I

    iput-boolean p3, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    iput-object p4, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    iput-object p5, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    iput-boolean p6, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    iput-boolean p7, p0, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    iput-boolean p8, p0, Lcom/android/server/biometrics/PreAuthInfo;->ignoreEnrollmentState:Z

    iput p9, p0, Lcom/android/server/biometrics/PreAuthInfo;->userId:I

    iput-object p10, p0, Lcom/android/server/biometrics/PreAuthInfo;->context:Landroid/content/Context;

    return-void
.end method

.method private calculateErrorByPriority()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method static create(Landroid/app/trust/ITrustManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Ljava/util/List;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;ZLandroid/content/Context;)Lcom/android/server/biometrics/PreAuthInfo;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/trust/ITrustManager;",
            "Landroid/app/admin/DevicePolicyManager;",
            "Lcom/android/server/biometrics/BiometricService$SettingObserver;",
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            ">;I",
            "Landroid/hardware/biometrics/PromptInfo;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/content/Context;",
            ")",
            "Lcom/android/server/biometrics/PreAuthInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p5 .. p5}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    move-result v11

    invoke-static/range {p5 .. p5}, Lcom/android/server/biometrics/Utils;->isBiometricRequested(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v12

    invoke-static/range {p5 .. p5}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(Landroid/hardware/biometrics/PromptInfo;)I

    move-result v13

    invoke-static/range {p5 .. p5}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v14

    move-object/from16 v15, p0

    move/from16 v10, p4

    invoke-interface {v15, v10}, Landroid/app/trust/ITrustManager;->isDeviceSecure(I)Z

    move-result v16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    if-eqz v12, :cond_3

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/biometrics/BiometricSensor;

    nop

    invoke-virtual/range {p5 .. p5}, Landroid/hardware/biometrics/PromptInfo;->getAllowedSensorIds()Ljava/util/List;

    move-result-object v18

    invoke-virtual/range {p5 .. p5}, Landroid/hardware/biometrics/PromptInfo;->isIgnoreEnrollmentState()Z

    move-result v19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v7

    move/from16 v3, p4

    move-object/from16 v4, p6

    move/from16 v5, p7

    move v6, v13

    move-object v10, v7

    move-object/from16 v7, v18

    move-object v15, v8

    move/from16 v8, v19

    move/from16 v18, v11

    move-object v11, v9

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/android/server/biometrics/PreAuthInfo;->getStatusForBiometricAuthenticator(Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Lcom/android/server/biometrics/BiometricSensor;ILjava/lang/String;ZILjava/util/List;ZLandroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p6

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Sensor ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Modality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricService/PreAuthInfo"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v10, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    :goto_1
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move/from16 v10, p4

    move-object v9, v11

    move-object v8, v15

    move/from16 v11, v18

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_2
    move-object v15, v8

    move/from16 v18, v11

    move-object v11, v9

    move-object/from16 v9, p6

    goto :goto_3

    :cond_3
    move-object v15, v8

    move/from16 v18, v11

    move-object v11, v9

    move-object/from16 v9, p6

    :goto_3
    new-instance v17, Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual/range {p5 .. p5}, Landroid/hardware/biometrics/PromptInfo;->isIgnoreEnrollmentState()Z

    move-result v8

    move-object/from16 v0, v17

    move v1, v12

    move v2, v13

    move v3, v14

    move-object v4, v11

    move-object v5, v15

    move/from16 v6, v16

    move/from16 v7, v18

    move/from16 v9, p4

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/PreAuthInfo;-><init>(ZIZLjava/util/List;Ljava/util/List;ZZZILandroid/content/Context;)V

    return-object v17
.end method

.method private getInternalStatus()Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->context:Landroid/content/Context;

    const-class v2, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorPrivacyManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/server/biometrics/PreAuthInfo;->userId:I

    invoke-virtual {v1, v3, v4}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result v2

    :cond_0
    iget-boolean v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    const/16 v4, 0x8

    const-string v5, "BiometricService/PreAuthInfo"

    if-eqz v3, :cond_7

    iget-boolean v6, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v6, :cond_7

    iget-boolean v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/server/biometrics/PreAuthInfo;->calculateErrorByPriority()Landroid/util/Pair;

    move-result-object v3

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/biometrics/BiometricSensor;

    iget v4, v4, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v0, v4

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto/16 :goto_4

    :cond_2
    or-int/lit8 v0, v0, 0x1

    const/16 v3, 0x9

    goto/16 :goto_4

    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/biometrics/BiometricSensor;

    iget v7, v6, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v0, v7

    goto :goto_1

    :cond_4
    iget-boolean v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz v3, :cond_5

    or-int/lit8 v0, v0, 0x1

    const/4 v3, 0x1

    goto/16 :goto_4

    :cond_5
    if-ne v0, v4, :cond_6

    if-eqz v2, :cond_6

    const/16 v3, 0xc

    goto :goto_4

    :cond_6
    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/biometrics/BiometricSensor;

    iget v7, v6, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v0, v7

    goto :goto_2

    :cond_8
    if-ne v0, v4, :cond_9

    if-eqz v2, :cond_9

    const/16 v3, 0xc

    goto :goto_4

    :cond_9
    const/4 v3, 0x1

    goto :goto_4

    :cond_a
    iget-object v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-direct {p0}, Lcom/android/server/biometrics/PreAuthInfo;->calculateErrorByPriority()Landroid/util/Pair;

    move-result-object v3

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/biometrics/BiometricSensor;

    iget v4, v4, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v0, v4

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_4

    :cond_b
    or-int/lit8 v0, v0, 0x0

    const/4 v3, 0x2

    goto :goto_4

    :cond_c
    iget-boolean v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v3, :cond_e

    or-int/lit8 v0, v0, 0x1

    iget-boolean v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    goto :goto_3

    :cond_d
    const/16 v3, 0x9

    :goto_3
    goto :goto_4

    :cond_e
    const-string v3, "No authenticators requested"

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCanAuthenticateInternal Modality: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " AuthenticatorStatus: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method private static getStatusForBiometricAuthenticator(Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Lcom/android/server/biometrics/BiometricSensor;ILjava/lang/String;ZILjava/util/List;ZLandroid/content/Context;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/admin/DevicePolicyManager;",
            "Lcom/android/server/biometrics/BiometricService$SettingObserver;",
            "Lcom/android/server/biometrics/BiometricSensor;",
            "I",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    move-object v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v5, 0x2

    if-nez v0, :cond_0

    iget v0, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v6, p7

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v5

    :cond_0
    move-object/from16 v6, p7

    :cond_1
    iget v0, v1, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    invoke-static {v0, v4}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v7

    nop

    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result v0

    invoke-static {v0, v4}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v8

    if-eqz v7, :cond_2

    if-nez v8, :cond_2

    const/4 v0, 0x5

    return v0

    :cond_2
    if-nez v7, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    const/4 v9, 0x6

    :try_start_0
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v0, v3}, Landroid/hardware/biometrics/IBiometricAuthenticator;->isHardwareDetected(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    return v9

    :cond_4
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v0, v2, v3}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p8, :cond_5

    const/4 v0, 0x7

    return v0

    :cond_5
    const-class v0, Landroid/hardware/SensorPrivacyManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v10, p9

    :try_start_1
    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorPrivacyManager;

    const/16 v11, 0x8

    if-eqz v0, :cond_6

    iget v12, v1, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    if-ne v12, v11, :cond_6

    nop

    invoke-virtual {v0, v5, v2}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result v12

    if-eqz v12, :cond_6

    const/16 v5, 0xc

    return v5

    :cond_6
    iget-object v12, v1, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v12, v2}, Landroid/hardware/biometrics/IBiometricAuthenticator;->getLockoutModeForUser(I)I

    move-result v9
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v12, 0x1

    if-ne v9, v12, :cond_7

    const/16 v5, 0xa

    return v5

    :cond_7
    if-ne v9, v5, :cond_8

    const/16 v5, 0xb

    return v5

    :cond_8
    nop

    iget v0, v1, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    move-object v5, p1

    invoke-static {p1, v0, v2}, Lcom/android/server/biometrics/PreAuthInfo;->isEnabledForApp(Lcom/android/server/biometrics/BiometricService$SettingObserver;II)Z

    move-result v0

    if-nez v0, :cond_9

    return v11

    :cond_9
    if-eqz p5, :cond_a

    iget v0, v1, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    move-object v11, p0

    invoke-static {p0, v0, v2}, Lcom/android/server/biometrics/PreAuthInfo;->isBiometricDisabledByDevicePolicy(Landroid/app/admin/DevicePolicyManager;II)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x3

    return v0

    :cond_a
    move-object v11, p0

    :cond_b
    return v12

    :catch_0
    move-exception v0

    move-object v11, p0

    move-object v5, p1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v11, p0

    move-object v5, p1

    move-object/from16 v10, p9

    :goto_0
    return v9
.end method

.method private static isBiometricDisabledByDevicePolicy(Landroid/app/admin/DevicePolicyManager;II)Z
    .locals 5

    invoke-static {p1}, Lcom/android/server/biometrics/PreAuthInfo;->mapModalityToDevicePolicyType(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBiometricDisabledByDevicePolicy("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BiometricService/PreAuthInfo"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modality unknown to devicePolicyManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isEnabledForApp(Lcom/android/server/biometrics/BiometricService$SettingObserver;II)Z
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getEnabledForApps(I)Z

    move-result v0

    return v0
.end method

.method private static mapModalityToDevicePolicyType(I)I
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error modality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/PreAuthInfo"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/16 v0, 0x80

    return v0

    :sswitch_1
    const/16 v0, 0x100

    return v0

    :sswitch_2
    const/16 v0, 0x20

    return v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method getCanAuthenticateResult()I
    .locals 1

    nop

    invoke-direct {p0}, Lcom/android/server/biometrics/PreAuthInfo;->getInternalStatus()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->authenticatorStatusToBiometricConstant(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->biometricConstantsToBiometricManager(I)I

    move-result v0

    return v0
.end method

.method getEligibleModalities()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    iget v3, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v0, v3

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method getPreAuthenticateStatus()Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/biometrics/PreAuthInfo;->getInternalStatus()Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->authenticatorStatusToBiometricConstant(I)I

    move-result v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const/4 v2, 0x0

    goto :goto_0

    :pswitch_1
    nop

    :goto_0
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method numSensorsWaitingForCookie()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricSensor;->getSensorState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sensor ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Waiting for cookie: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricSensor;->getCookie()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BiometricService/PreAuthInfo"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    return v0
.end method

.method shouldShowCredential()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BiometricRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", StrengthRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricStrengthRequested:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CredentialRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", Eligible:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    iget v4, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Ineligible:{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", CredentialAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
