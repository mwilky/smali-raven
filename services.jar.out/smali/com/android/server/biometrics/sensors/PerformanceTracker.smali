.class public Lcom/android/server/biometrics/sensors/PerformanceTracker;
.super Ljava/lang/Object;
.source "PerformanceTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformanceTracker"

.field private static sTrackers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/sensors/PerformanceTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAllUsersInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;",
            ">;"
        }
    .end annotation
.end field

.field private mHALDeathCount:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    return-void
.end method

.method private createUserEntryIfNecessary(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;-><init>(Lcom/android/server/biometrics/sensors/PerformanceTracker$1;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;
    .locals 2

    sget-object v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->sTrackers:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->sTrackers:Landroid/util/SparseArray;

    :cond_0
    sget-object v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->sTrackers:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->sTrackers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/biometrics/sensors/PerformanceTracker;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;-><init>()V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    sget-object v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->sTrackers:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    return-void
.end method

.method public getAcceptCryptoForUser(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcceptCrypto:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAcceptForUser(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAccept:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAcquireCryptoForUser(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquireCrypto:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAcquireForUser(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquire:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHALDeathCount()I
    .locals 1

    iget v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    return v0
.end method

.method public getPermanentLockoutForUser(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mPermanentLockout:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRejectCryptoForUser(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mRejectCrypto:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRejectForUser(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mReject:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTimedLockoutForUser(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mTimedLockout:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method incrementAcquireForUser(IZ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquireCrypto:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquireCrypto:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquire:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquire:I

    :goto_0
    return-void
.end method

.method public incrementAuthForUser(IZ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAccept:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAccept:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mReject:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mReject:I

    :goto_0
    return-void
.end method

.method incrementCryptoAuthForUser(IZ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcceptCrypto:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcceptCrypto:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mRejectCrypto:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mRejectCrypto:I

    :goto_0
    return-void
.end method

.method public incrementHALDeathCount()V
    .locals 1

    iget v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    return-void
.end method

.method incrementPermanentLockoutForUser(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mPermanentLockout:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mPermanentLockout:I

    return-void
.end method

.method incrementTimedLockoutForUser(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mTimedLockout:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mTimedLockout:I

    return-void
.end method
