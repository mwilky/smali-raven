.class Lcom/android/server/locksettings/RebootEscrowManager;
.super Ljava/lang/Object;
.source "RebootEscrowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;,
        Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;,
        Lcom/android/server/locksettings/RebootEscrowManager$Injector;,
        Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;,
        Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowErrorCode;
    }
.end annotation


# static fields
.field private static final BOOT_COUNT_TOLERANCE:I = 0x5

.field private static final DEFAULT_LOAD_ESCROW_DATA_RETRY_COUNT:I = 0x3

.field private static final DEFAULT_LOAD_ESCROW_DATA_RETRY_INTERVAL_SECONDS:I = 0x1e

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT_MILLIS:I = 0x2bf20

.field static final ERROR_KEYSTORE_FAILURE:I = 0x7

.field static final ERROR_LOAD_ESCROW_KEY:I = 0x3

.field static final ERROR_NONE:I = 0x0

.field static final ERROR_NO_NETWORK:I = 0x8

.field static final ERROR_NO_PROVIDER:I = 0x2

.field static final ERROR_PROVIDER_MISMATCH:I = 0x6

.field static final ERROR_RETRY_COUNT_EXHAUSTED:I = 0x4

.field static final ERROR_UNKNOWN:I = 0x1

.field static final ERROR_UNLOCK_ALL_USERS:I = 0x5

.field static final OTHER_VBMETA_DIGEST_PROP_NAME:Ljava/lang/String; = "ota.other.vbmeta_digest"

.field public static final REBOOT_ESCROW_ARMED_KEY:Ljava/lang/String; = "reboot_escrow_armed_count"

.field static final REBOOT_ESCROW_KEY_ARMED_TIMESTAMP:Ljava/lang/String; = "reboot_escrow_key_stored_timestamp"

.field static final REBOOT_ESCROW_KEY_OTHER_VBMETA_DIGEST:Ljava/lang/String; = "reboot_escrow_key_other_vbmeta_digest"

.field static final REBOOT_ESCROW_KEY_PROVIDER:Ljava/lang/String; = "reboot_escrow_key_provider"

.field static final REBOOT_ESCROW_KEY_VBMETA_DIGEST:Ljava/lang/String; = "reboot_escrow_key_vbmeta_digest"

.field private static final TAG:Ljava/lang/String; = "RebootEscrowManager"

.field static final VBMETA_DIGEST_PROP_NAME:Ljava/lang/String; = "ro.boot.vbmeta.digest"


# instance fields
.field private final mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

.field private final mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

.field private final mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

.field private final mKeyGenerationLock:Ljava/lang/Object;

.field private final mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

.field private mLoadEscrowDataErrorCode:I

.field private mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

.field private mRebootEscrowListener:Lcom/android/internal/widget/RebootEscrowListener;

.field private mRebootEscrowReady:Z

.field private mRebootEscrowWanted:Z

