.class public Lcom/android/server/biometrics/sensors/face/FaceUtils;
.super Ljava/lang/Object;
.source "FaceUtils.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BiometricUtils;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/biometrics/sensors/BiometricUtils<",
        "Landroid/hardware/face/Face;",
        ">;"
    }
.end annotation


# static fields
.field private static final LEGACY_FACE_FILE:Ljava/lang/String; = "settings_face.xml"

.field private static final sInstanceLock:Ljava/lang/Object;

.field private static sInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/sensors/face/FaceUtils;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFileName:Ljava/lang/String;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/sensors/face/FaceUserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mUserStates:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mFileName:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;
    .locals 3

    sget-object v0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstances:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstances:Landroid/util/SparseArray;

    :cond_0
    sget-object v1, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "settings_face_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    :cond_1
    sget-object v1, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstances:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/FaceUtils;

    invoke-direct {v2, p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    sget-object v1, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/face/FaceUtils;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;
    .locals 1

    const-string/jumbo v0, "settings_face.xml"

    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    return-object v0
.end method

.method private getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/FaceUserState;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/biometrics/sensors/face/FaceUserState;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mFileName:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/biometrics/sensors/face/FaceUserState;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public bridge synthetic addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .locals 0

    check-cast p3, Landroid/hardware/face/Face;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/face/Face;)V

    return-void
.end method

.method public addBiometricForUser(Landroid/content/Context;ILandroid/hardware/face/Face;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/biometrics/sensors/face/FaceUserState;->addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    return-void
.end method

.method public getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceUserState;->getBiometrics()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceUserState;->getUniqueName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInvalidationInProgress(Landroid/content/Context;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceUserState;->isInvalidationInProgress()Z

    move-result v0

    return v0
.end method

.method public removeBiometricForUser(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/biometrics/sensors/face/FaceUserState;->removeBiometric(I)V

    return-void
.end method

.method public renameBiometricForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V
    .locals 1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/server/biometrics/sensors/face/FaceUserState;->renameBiometric(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public setInvalidationInProgress(Landroid/content/Context;IZ)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/biometrics/sensors/face/FaceUserState;->setInvalidationInProgress(Z)V

    return-void
.end method
