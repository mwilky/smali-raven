.class public final Lcom/android/server/devicepolicy/FactoryResetter;
.super Ljava/lang/Object;
.source "FactoryResetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/FactoryResetter$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mForce:Z

.field private final mReason:Ljava/lang/String;

.field private final mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

.field private final mShutdown:Z

.field private final mWipeAdoptableStorage:Z

.field private final mWipeEuicc:Z

.field private final mWipeFactoryResetProtection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/devicepolicy/FactoryResetter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/FactoryResetter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->access$300(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->access$400(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Landroid/app/admin/DevicePolicySafetyChecker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    invoke-static {p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->access$500(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mReason:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->access$600(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mShutdown:Z

    invoke-static {p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->access$700(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mForce:Z

    invoke-static {p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->access$800(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeEuicc:Z

    invoke-static {p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->access$900(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeAdoptableStorage:Z

    invoke-static {p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->access$1000(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeFactoryResetProtection:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/devicepolicy/FactoryResetter$Builder;Lcom/android/server/devicepolicy/FactoryResetter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/FactoryResetter;-><init>(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/devicepolicy/FactoryResetter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/devicepolicy/FactoryResetter;)Landroid/app/admin/DevicePolicySafetyChecker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/devicepolicy/FactoryResetter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/devicepolicy/FactoryResetter;->factoryResetInternalUnchecked()V

    return-void
.end method

.method private factoryResetInternalUnchecked()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/devicepolicy/FactoryResetter;->TAG:Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mReason:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mShutdown:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mForce:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeEuicc:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeAdoptableStorage:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeFactoryResetProtection:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "factoryReset(): reason=%s, shutdown=%b, force=%b, wipeEuicc=%b, wipeAdoptableStorage=%b, wipeFRP=%b"

    invoke-static {v0, v2, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mForce:Z

    if-nez v2, :cond_1

    const-string/jumbo v2, "no_factory_reset"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Factory reset is not allowed for this user."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeFactoryResetProtection:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    const-class v3, Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/persistentdata/PersistentDataBlockManager;

    if-eqz v2, :cond_2

    const-string v3, "Wiping factory reset protection"

    invoke-static {v0, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    goto :goto_1

    :cond_2
    const-string v3, "No need to wipe factory reset protection"

    invoke-static {v0, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeAdoptableStorage:Z

    if-eqz v2, :cond_4

    const-string v2, "Wiping adoptable storage"

    invoke-static {v0, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->wipeAdoptableDisks()V

    :cond_4
    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mShutdown:Z

    iget-object v3, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mReason:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mForce:Z

    iget-boolean v5, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeEuicc:Z

    invoke-static {v0, v2, v3, v4, v5}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    return-void
.end method

.method public static newBuilder(Landroid/content/Context;)Lcom/android/server/devicepolicy/FactoryResetter$Builder;
    .locals 2

    new-instance v0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;-><init>(Landroid/content/Context;Lcom/android/server/devicepolicy/FactoryResetter$1;)V

    return-object v0
.end method


# virtual methods
.method public factoryReset()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MASTER_CLEAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkCallAuthorization(Z)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/devicepolicy/FactoryResetter;->factoryResetInternalUnchecked()V

    return v1

    :cond_1
    new-instance v0, Lcom/android/server/devicepolicy/FactoryResetter$1;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/FactoryResetter$1;-><init>(Lcom/android/server/devicepolicy/FactoryResetter;)V

    sget-object v3, Lcom/android/server/devicepolicy/FactoryResetter;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    aput-object v4, v1, v2

    const-string v4, "Delaying factory reset until %s confirms"

    invoke-static {v3, v4, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    invoke-interface {v1, v0}, Landroid/app/admin/DevicePolicySafetyChecker;->onFactoryReset(Lcom/android/internal/os/IResultReceiver;)V

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FactoryResetter["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mReason:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, "no_reason"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "reason=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    if-eqz v1, :cond_1

    const-string v1, ",hasSafetyChecker"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mShutdown:Z

    if-eqz v1, :cond_2

    const-string v1, ",shutdown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mForce:Z

    if-eqz v1, :cond_3

    const-string v1, ",force"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeEuicc:Z

    if-eqz v1, :cond_4

    const-string v1, ",wipeEuicc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeAdoptableStorage:Z

    if-eqz v1, :cond_5

    const-string v1, ",wipeAdoptableStorage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeFactoryResetProtection:Z

    if-eqz v1, :cond_6

    const-string v1, ",ipeFactoryResetProtection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