.field private final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field private final mUserManager:Landroid/os/UserManager;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;)V
    .locals 1

    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-direct {v0, p1, p3}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;-><init>(Lcom/android/server/locksettings/RebootEscrowManager$Injector;Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/locksettings/RebootEscrowManager$Injector;Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

    iput-object p3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getEventLog()Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getKeyStoreManager()Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    return-void
.end method

.method private clearMetricsStorage()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "reboot_escrow_armed_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "reboot_escrow_key_stored_timestamp"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "reboot_escrow_key_vbmeta_digest"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "reboot_escrow_key_other_vbmeta_digest"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "reboot_escrow_key_provider"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    return-void
.end method

.method private clearRebootEscrowIfNeeded()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowReady(Z)V

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "RebootEscrowManager"

    const-string v2, "RebootEscrowProvider is unavailable for clear request"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->clearRebootEscrowKey()V

    :goto_0
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->clearRebootEscrowProvider()V

    invoke-direct {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearMetricsStorage()V

    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->removeRebootEscrow(I)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    return-void
.end method

.method private generateEscrowKeyIfNeeded()Lcom/android/server/locksettings/RebootEscrowKey;
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/locksettings/RebootEscrowKey;->generate()Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    iput-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "RebootEscrowManager"

    const-string v3, "Could not generate reboot escrow key"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getAndClearRebootEscrowKey(Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "RebootEscrowManager"

    const-string v3, "Had reboot escrow data for users, but RebootEscrowProvider is unavailable"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-nez p1, :cond_1

    const/4 v2, 0x7

    iput v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getAndClearRebootEscrowKey(Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    :cond_2
    return-object v1
.end method

.method private getVbmetaDigestStatusOnRestoreComplete()I
    .locals 6

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getVbmetaDigest(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v3, "reboot_escrow_key_vbmeta_digest"

    const-string v4, ""

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v5, "reboot_escrow_key_other_vbmeta_digest"

    invoke-virtual {v3, v5, v4, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    return v5

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    return v1

    :cond_3
    return v5
.end method

.method private onEscrowRestoreComplete(ZI)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "reboot_escrow_armed_count"

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getBootCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-nez p1, :cond_0

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/RebootEscrowManager;->reportMetricOnRestoreComplete(ZI)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->clearKeyStoreEncryptionKey()V

    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->clearRebootEscrowProvider()V

    invoke-direct {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearMetricsStorage()V

    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    return-void
.end method

.method private onGetRebootEscrowKeyFailed(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "RebootEscrowManager"

    const-string v1, "Had reboot escrow data for users, but no key; removing escrow storage."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->removeRebootEscrow(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/android/server/locksettings/RebootEscrowManager;->onEscrowRestoreComplete(ZI)V

    return-void
.end method

.method private reportMetricOnRestoreComplete(ZI)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v9, p1

    iget-object v1, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v10, v1

    iget-object v1, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v3, "reboot_escrow_key_stored_timestamp"

    const-wide/16 v4, -0x1

    const/4 v11, 0x0

    invoke-virtual {v1, v3, v4, v5, v11}, Lcom/android/server/locksettings/LockSettingsStorage;->getLong(Ljava/lang/String;JI)J

    move-result-wide v12

    const/4 v1, -0x1

    iget-object v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v3}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getCurrentTimeMillis()J

    move-result-wide v14

    cmp-long v3, v12, v4

    if-eqz v3, :cond_1

    cmp-long v3, v14, v12

    if-lez v3, :cond_1

    sub-long v3, v14, v12

    long-to-int v3, v3

    div-int/lit16 v1, v3, 0x3e8

    move/from16 v16, v1

    goto :goto_1

    :cond_1
    move/from16 v16, v1

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/RebootEscrowManager;->getVbmetaDigestStatusOnRestoreComplete()I

    move-result v17

    if-nez v9, :cond_2

    iget v1, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    if-nez v1, :cond_2

    iput v2, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting RoR recovery metrics, success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", service type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RebootEscrowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    iget v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    const/4 v8, -0x1

    move/from16 v2, p1

    move v4, v10

    move/from16 v5, p2

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->reportMetric(ZIIIIII)V

    iput v11, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    return-void
.end method

.method private restoreRebootEscrowForUser(ILcom/android/server/locksettings/RebootEscrowKey;Ljavax/crypto/SecretKey;)Z
    .locals 7

    const-string v0, "RebootEscrowManager"

    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasRebootEscrow(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readRebootEscrow(I)[B

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeRebootEscrow(I)V

    invoke-static {p2, v1, p3}, Lcom/android/server/locksettings/RebootEscrowData;->fromEncryptedData(Lcom/android/server/locksettings/RebootEscrowKey;[BLjavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowData;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

    invoke-virtual {v3}, Lcom/android/server/locksettings/RebootEscrowData;->getSpVersion()B

    move-result v5

    invoke-virtual {v3}, Lcom/android/server/locksettings/RebootEscrowData;->getSyntheticPassword()[B

    move-result-object v6

    invoke-interface {v4, v5, v6, p1}, Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;->onRebootEscrowRestored(B[BI)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restored reboot escrow data for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 v5, 0x7

    invoke-virtual {v4, v5, p1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load reboot escrow data for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method private setRebootEscrowReady(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowListener:Lcom/android/internal/widget/RebootEscrowListener;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/RebootEscrowListener;->onPreparedForReboot(Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    return-void
.end method


# virtual methods
.method armRebootEscrowIfNeeded()I
    .locals 13

    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getRebootEscrowProvider()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "RebootEscrowManager"

    const-string v2, "Not storing escrow key, RebootEscrowProvider is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    const/4 v1, 0x3

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    nop

    invoke-interface {v0}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getType()I

    move-result v5

    if-eq v2, v5, :cond_3

    const-string v1, "RebootEscrowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expect reboot escrow provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", but the RoR is prepared with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Please prepare the RoR again."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    const/4 v1, 0x4

    return v1

    :cond_3
    iget-object v6, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_4

    const-string v1, "RebootEscrowManager"

    const-string v3, "Escrow key is null, but escrow was marked as ready"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    const/4 v1, 0x5

    return v1

    :cond_4
    iget-object v6, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    invoke-virtual {v6}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->getKeyStoreEncryptionKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    if-nez v6, :cond_5

    const-string v1, "RebootEscrowManager"

    const-string v3, "Failed to get encryption key from keystore."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    const/4 v1, 0x6

    return v1

    :cond_5
    invoke-interface {v0, v7, v6}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->storeRebootEscrowKey(Lcom/android/server/locksettings/RebootEscrowKey;Ljavax/crypto/SecretKey;)Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v1, 0x7

    return v1

    :cond_6
    iget-object v9, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v10, "reboot_escrow_armed_count"

    iget-object v11, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v11}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getBootCount()I

    move-result v11

    invoke-virtual {v9, v10, v11, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->setInt(Ljava/lang/String;II)V

    iget-object v9, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v10, "reboot_escrow_key_stored_timestamp"

    iget-object v11, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v11}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getCurrentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->setLong(Ljava/lang/String;JI)V

    iget-object v9, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v10, "reboot_escrow_key_vbmeta_digest"

    iget-object v11, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v11, v4}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getVbmetaDigest(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v9, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v10, "reboot_escrow_key_other_vbmeta_digest"

    iget-object v11, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v11, v3}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getVbmetaDigest(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v10, v3, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v9, "reboot_escrow_key_provider"

    invoke-virtual {v3, v9, v5, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->setInt(Ljava/lang/String;II)V

    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    invoke-virtual {v3, v1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    return v4

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method callToRebootEscrowIfNeeded(IB[B)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    const-string v1, "RebootEscrowManager"

    if-nez v0, :cond_1

    const-string v0, "Not storing escrow data, RebootEscrowProvider is unavailable"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->generateEscrowKeyIfNeeded()Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v2, "Could not generate escrow key"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->generateKeyStoreEncryptionKeyIfNeeded()Ljavax/crypto/SecretKey;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v3, "Failed to generate encryption key from keystore."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :try_start_0
    invoke-static {v0, p2, p3, v2}, Lcom/android/server/locksettings/RebootEscrowData;->fromSyntheticPassword(Lcom/android/server/locksettings/RebootEscrowKey;B[BLjavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowData;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1}, Lcom/android/server/locksettings/RebootEscrowData;->getBlob()[B

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->writeRebootEscrow(I[B)V

    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, p1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(II)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowReady(Z)V

    return-void

    :catch_0
    move-exception v3

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowReady(Z)V

    const-string v4, "Could not escrow reboot data"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method clearRebootEscrow()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    const/4 v0, 0x1

    return v0
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5

    const-string/jumbo v0, "mRebootEscrowWanted="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "mRebootEscrowReady="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "mRebootEscrowListener="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowListener:Lcom/android/internal/widget/RebootEscrowListener;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "mPendingRebootEscrowKey is "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const-string/jumbo v0, "set"

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "not set"

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getRebootEscrowProvider()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v2, "null"

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RebootEscrowProvider type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v3, "Event log:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    invoke-virtual {v3, p1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic lambda$loadRebootEscrowDataIfAvailable$0$RebootEscrowManager(Landroid/os/Handler;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataWithRetry(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$scheduleLoadRebootEscrowDataOrFail$1$RebootEscrowManager(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataWithRetry(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method loadRebootEscrowDataIfAvailable(Landroid/os/Handler;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v4, v5}, Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;->isUserSecure(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->hasRebootEscrow(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "RebootEscrowManager"

    const-string v3, "No reboot escrow data found for users, skipping loading escrow data"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearMetricsStorage()V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v3, 0x2bf20

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_3
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    new-instance v3, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/locksettings/RebootEscrowManager;Landroid/os/Handler;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->post(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method loadRebootEscrowDataWithRetry(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->getKeyStoreEncryptionKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    const-string v1, "RebootEscrowManager"

    if-nez v0, :cond_0

    const-string v2, "Failed to load the key for resume on reboot from key store."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/locksettings/RebootEscrowManager;->getAndClearRebootEscrowKey(Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v2, 0x1

    if-nez v1, :cond_4

    iget v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v3}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    nop

    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v5, -0x1

    const-string/jumbo v6, "reboot_escrow_key_provider"

    invoke-virtual {v3, v6, v5, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(Ljava/lang/String;II)I

    move-result v3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x6

    iput v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    :cond_3
    :goto_1
    add-int/lit8 v2, p2, 0x1

    invoke-direct {p0, p3, v2}, Lcom/android/server/locksettings/RebootEscrowManager;->onGetRebootEscrowKeyFailed(Ljava/util/List;I)V

    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    invoke-virtual {v3, v2}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    const/4 v2, 0x1

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5, v1, v0}, Lcom/android/server/locksettings/RebootEscrowManager;->restoreRebootEscrowForUser(ILcom/android/server/locksettings/RebootEscrowKey;Ljavax/crypto/SecretKey;)Z

    move-result v5

    and-int/2addr v2, v5

    goto :goto_2

    :cond_5
    if-nez v2, :cond_6

    iget v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    if-nez v3, :cond_6

    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    :cond_6
    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/locksettings/RebootEscrowManager;->onEscrowRestoreComplete(ZI)V

    return-void

    :catch_0
    move-exception v2

    const-string v3, "Failed to load escrow key, scheduling retry."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/android/server/locksettings/RebootEscrowManager;->scheduleLoadRebootEscrowDataOrFail(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method prepareRebootEscrow()Z
    .locals 3

    invoke-direct {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "RebootEscrowManager"

    const-string v1, "No reboot escrow provider, skipping resume on reboot preparation."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    return v0
.end method

.method scheduleLoadRebootEscrowDataOrFail(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getLoadEscrowDataRetryLimit()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getLoadEscrowDataRetryIntervalSeconds()I

    move-result v1

    const-string v2, "RebootEscrowManager"

    if-ge p2, v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling loadRebootEscrowData retry number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    new-instance v9, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda0;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/RebootEscrowManager;Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    mul-int/lit16 v3, v1, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v2, p1, v9, v3, v4}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load reboot escrow data after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " attempts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->isNetworkConnected()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x8

    iput v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    :goto_0
    invoke-direct {p0, p3, p2}, Lcom/android/server/locksettings/RebootEscrowManager;->onGetRebootEscrowKeyFailed(Ljava/util/List;I)V

    return-void
.end method

.method setRebootEscrowListener(Lcom/android/internal/widget/RebootEscrowListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowListener:Lcom/android/internal/widget/RebootEscrowListener;

    return-void
.end method
