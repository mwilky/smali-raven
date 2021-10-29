.class public Lcom/android/server/biometrics/sensors/face/hidl/TestHal;
.super Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;
.source "TestHal.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "face.hidl.TestHal"


# instance fields
.field private mCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

.field private final mContext:Landroid/content/Context;

.field private final mSensorId:I

.field private mUserId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mSensorId:I

    return-void
.end method


# virtual methods
.method public authenticate(J)I
    .locals 2

    const-string v0, "face.hidl.TestHal"

    const-string v1, "authenticate"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public cancel()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onError(JIII)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const-string v0, "face.hidl.TestHal"

    const-string v1, "enroll"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public enumerate()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "face.hidl.TestHal"

    const-string v1, "enumerate"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2, v3, v4, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onEnumerate(JLjava/util/ArrayList;I)V

    :cond_0
    return v1
.end method

.method public generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 3

    const-string v0, "face.hidl.TestHal"

    const-string v1, "generateChallenge"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    return-object v0
.end method

.method public getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 3

    new-instance v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    return-object v0
.end method

.method public getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    .locals 2

    new-instance v0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->status:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    return-object v0
.end method

.method public remove(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "face.hidl.TestHal"

    const-string/jumbo v1, "remove"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x0

    if-nez p1, :cond_1

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mUserId:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/face/Face;

    invoke-virtual {v5}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    iget v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mUserId:I

    invoke-interface {v4, v1, v2, v3, v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onRemoved(JLjava/util/ArrayList;I)V

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mUserId:I

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onRemoved(JLjava/util/ArrayList;I)V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public resetLockout(Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)I"
        }
    .end annotation

    const-string v0, "face.hidl.TestHal"

    const-string/jumbo v1, "resetLockout"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public revokeChallenge()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setActiveUser(ILjava/lang/String;)I
    .locals 1

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mUserId:I

    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 2

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    new-instance v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    new-instance v1, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {v1}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    return-object v1
.end method

.method public setFeature(IZLjava/util/ArrayList;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public userActivity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
