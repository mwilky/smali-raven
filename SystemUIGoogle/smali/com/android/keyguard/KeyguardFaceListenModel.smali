.class public final Lcom/android/keyguard/KeyguardFaceListenModel;
.super Lcom/android/keyguard/KeyguardListenModel;
.source "KeyguardListenModel.kt"


# instance fields
.field private final authInterruptActive:Z

.field private final becauseCannotSkipBouncer:Z

.field private final biometricSettingEnabledForUser:Z

.field private final bouncer:Z

.field private final faceAuthenticated:Z

.field private final faceDisabled:Z

.field private final keyguardAwake:Z

.field private final keyguardGoingAway:Z

.field private final listening:Z

.field private final listeningForFaceAssistant:Z

.field private final lockIconPressed:Z

.field private final modality:I

.field private final occludingAppRequestingFaceAuth:Z

.field private final primaryUser:Z

.field private final scanningAllowedByStrongAuth:Z

.field private final secureCameraLaunched:Z

.field private final switchingUser:Z

.field private final timeMillis:J

.field private final userId:I


# direct methods
.method public constructor <init>(JIZZZZZZZZZZZZZZZZ)V
    .locals 3

    move-object v0, p0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardListenModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-wide v1, p1

    iput-wide v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->timeMillis:J

    move v1, p3

    iput v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->userId:I

    move v1, p4

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->listening:Z

    move v1, p5

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->authInterruptActive:Z

    move v1, p6

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->becauseCannotSkipBouncer:Z

    move v1, p7

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->biometricSettingEnabledForUser:Z

    move v1, p8

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->bouncer:Z

    move v1, p9

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAuthenticated:Z

    move v1, p10

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceDisabled:Z

    move v1, p11

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardAwake:Z

    move v1, p12

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardGoingAway:Z

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->listeningForFaceAssistant:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->lockIconPressed:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->occludingAppRequestingFaceAuth:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->primaryUser:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->scanningAllowedByStrongAuth:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->secureCameraLaunched:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->switchingUser:Z

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->modality:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/keyguard/KeyguardFaceListenModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/keyguard/KeyguardFaceListenModel;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFaceListenModel;->getTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardFaceListenModel;->getTimeMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFaceListenModel;->getUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardFaceListenModel;->getUserId()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFaceListenModel;->getListening()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardFaceListenModel;->getListening()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->authInterruptActive:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->authInterruptActive:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->becauseCannotSkipBouncer:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->becauseCannotSkipBouncer:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->biometricSettingEnabledForUser:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->biometricSettingEnabledForUser:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->bouncer:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->bouncer:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAuthenticated:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAuthenticated:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceDisabled:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->faceDisabled:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardAwake:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardAwake:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardGoingAway:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardGoingAway:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->listeningForFaceAssistant:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->listeningForFaceAssistant:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->lockIconPressed:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->lockIconPressed:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->occludingAppRequestingFaceAuth:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->occludingAppRequestingFaceAuth:Z

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->primaryUser:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->primaryUser:Z

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->scanningAllowedByStrongAuth:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->scanningAllowedByStrongAuth:Z

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->secureCameraLaunched:Z

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->secureCameraLaunched:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->switchingUser:Z

    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->switchingUser:Z

    if-eq p0, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public getListening()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->listening:Z

    return p0
.end method

.method public getTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->timeMillis:J

    return-wide v0
.end method

.method public getUserId()I
    .locals 0

    iget p0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->userId:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFaceListenModel;->getTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFaceListenModel;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFaceListenModel;->getListening()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->authInterruptActive:Z

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->becauseCannotSkipBouncer:Z

    if-eqz v1, :cond_2

    move v1, v2

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->biometricSettingEnabledForUser:Z

    if-eqz v1, :cond_3

    move v1, v2

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->bouncer:Z

    if-eqz v1, :cond_4

    move v1, v2

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAuthenticated:Z

    if-eqz v1, :cond_5

    move v1, v2

    :cond_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceDisabled:Z

    if-eqz v1, :cond_6

    move v1, v2

    :cond_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardAwake:Z

    if-eqz v1, :cond_7

    move v1, v2

    :cond_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardGoingAway:Z

    if-eqz v1, :cond_8

    move v1, v2

    :cond_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->listeningForFaceAssistant:Z

    if-eqz v1, :cond_9

    move v1, v2

    :cond_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->lockIconPressed:Z

    if-eqz v1, :cond_a

    move v1, v2

    :cond_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->occludingAppRequestingFaceAuth:Z

    if-eqz v1, :cond_b

    move v1, v2

    :cond_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->primaryUser:Z

    if-eqz v1, :cond_c

    move v1, v2

    :cond_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->scanningAllowedByStrongAuth:Z

    if-eqz v1, :cond_d

    move v1, v2

    :cond_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->secureCameraLaunched:Z

    if-eqz v1, :cond_e

    move v1, v2

    :cond_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->switchingUser:Z

    if-eqz p0, :cond_f

    goto :goto_0

    :cond_f
    move v2, p0

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyguardFaceListenModel(timeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFaceListenModel;->getTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFaceListenModel;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", listening="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFaceListenModel;->getListening()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", authInterruptActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->authInterruptActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", becauseCannotSkipBouncer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->becauseCannotSkipBouncer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", biometricSettingEnabledForUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->biometricSettingEnabledForUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bouncer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->bouncer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", faceAuthenticated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceAuthenticated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", faceDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->faceDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keyguardAwake="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardAwake:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keyguardGoingAway="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->keyguardGoingAway:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", listeningForFaceAssistant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->listeningForFaceAssistant:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lockIconPressed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->lockIconPressed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", occludingAppRequestingFaceAuth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->occludingAppRequestingFaceAuth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", primaryUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->primaryUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", scanningAllowedByStrongAuth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->scanningAllowedByStrongAuth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", secureCameraLaunched="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->secureCameraLaunched:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", switchingUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->switchingUser:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
