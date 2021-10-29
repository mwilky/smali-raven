.class public Lcom/android/server/locksettings/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;,
        Lcom/android/server/locksettings/LockSettingsService$LocalService;,
        Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;,
        Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;,
        Lcom/android/server/locksettings/LockSettingsService$Injector;,
        Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;,
        Lcom/android/server/locksettings/LockSettingsService$Lifecycle;
    }
.end annotation


# static fields
.field private static final BIOMETRIC_PERMISSION:Ljava/lang/String; = "android.permission.MANAGE_BIOMETRIC"

.field private static final DEBUG:Z = false

.field private static final GK_PW_HANDLE_STORE_DURATION_MS:I = 0x927c0

.field private static final GSI_RUNNING_PROP:Ljava/lang/String; = "ro.gsid.image_running"

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final PREV_SYNTHETIC_PASSWORD_HANDLE_KEY:Ljava/lang/String; = "prev-sp-handle"

.field private static final PROFILE_KEY_IV_SIZE:I = 0xc

.field private static final READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final SEPARATE_PROFILE_CHALLENGE_KEY:Ljava/lang/String; = "lockscreen.profilechallenge"

.field private static final SYNTHETIC_PASSWORD_UPDATE_TIME_KEY:Ljava/lang/String; = "sp-handle-ts"

.field private static final SYSTEM_CREDENTIAL_UIDS:[I

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final USER_SERIAL_NUMBER_KEY:Ljava/lang/String; = "serial-number"

.field private static final VALID_SETTINGS:[Ljava/lang/String;


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field protected mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

.field private final mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

.field private mFirstCallToVold:Z

.field protected mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field private final mGatekeeperPasswords:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field protected final mHandler:Landroid/os/Handler;

.field protected mHasSecureLockScreen:Z

.field private final mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

.field private final mJavaKeyStore:Ljava/security/KeyStore;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mRandom:Ljava/util/Random;

.field private final mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

.field private final mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

.field private final mSeparateChallengeLock:Ljava/lang/Object;

.field private final mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

.field protected final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field private final mStorageManager:Landroid/os/storage/IStorageManager;

.field private final mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

.field private final mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

.field private final mUserManager:Landroid/os/UserManager;

.field final mUserPasswordMetrics:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/admin/PasswordMetrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    const-string/jumbo v1, "lockscreen.lockedoutpermanently"

    const-string/jumbo v2, "lockscreen.patterneverchosen"

    const-string/jumbo v3, "lockscreen.password_type"

    const-string/jumbo v4, "lockscreen.password_type_alternate"

    const-string/jumbo v5, "lockscreen.password_salt"

    const-string/jumbo v6, "lockscreen.disabled"

    const-string/jumbo v7, "lockscreen.options"

    const-string/jumbo v8, "lockscreen.biometric_weak_fallback"

    const-string/jumbo v9, "lockscreen.biometricweakeverchosen"

    const-string/jumbo v10, "lockscreen.power_button_instantly_locks"

    const-string/jumbo v11, "lockscreen.passwordhistory"

    const-string/jumbo v12, "lock_pattern_autolock"

    const-string/jumbo v13, "lock_biometric_weak_flags"

    const-string/jumbo v14, "lock_pattern_visible_pattern"

    const-string/jumbo v15, "lock_pattern_tactile_feedback_enabled"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    const-string/jumbo v1, "lock_screen_owner_info"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    const-string/jumbo v0, "lockscreen.password_salt"

    const-string/jumbo v1, "lockscreen.passwordhistory"

    const-string/jumbo v2, "lockscreen.password_type"

    const-string/jumbo v3, "lockscreen.profilechallenge"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x3f8
        0x0
        0x3e8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;-><init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V
    .locals 11

    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/locksettings/LockSettingsService$2;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getJavaKeyStore()Ljava/security/KeyStore;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getRecoverableKeyStoreManager()Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getServiceThread()Lcom/android/server/ServiceThread;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getHandler(Lcom/android/server/ServiceThread;)Landroid/os/Handler;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStrongAuth()Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstCallToVold:Z

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v10, v1

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v10, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_STARTING"

    invoke-virtual {v10, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v10, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v10

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorage()Lcom/android/server/locksettings/LockSettingsStorage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStrongAuthTracker()Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    invoke-virtual {v2, v9}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->register(Lcom/android/server/locksettings/LockSettingsStrongAuth;)V

    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mRandom:Ljava/util/Random;

    invoke-virtual {p1, v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getSyntheticPasswordManager(Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p1, v7}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getManagedProfilePasswordCache(Ljava/security/KeyStore;)Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    new-instance v3, Lcom/android/server/locksettings/BiometricDeferredQueue;

    invoke-direct {v3, v0, v2, v8}, Lcom/android/server/locksettings/BiometricDeferredQueue;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/SyntheticPasswordManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getRebootEscrowManager(Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/RebootEscrowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/locksettings/LockSettingsService$LocalService;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/locksettings/LockSettingsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateOldDataAfterSystemReady()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/locksettings/LockSettingsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->loadEscrowData()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/locksettings/LockSettingsService;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->removeUser(IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/locksettings/LockSettingsService;[BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/android/server/locksettings/LockSettingsService;JI)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->removeEscrowToken(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/locksettings/LockSettingsService;JI)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEscrowTokenActive(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->onPostPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/locksettings/LockSettingsService;J[BI)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->unlockUserWithToken(J[BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/RebootEscrowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->loadPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Landroid/app/admin/PasswordMetrics;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Landroid/app/admin/PasswordMetrics;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/locksettings/LockSettingsService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->cleanupDataForReusedUserIdIfNecessary(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/locksettings/LockSettingsService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->ensureProfileKeystoreUnlocked(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/locksettings/LockSettingsService;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/locksettings/LockSettingsService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->tryDeriveAuthTokenForUnsecuredPrimaryUser(I)V

    return-void
.end method

.method private activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "LockSettingsService"

    const-string v5, "activateEscrowTokens: %x %d "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, v2, v3, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    nop

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .locals 9

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p2}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    const/4 v8, 0x0

    move v7, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-object v1, v2

    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Escrow token is disabled on the current user"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedSyntheticPassword([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v2

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, v2, v3, v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    :cond_4
    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addUserKeyAuth(I[B[B)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget v4, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v3, p1, v4, p2, p3}, Landroid/os/storage/IStorageManager;->addUserKeyAuth(II[B[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add new key to vold "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private callToAuthSecretIfNeeded(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveVendorAuthSecret()[B

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-byte v3, v0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

    invoke-interface {v2, v1}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->primaryUserCredential(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "LockSettingsService"

    const-string v2, "Failed to pass primary user secret to AuthSecret HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private final checkBiometricPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    const-string v2, "LockSettingsBiometric"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final checkPasswordHavePermission(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x534e4554

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "28251513"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v2, "LockSettingsHave"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final checkPasswordReadPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .locals 10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/android/server/locksettings/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v2

    const-string v4, " for user "

    const-string v5, " to read "

    const-string v6, " needs permission "

    const-string/jumbo v7, "uid="

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_2
    sget-object v2, Lcom/android/server/locksettings/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_5

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v3, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private final checkWritePermission(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private cleanupDataForReusedUserIdIfNecessary(I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "serial-number"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v0, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/server/locksettings/LockSettingsService;->removeUser(IZ)V

    :cond_1
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v3, v2, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->setInt(Ljava/lang/String;II)V

    :cond_2
    return-void
.end method

.method private clearUserKeyProtection(I[B)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget v4, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v5, 0x0

    invoke-interface {v3, p1, v4, v5, p2}, Landroid/os/storage/IStorageManager;->clearUserKeyAuth(II[B[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearUserKeyAuth failed user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method private createPattern(Ljava/lang/String;)Lcom/android/internal/widget/LockscreenCredential;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    nop

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    return-object v1
.end method

.method private static credentialTypeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "Password"

    return-object v0

    :pswitch_2
    const-string v0, "Pin"

    return-object v0

    :pswitch_3
    const-string v0, "Pattern"

    return-object v0

    :pswitch_4
    const-string v0, "None"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserManaged(I)Z

    move-result v1

    const-string v2, "LockSettingsService"

    if-eqz v1, :cond_0

    const-string v1, "Managed profile can have escrow token"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->isDeviceManaged()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Corp-owned device can have escrow token"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDeviceStateCache()Landroid/app/admin/DeviceStateCache;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/admin/DeviceStateCache;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Postpone disabling escrow tokens until device is provisioned"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.type.automotive"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling escrow token on user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyEscrowData(I)V

    :cond_4
    return-void
.end method

.method private doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, -0x270f

    const-string v1, "LockSettingsService"

    if-ne p2, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "device_provisioned"

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/locksettings/LockSettingsService$Injector;->settingsGlobalGetInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "FRP credential can only be verified prior to provisioning."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->spBasedDoVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V

    :cond_1
    return-object v2

    :cond_2
    if-ne p2, v0, :cond_3

    const-string v0, "Unexpected FRP credential type, should be SP based."

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v0

    iget v3, v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/LockscreenCredential;->checkAgainstStoredType(I)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doVerifyCredential type mismatch with stored credential?? stored: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " passed in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1

    :cond_4
    invoke-direct {p0, p2, v0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->verifyCredential(ILcom/android/server/locksettings/LockSettingsStorage$CredentialHash;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v2, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulStrongAuthUnlock(I)V

    :cond_5
    return-object v1

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credential can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dumpKeystoreKeys(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get keys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "LockSettingsService"

    const-string v2, "Dump error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private enforceFrpResolved()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Lcom/android/server/locksettings/LockSettingsService$Injector;->settingsSecureGetInt(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    const-string/jumbo v5, "secure_frp_mode"

    invoke-virtual {v4, v0, v5, v3, v3}, Lcom/android/server/locksettings/LockSettingsService$Injector;->settingsSecureGetInt(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v3, v2

    :cond_1
    move v2, v3

    if-eqz v1, :cond_3

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Cannot change credential in SUW while factory reset protection is not resolved yet"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_1
    return-void
.end method

.method private enforceShell()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->isCallerShell()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enrollCredential([B[B[BI)[B
    .locals 4

    const-string v0, "LockSettingsService"

    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-interface {v2, p4, p1, p2, p3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    goto :goto_0

    :cond_1
    const-string v3, "Throttled while enrolling a password"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    const-string v3, "Failed to enroll credential"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private ensureProfileKeystoreUnlocked(I)V
    .locals 3

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v1

    sget-object v2, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hasUnifiedChallenge(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LockSettingsService"

    const-string v2, "Managed profile got unlocked, will unlock its keystore"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->unlockChildProfile(IZ)V

    :cond_0
    return-void
.end method

.method private faceManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/face/FaceManager$RemovalCallback;
    .locals 1

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$5;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method private fingerprintManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
    .locals 1

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$4;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method private fixateNewestUserKeyAuth(I)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v2, p1}, Landroid/os/storage/IStorageManager;->fixateNewestUserKeyAuth(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "LockSettingsService"

    const-string v4, "fixateNewestUserKeyAuth failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private gateKeeperClearSecureUserId(I)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LockSettingsService"

    const-string v2, "Failed to clear SID"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private generateRandomProfilePassword()Lcom/android/internal/widget/LockscreenCredential;
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [B

    :try_start_0
    const-string v2, "SHA1PRNG"

    invoke-static {v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v2

    move-object v1, v2

    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v2

    array-length v3, v2

    new-array v3, v3, [B

    const/4 v4, 0x0

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    aget-char v5, v2, v4

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    nop

    invoke-static {v3}, Lcom/android/internal/widget/LockscreenCredential;->createManagedPassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v4

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([CC)V

    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Fail to generate profile password"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getAuthSecretHal()V
    .locals 3

    const-string v0, "LockSettingsService"

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->getService(Z)Landroid/hardware/authsecret/V1_0/IAuthSecret;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to get AuthSecret HAL"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "Device doesn\'t implement AuthSecret HAL"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private getDecryptedPasswordsForAllTiedProfiles(I)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/LockscreenCredential;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDecryptedPasswordsForAllTiedProfiles failed for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "LockSettingsService"

    invoke-static {v8, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getFrpCredentialType()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0

    iget v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    iget v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    if-eq v1, v2, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getFrpCredentialType([B)I

    move-result v1

    if-eq v1, v2, :cond_1

    return v1

    :cond_1
    iget v2, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->qualityForUi:I

    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->pinOrPasswordQualityToCredentialType(I)I

    move-result v2

    return v2
.end method

.method private getKeyguardStoredQuality(I)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "lockscreen.password_type"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private getProfilesWithSameLockScreen(I)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v3, p1, :cond_0

    iget v3, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v3, p1, :cond_1

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getRequestedPasswordHistoryLength(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method private getSalt(I)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "lockscreen.password_salt"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    move-wide v3, v1

    invoke-virtual {p0, v0, v3, v4, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialized lock password salt for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Couldn\'t get SecureRandom number"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSeparateProfileChallengeEnabledInternal(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "lockscreen.profilechallenge"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasUnifiedChallenge(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hideEncryptionNotification(Landroid/os/UserHandle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private isCallerShell()Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private isCredentialRequiredToDecrypt()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "require_password_to_decrypt"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isDeviceEncryptionEnabled()Z
    .locals 1

    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result v0

    return v0
.end method

.method private isDoNotAskCredentialsOnBootSet()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v0

    return v0
.end method

.method private isEscrowTokenActive(JI)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->existsHandle(JI)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isManagedProfileWithSeparatedLock(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isManagedProfileWithUnifiedLock(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSyntheticPasswordBasedCredentialLocked(I)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, -0x270f

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v2

    iget v2, v2, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    if-eq v2, v1, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method private isUserKeyUnlocked(I)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->isUserKeyUnlocked(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "LockSettingsService"

    const-string v2, "failed to check user key locked state"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method private isUserSecure(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$notifySeparateProfileChallengeChanged$0(I)V
    .locals 1

    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->reportSeparateProfileChallengeChanged(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$scheduleGc$5()V
    .locals 0

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/System;->runFinalization()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private loadEscrowData()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataIfAvailable(Landroid/os/Handler;)V

    return-void
.end method

.method private loadPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private maybeShowEncryptionNotificationForUser(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserKeyUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V

    :cond_2
    return-void
.end method

.method private migrateFrpCredential()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0

    sget-object v1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v2

    :try_start_0
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "lockscreen.password_type"

    const-wide/16 v3, 0x0

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    long-to-int v0, v3

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->redactActualQualityToMostLenientEquivalentQuality(I)I

    move-result v6

    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->migrateFrpPasswordLocked(JLandroid/content/pm/UserInfo;I)V

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method private migrateOldData()V
    .locals 17

    move-object/from16 v1, p0

    const-string/jumbo v0, "migrated"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/android/server/locksettings/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    array-length v5, v4

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v8

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v1, v7, v8, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "migrated"

    const-string/jumbo v5, "true"

    invoke-virtual {v1, v4, v5, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "LockSettingsService"

    const-string v5, "Migrated lock settings to new location"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v0, "migrated_user_specific"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    const/4 v0, 0x0

    move v9, v0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_7

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v10, v0, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v11, "lock_screen_owner_info"

    const-string/jumbo v0, "lock_screen_owner_info"

    invoke-static {v7, v0, v10}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "lock_screen_owner_info"

    invoke-virtual {v1, v0, v12, v10}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v0, "lock_screen_owner_info"

    const-string v13, ""

    invoke-static {v7, v0, v13, v10}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_3
    const-string/jumbo v13, "lock_screen_owner_info_enabled"

    const-wide/16 v14, 0x1

    :try_start_0
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    invoke-static {v7, v0, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v16, 0x1

    goto :goto_2

    :cond_4
    move/from16 v16, v3

    :goto_2
    const-string/jumbo v6, "lock_screen_owner_info_enabled"

    if-eqz v16, :cond_5

    move-wide v4, v14

    goto :goto_3

    :cond_5
    const-wide/16 v4, 0x0

    :goto_3
    invoke-virtual {v1, v6, v4, v5, v10}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "lock_screen_owner_info_enabled"

    invoke-virtual {v1, v4, v14, v15, v10}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    :cond_6
    :goto_4
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    invoke-static {v7, v0, v3, v10}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_7
    const-string/jumbo v0, "migrated_user_specific"

    const-string/jumbo v4, "true"

    invoke-virtual {v1, v0, v4, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "LockSettingsService"

    const-string v4, "Migrated per-user lock settings to new location"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string/jumbo v0, "migrated_biometric_weak"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v6, "lockscreen.password_type"

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v6, v7, v8, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v9

    const-string/jumbo v6, "lockscreen.password_type_alternate"

    invoke-virtual {v1, v6, v7, v8, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v11

    const-wide/32 v6, 0x8000

    cmp-long v6, v9, v6

    if-nez v6, :cond_9

    const-string/jumbo v6, "lockscreen.password_type"

    invoke-virtual {v1, v6, v11, v12, v5}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    :cond_9
    const-string/jumbo v6, "lockscreen.password_type_alternate"

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v6, v7, v8, v5}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    const-string/jumbo v4, "migrated_biometric_weak"

    const-string/jumbo v5, "true"

    invoke-virtual {v1, v4, v5, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "LockSettingsService"

    const-string v5, "Migrated biometric weak to use the fallback instead"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-string/jumbo v0, "migrated_lockscreen_disabled"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v4, :cond_d

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v7

    if-eqz v7, :cond_c

    add-int/lit8 v5, v5, 0x1

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_d
    const/4 v6, 0x1

    if-le v5, v6, :cond_f

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v4, :cond_f

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v8, "lockscreen.disabled"

    invoke-virtual {v1, v8, v3, v7}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v8

    if-eqz v8, :cond_e

    const-string/jumbo v8, "lockscreen.disabled"

    invoke-virtual {v1, v8, v3, v7}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_f
    const-string/jumbo v6, "migrated_lockscreen_disabled"

    const-string/jumbo v7, "true"

    invoke-virtual {v1, v6, v7, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v6, "LockSettingsService"

    const-string v7, "Migrated lockscreen disabled flag"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.type.watch"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string/jumbo v0, "migrated_wear_lockscreen_disabled"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v5, :cond_11

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v8, "lockscreen.disabled"

    invoke-virtual {v1, v8, v3, v7}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_11
    const-string/jumbo v6, "migrated_wear_lockscreen_disabled"

    const-string/jumbo v7, "true"

    invoke-virtual {v1, v6, v7, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v6, "LockSettingsService"

    const-string v7, "Migrated lockscreen_disabled for Wear devices"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const-string/jumbo v0, "migrated_keystore_namespace"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    const/4 v2, 0x1

    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v5

    :try_start_1
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->migrateKeyNamespace()Z

    move-result v0

    and-int/2addr v2, v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateProfileLockKeys()Z

    move-result v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_13

    const-string/jumbo v2, "migrated_keystore_namespace"

    const-string/jumbo v5, "true"

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "LockSettingsService"

    const-string v3, "Migrated keys to LSS namespace"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_13
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to migrate keys to LSS namespace"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_14
    :goto_9
    return-void
.end method

.method private migrateOldDataAfterSystemReady()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "migrated_frp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateFrpCredential()V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    const-string v0, "LockSettingsService"

    const-string v1, "Migrated migrated_frp."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private migrateProfileLockKeys()Z
    .locals 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "profile_key_name_encrypt_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->migrateLockSettingsKey(Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v0, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "profile_key_name_decrypt_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->migrateLockSettingsKey(Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v0, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private notifyPasswordChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifySeparateProfileChallengeChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->isGsiRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LockSettingsService"

    const-string v1, "Running in GSI; skipping calls to AuthSecret and RebootEscrow"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getVersion()B

    move-result v1

    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getSyntheticPassword()[B

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/locksettings/RebootEscrowManager;->callToRebootEscrowIfNeeded(IB[B)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->callToAuthSecretIfNeeded(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    return-void
.end method

.method private onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Landroid/app/admin/PasswordMetrics;I)V
    .locals 2

    if-eqz p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const-string v0, "LockSettingsService"

    const-string v1, "Null metrics after credential verification"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore([BI)V

    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p3, v1, v0}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithSeparatedLock(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p3}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulStrongAuthUnlock(I)V

    invoke-direct {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    return-void
.end method

.method private onPostPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->updateEncryptionPasswordIfNeeded(Lcom/android/internal/widget/LockscreenCredential;I)V

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isPattern()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string/jumbo v1, "lockscreen.patterneverchosen"

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->updatePasswordHistory(Lcom/android/internal/widget/LockscreenCredential;I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/trust/TrustManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    invoke-virtual {v0, p2}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    return-void
.end method

.method private static pinOrPasswordQualityToCredentialType(I)I
    .locals 3

    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isQualityAlphabeticPassword(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isQualityNumericPin(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quality is neither Pin nor password: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private redactActualQualityToMostLenientEquivalentQuality(I)I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    return p1

    :sswitch_0
    const/high16 v0, 0x40000

    return v0

    :sswitch_1
    const/high16 v0, 0x20000

    return v0

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method private removeAllFaceForUser(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getFaceManager()Landroid/hardware/face/FaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->faceManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/face/FaceManager$RemovalCallback;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/hardware/face/FaceManager;->removeAll(ILandroid/hardware/face/FaceManager$RemovalCallback;)V

    const-wide/16 v2, 0x2710

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "LockSettingsService"

    const-string v4, "Latch interrupted when removing face"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private removeAllFingerprintForUser(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getFingerprintManager()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->fingerprintManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->removeAll(ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    const-wide/16 v2, 0x2710

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "LockSettingsService"

    const-string v4, "Latch interrupted when removing fingerprint"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private removeBiometricsForUser(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeAllFingerprintForUser(I)V

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeAllFaceForUser(I)V

    return-void
.end method

.method private removeEscrowToken(JI)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "LockSettingsService"

    const-string v3, "Cannot remove password handle"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removePendingToken(JI)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    monitor-exit v0

    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->existsHandle(JI)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyTokenBasedSyntheticPassword(JI)V

    monitor-exit v0

    return v3

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeKeystoreProfileKey(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove keystore profile key for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "profile_key_name_encrypt_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "profile_key_name_decrypt_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to remove keystore profile key for user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private removeUser(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoveUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeBiometricsForUser(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removeUser(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->removeUser(I)V

    invoke-static {p1}, Landroid/security/AndroidKeyStoreMaintenance;->onUserRemoved(I)I

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->removePassword(I)V

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeUser(I)V

    return-void
.end method

.method private scheduleGc()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda5;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static secretFromCredential(Lcom/android/internal/widget/LockscreenCredential;)[B
    .locals 3

    :try_start_0
    const-string v0, "SHA-512"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "Android FBE credential hash"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "NoSuchAlgorithmException for SHA-512"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sendCredentialsOnChangeIfRequired(Lcom/android/internal/widget/LockscreenCredential;IZ)V
    .locals 5

    if-eqz p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v0

    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getProfilesWithSameLockScreen(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v4

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretChanged(I[BI)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 5

    const/16 v0, -0x270f

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v0

    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getProfilesWithSameLockScreen(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v4

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretAvailable(I[BI)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private setAuthlessUserKeyProtection(I[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    return-void
.end method

.method private setCredentialRequiredToDecrypt(Z)V
    .locals 2

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    nop

    const-string/jumbo v1, "require_password_to_decrypt"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private setDeviceUnlockedForUser(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/trust/TrustManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    return-void
.end method

.method private setKeyguardStoredQuality(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    int-to-long v1, p1

    const-string/jumbo v3, "lockscreen.password_type"

    invoke-virtual {v0, v3, v1, v2, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->setLong(Ljava/lang/String;JI)V

    return-void
.end method

.method private setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v3

    :try_start_0
    invoke-direct {v1, v9}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p4}, Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result v0

    monitor-exit v3

    return v0

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v0, :cond_1

    invoke-direct {v1, v9, v13}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I[B)V

    invoke-direct {v1, v9}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->createEmptyHash()Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v3

    invoke-virtual {v0, v3, v9}, Lcom/android/server/locksettings/LockSettingsStorage;->writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V

    invoke-direct {v1, v12, v9}, Lcom/android/server/locksettings/LockSettingsService;->setKeyguardStoredQuality(II)V

    invoke-virtual {v1, v13, v9}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    invoke-direct {v1, v9}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    invoke-direct {v1, v9, v13}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    invoke-direct {v1, v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V

    invoke-direct {v1, v2, v9, v10}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnChangeIfRequired(Lcom/android/internal/widget/LockscreenCredential;IZ)V

    return v11

    :cond_1
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v9}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v14

    invoke-direct {v1, v9}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v1, v9}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v15, v0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v3, "LockSettingsService"

    const-string v4, "Failed to decrypt child profile key"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    const-string v3, "LockSettingsService"

    const-string v4, "Child profile key not found"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_2
    iget-object v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    if-nez v0, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "LockSettingsService"

    const-string v3, "Saved credential provided, but none stored"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    move-object v15, v0

    goto :goto_2

    :cond_4
    :goto_1
    move-object/from16 v15, p2

    :goto_2
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v4

    :try_start_2
    invoke-virtual {v1, v9}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual {v1, v0, v15, v9}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v1, v2, v15, v9, v10}, Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result v0

    monitor-exit v4

    return v0

    :cond_5
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual {v15}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v4

    invoke-direct {v1, v0, v3, v4, v9}, Lcom/android/server/locksettings/LockSettingsService;->enrollCredential([B[B[BI)[B

    move-result-object v8

    if-nez v8, :cond_7

    const-string v0, "LockSettingsService"

    const-string v3, "Failed to enroll %s: incorrect credential"

    new-array v4, v11, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isPattern()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "pattern"

    goto :goto_3

    :cond_6
    const-string/jumbo v5, "password"

    :goto_3
    aput-object v5, v4, v12

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    invoke-static {v8, v0}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->create([BI)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v7

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v7, v9}, Lcom/android/server/locksettings/LockSettingsStorage;->writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V

    nop

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToPasswordQuality(I)I

    move-result v0

    invoke-direct {v1, v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->setKeyguardStoredQuality(II)V

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const-wide/16 v5, 0x0

    iget-object v0, v7, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v16
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move/from16 v4, p3

    move-object/from16 v17, v7

    move-object v7, v0

    move-object/from16 v18, v8

    move-object/from16 v8, v16

    :try_start_4
    invoke-interface/range {v3 .. v8}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    nop

    invoke-direct {v1, v0}, Lcom/android/server/locksettings/LockSettingsService;->convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    invoke-direct {v1, v9, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setUserKeyProtection(ILcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/VerifyCredentialResponse;)V

    invoke-direct {v1, v9}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    invoke-direct {v1, v2, v9, v13, v12}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v1, v9, v13}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    invoke-direct {v1, v2, v9, v10}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnChangeIfRequired(Lcom/android/internal/widget/LockscreenCredential;IZ)V

    return v11

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    :goto_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to verify current credential"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method private setLockCredentialWithAuthTokenLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J
    .locals 11

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasSidForUser(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    const-wide/16 v7, 0x0

    move-object v6, p2

    move v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    invoke-virtual {v3, v4, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v6

    const-wide/16 v8, 0x0

    move-object v7, p2

    move v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v3

    invoke-direct {p0, p3, v3}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordsForAllTiedProfiles(I)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, p3, v4, v3}, Lcom/android/server/locksettings/LockSettingsService;->unlockUserKey(I[B[B)V

    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v3

    invoke-direct {p0, p3, v3}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I[B)V

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore([BI)V

    invoke-virtual {p0, v4, p3}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->removeBiometricsForUser(I)V

    :goto_0
    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->setSyntheticPasswordHandleLocked(JI)V

    invoke-direct {p0, p3, v2}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v3, p3}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->removePassword(I)V

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    goto :goto_1

    :cond_2
    return-wide v0
.end method

.method private setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithTokenInternalLocked(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, p5, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p5}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(I)V

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Escrow token is disabled on the current user"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private setLockCredentialWithTokenInternalLocked(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const/4 v2, 0x0

    const-string v3, "LockSettingsService"

    if-nez v1, :cond_0

    const-string v1, "Invalid escrow token supplied"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Obsolete token: synthetic password derived but it fails GK verification."

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, p5, v1}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    invoke-virtual {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, p1, v3, p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithAuthTokenLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, v1, v2, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    const/4 v3, 0x1

    return v3
.end method

.method private setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V
    .locals 3

    const-string/jumbo v0, "lockscreen.profilechallenge"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->tieManagedProfileLockIfNecessary(ILcom/android/internal/widget/LockscreenCredential;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    nop

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    throw v2
.end method

.method private setSyntheticPasswordHandleLocked(JI)V
    .locals 5

    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v0

    const-string/jumbo v2, "sp-handle"

    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    const-string/jumbo v2, "prev-sp-handle"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "sp-handle-ts"

    invoke-virtual {p0, v4, v2, v3, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    return-void
.end method

.method private setUserKeyProtection(ILcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/VerifyCredentialResponse;)V
    .locals 3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/android/server/locksettings/LockSettingsService;->secretFromCredential(Lcom/android/internal/widget/LockscreenCredential;)[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty payload verifying a credential we just set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-OK response verifying a credential we just set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null response verifying a credential we just set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private shouldEncryptWithCredentials()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialRequiredToDecrypt()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->isDoNotAskCredentialsOnBootSet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 4

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x1080557

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v3, 0x106001c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104074c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x104074b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const v2, 0x104074a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/app/KeyguardManager;

    nop

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v10, v3, v3, v2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v11

    if-nez v11, :cond_0

    return-void

    :cond_0
    const/high16 v2, 0x10800000

    invoke-virtual {v11, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0xa000000

    invoke-static {v2, v3, v11, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v8

    move-object v6, v9

    move-object v7, v12

    invoke-direct/range {v2 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private spBasedDoVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 18

    move-object/from16 v1, p0

    move/from16 v12, p2

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0, v12}, Lcom/android/server/locksettings/LockSettingsService$Injector;->hasEnrolledBiometrics(I)Z

    move-result v13

    const-string v0, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "spBasedDoVerifyCredential: user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " hasEnrolledBiometrics="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v0, p4, 0x1

    const/4 v14, 0x1

    if-eqz v0, :cond_0

    move v0, v14

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v15, v0

    iget-object v11, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v11

    :try_start_0
    invoke-direct {v1, v12}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v0

    :cond_1
    const/16 v0, -0x270f

    if-ne v12, v0, :cond_2

    :try_start_1
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    :try_start_2
    invoke-virtual {v0, v2, v9, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyFrpCredential(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    monitor-exit v11

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    goto/16 :goto_2

    :cond_2
    move-object/from16 v9, p1

    move-object/from16 v10, p3

    invoke-virtual {v1, v12}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    iget-object v6, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v6}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v6

    invoke-virtual {v3, v12, v6}, Lcom/android/server/locksettings/BiometricDeferredQueue;->addPendingLockoutResetForUser(I[B)V

    iget-object v6, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v16, 0x0

    move-wide/from16 v9, v16

    move-object v3, v11

    move/from16 v11, p2

    :try_start_3
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    move-object v2, v6

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "LockSettingsService"

    const-string/jumbo v7, "verifyChallenge with SP failed."

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    monitor-exit v3

    return-object v6

    :cond_3
    move-object v3, v11

    :cond_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-static/range {p1 .. p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object v4

    invoke-direct {v1, v3, v4, v12}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Landroid/app/admin/PasswordMetrics;I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-ne v3, v14, :cond_6

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    if-lez v3, :cond_6

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v12}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    :cond_6
    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v15, :cond_7

    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/locksettings/LockSettingsService;->storeGatekeeperPasswordTemporarily([B)J

    move-result-wide v3

    new-instance v5, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    invoke-direct {v5}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    invoke-virtual {v5, v3, v4}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->setGatekeeperPasswordHandle(J)Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5

    return-object v5

    :cond_7
    return-object v2

    :catchall_1
    move-exception v0

    :goto_2
    move-object v3, v11

    :goto_3
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3
.end method

.method private spBasedSetLockCredentialInternalLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .locals 14

    move-object v1, p0

    move-object v2, p1

    move/from16 v10, p3

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    const-string v11, "LockSettingsService"

    if-eqz v0, :cond_0

    invoke-direct {p0, v10}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, v10}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "Failed to decrypt child profile key"

    invoke-static {v11, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    const-string v3, "Child profile key not found"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    move-object/from16 v0, p2

    :goto_1
    invoke-virtual {p0, v10}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v12

    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    const/4 v9, 0x0

    move-wide v5, v12

    move-object v7, v0

    move/from16 v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    iget-object v5, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const/4 v6, 0x1

    if-nez v5, :cond_4

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v8

    if-ne v8, v6, :cond_2

    const-string v6, "Failed to enroll: rate limit exceeded."

    invoke-static {v11, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "password change failed"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    :goto_2
    const-string v6, "Failed to enroll: incorrect credential."

    invoke-static {v11, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_4
    invoke-direct {p0, v10, v5}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    invoke-direct {p0, p1, v5, v10}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithAuthTokenLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J

    iget-object v7, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v7, v12, v13, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    move/from16 v7, p4

    invoke-direct {p0, p1, v10, v7}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnChangeIfRequired(Lcom/android/internal/widget/LockscreenCredential;IZ)V

    return v6
.end method

.method private storeGatekeeperPasswordTemporarily([B)J
    .locals 8

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    monitor-enter v2

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v0

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/locksettings/LockSettingsService;J)V

    const-wide/32 v6, 0x927c0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-wide v0

    :cond_1
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    move-wide v0, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/LockscreenCredential;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    nop

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/locksettings/LockSettingsService;->tieManagedProfileLockIfNecessary(ILcom/android/internal/widget/LockscreenCredential;)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockscreenCredential;

    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v5, v8}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v6, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    invoke-direct {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    goto :goto_1

    :cond_3
    const-string v6, "LockSettingsService"

    const-string v7, "Attempt to clear tied challenge, but no password supplied."

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method static timestampToString(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tryDeriveAuthTokenForUnsecuredPrimaryUser(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    const/4 v8, 0x0

    move v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v2, :cond_1

    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrieved auth token for user "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, p1, v2}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    goto :goto_0

    :cond_1
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Auth token not available for user "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unlockChildProfile(IZ)V
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/io/FileNotFoundException;

    const-string v2, "LockSettingsService"

    if-eqz v1, :cond_0

    const-string v1, "Child profile key not found"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    instance-of v1, v0, Landroid/security/keystore/UserNotAuthenticatedException;

    if-eqz v1, :cond_1

    const-string v1, "Parent keystore seems locked, ignoring"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "Failed to decrypt child profile key"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private unlockKeystore([BI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p2, p1, v1}, Landroid/security/Authorization;->onLockScreenEvent(ZI[B[J)I

    return-void
.end method

.method private unlockUser(I[B[B)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unlocking user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with secret only, length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LockSettingsService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v4, Lcom/android/server/locksettings/LockSettingsService$3;

    invoke-direct {v4, p0, v3}, Lcom/android/server/locksettings/LockSettingsService$3;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    :try_start_0
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v5, p1, p2, p3, v4}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    nop

    const-wide/16 v5, 0xf

    :try_start_1
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hasUnifiedChallenge(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    invoke-virtual {v1}, Lcom/android/server/locksettings/BiometricDeferredQueue;->processPendingLockoutResets()V

    :cond_1
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    if-ne v7, p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7}, Lcom/android/server/locksettings/LockSettingsService;->hasUnifiedChallenge(I)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v7

    if-eqz v7, :cond_5

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7, v1}, Lcom/android/server/locksettings/LockSettingsService;->unlockChildProfile(IZ)V

    goto :goto_3

    :cond_5
    :try_start_2
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v7}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v7

    const-string v8, "Cache work profile password failed"

    invoke-static {v2, v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->clearCallingIdentity()J

    move-result-wide v7

    :try_start_3
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v9}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v7, v8}, Lcom/android/server/locksettings/LockSettingsService;->restoreCallingIdentity(J)V

    goto :goto_4

    :catchall_0
    move-exception v1

    invoke-static {v7, v8}, Lcom/android/server/locksettings/LockSettingsService;->restoreCallingIdentity(J)V

    throw v1

    :cond_7
    :goto_4
    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    invoke-virtual {v1}, Lcom/android/server/locksettings/BiometricDeferredQueue;->processPendingLockoutResets()V

    return-void

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private unlockUserKey(I[B[B)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget v2, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/os/storage/IStorageManager;->unlockUserKey(II[B[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to unlock user key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private unlockUserWithToken(J[BI)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v2, :cond_0

    const-string v2, "LockSettingsService"

    const-string v3, "Invalid escrow token supplied"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, v2, p4}, Lcom/android/server/locksettings/LockSettingsService;->loadPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;

    move-result-object v2

    invoke-direct {p0, v0, v2, p4}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Landroid/app/admin/PasswordMetrics;I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Escrow token is disabled on the current user"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateEncryptionPasswordIfNeeded(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 2

    if-nez p2, :cond_3

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->shouldEncryptWithCredentials()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->updateEncryptionPassword(I[B)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->setCredentialRequiredToDecrypt(Z)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getStorageCryptType()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->updateEncryptionPassword(I[B)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private updatePasswordHistory(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 10

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isPattern()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const-string/jumbo v1, "lockscreen.passwordhistory"

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getRequestedPasswordHistoryLength(I)I

    move-result v2

    if-nez v2, :cond_3

    const-string v0, ""

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSalt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Lcom/android/internal/widget/LockscreenCredential;->passwordToHistoryHash([B[B)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v6, "LockSettingsService"

    const-string v7, "Compute new style password hash failed, fallback to legacy style"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/LockscreenCredential;->legacyPasswordToHash([B)Ljava/lang/String;

    move-result-object v5

    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v0, v5

    goto :goto_1

    :cond_5
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/StringJoiner;

    invoke-direct {v8, v6}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    move-object v6, v8

    invoke-virtual {v6, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/4 v8, 0x0

    :goto_0
    add-int/lit8 v9, v2, -0x1

    if-ge v8, v9, :cond_6

    array-length v9, v7

    if-ge v8, v9, :cond_6

    aget-object v9, v7, v8

    invoke-virtual {v6, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v6}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private verifyCredential(ILcom/android/server/locksettings/LockSettingsStorage$CredentialHash;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    :cond_1
    if-eqz p2, :cond_9

    iget-object v0, p2, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v0, v0

    if-eqz v0, :cond_9

    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    const-wide/16 v3, 0x0

    iget-object v5, p2, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v6

    move v2, p1

    invoke-interface/range {v1 .. v6}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LockSettingsService"

    const-string v2, "gatekeeper verify failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v1, Landroid/service/gatekeeper/GateKeeperResponse;->ERROR:Landroid/service/gatekeeper/GateKeeperResponse;

    move-object v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_7

    if-eqz p4, :cond_3

    :try_start_1
    invoke-interface {p4}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->onCredentialVerified()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v4, "LockSettingsService"

    const-string/jumbo v5, "progressCallback throws exception"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    invoke-direct {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V

    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore([BI)V

    const-string v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unlocking user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " with token length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object v3

    invoke-static {p3}, Lcom/android/server/locksettings/LockSettingsService;->secretFromCredential(Lcom/android/internal/widget/LockscreenCredential;)[B

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithSeparatedLock(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    :cond_4
    if-eqz v2, :cond_5

    const/4 v3, 0x0

    invoke-direct {p0, p3, p3, p1, v3}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v3

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p2, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual {p0, v4, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    :cond_6
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-direct {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V

    goto :goto_3

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    :cond_7
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    if-lez v3, :cond_8

    const/16 v3, 0x8

    invoke-virtual {p0, v3, p1}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    :cond_8
    :goto_3
    return-object v1

    :cond_9
    :goto_4
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0
.end method


# virtual methods
.method public checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    throw v0
.end method

.method public checkVoldPassword(I)Z
    .locals 8

    const-string v0, "LockSettingsService"

    iget-boolean v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstCallToVold:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstCallToVold:Z

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->clearPassword()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    return v2

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    const/4 v6, 0x0

    goto :goto_0

    :pswitch_1
    invoke-static {v5}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    goto :goto_1

    :pswitch_2
    invoke-static {v5}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->createPattern(Ljava/lang/String;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    goto :goto_1

    :goto_0
    const-string v7, "Unknown credential type"

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v6, :cond_2

    const/4 v7, 0x0

    invoke-virtual {p0, v6, p1, v7}, Lcom/android/server/locksettings/LockSettingsService;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    goto :goto_2

    :catch_0
    move-exception v6

    const-string v7, "checkVoldPassword failed: "

    invoke-static {v0, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return v2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v5

    :try_start_2
    const-string/jumbo v6, "vold getPassword() failed"

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public closeSession(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->closeSession(Ljava/lang/String;)V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v3, "LockSettingsService"

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v3, v0

    const-string v0, "Current lock settings service state:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "User State:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "User "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v7, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v7

    :try_start_0
    const-string v0, "SP Handle: %x"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Last changed: %s (%x)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "sp-handle-ts"

    const-wide/16 v12, 0x0

    invoke-virtual {v1, v10, v12, v13, v6}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    const-string/jumbo v10, "prev-sp-handle"

    invoke-virtual {v1, v10, v12, v13, v6}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "SID: %x"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v9

    invoke-interface {v9, v6}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v11

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Quality: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->getKeyguardStoredQuality(I)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CredentialType: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v7

    invoke-static {v7}, Lcom/android/server/locksettings/LockSettingsService;->credentialTypeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SeparateChallenge: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Metrics: %s"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "known"

    goto :goto_2

    :cond_1
    const-string/jumbo v8, "unknown"

    :goto_2
    aput-object v8, v7, v11

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "Keys in namespace:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v1, v3}, Lcom/android/server/locksettings/LockSettingsService;->dumpKeystoreKeys(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "Storage:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "StrongAuth:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "RebootEscrow:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/RebootEscrowManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PasswordHandleCount: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public generateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 2

    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    const-string/jumbo v0, "lock_pattern_autolock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public getCredentialType(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordHavePermission(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v0

    return v0
.end method

.method public getCredentialTypeInternal(I)I
    .locals 5

    const/16 v0, -0x270f

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getFrpCredentialType()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    monitor-exit v0

    return v3

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getKeyguardStoredQuality(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/locksettings/LockSettingsService;->pinOrPasswordQualityToCredentialType(I)I

    move-result v4

    monitor-exit v0

    return v4

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getKeyguardStoredQuality(I)I

    move-result v0

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPattern(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    return v1

    :cond_3
    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPassword(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->pinOrPasswordQualityToCredentialType(I)I

    move-result v1

    return v1

    :cond_4
    const/4 v1, -0x1

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readChildProfileLock(I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    array-length v4, v0

    invoke-static {v0, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "profile_key_name_decrypt_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v4

    check-cast v4, Ljavax/crypto/SecretKey;

    const-string v5, "AES/GCM/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/4 v6, 0x2

    new-instance v7, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v8, 0x80

    invoke-direct {v7, v8, v3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v5, v6, v4, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v5, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/widget/LockscreenCredential;->createManagedPassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v7

    invoke-static {v6, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v1, p1, v7}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->storePassword(ILcom/android/internal/widget/LockscreenCredential;)V

    return-object v7

    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Child profile lock file not found"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_2
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;

    invoke-direct {v2, p0, v1}, Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "LockSettingsService"

    const-string v3, " Unable to register death recipient"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_4
    const-string v2, "LockSettingsService"

    const-string v3, "Unable to acquire GateKeeperService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B
    .locals 9

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to get work profile credential"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    return-object v1

    :cond_0
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "LockSettingsService"

    const-string v3, "Synthetic password not enabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    return-object v1

    :cond_1
    :try_start_5
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const/4 v8, 0x0

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v3, :cond_2

    const-string v3, "LockSettingsService"

    const-string v6, "Current credential is incorrect"

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    return-object v1

    :cond_2
    :try_start_6
    iget-object v1, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePasswordHashFactor()[B

    move-result-object v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    throw v0
.end method

.method public getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 2

    invoke-direct {p0, p1, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecoverySecretTypes()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getRecoverySecretTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public getRecoveryStatus()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getRecoveryStatus()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSeparateProfileChallengeEnabled(I)Z
    .locals 1

    const-string/jumbo v0, "lockscreen.profilechallenge"

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrongAuthForUser(I)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    return v0
.end method

.method getSyntheticPasswordHandleLocked(I)J
    .locals 3

    const-string/jumbo v0, "sp-handle"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/PasswordMetrics;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasPendingEscrowToken(I)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasSecureLockScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    return v0
.end method

.method public importKey(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKey(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V

    return-void
.end method

.method protected initializeSyntheticPasswordLocked([BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initialize SyntheticPassword for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Cannot reinitialize SP"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSyntheticPasswordAndSid(Landroid/service/gatekeeper/IGateKeeperService;[BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v3, "initializeSyntheticPasswordLocked returns null auth token"

    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    invoke-virtual {v1, v3, p2, v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J

    move-result-wide v9

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    :cond_2
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    const-wide/16 v6, 0x0

    move-object v5, v0

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p3, v2}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I[B)V

    invoke-virtual {p0, v2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    :goto_1
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    invoke-direct {p0, v9, v10, p3}, Lcom/android/server/locksettings/LockSettingsService;->setSyntheticPasswordHandleLocked(JI)V

    invoke-direct {p0, p3, v0}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    return-object v0
.end method

.method isSyntheticPasswordBasedCredential(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$notifyPasswordChanged$2$LockSettingsService(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportPasswordChanged(I)V

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->reportPasswordChanged(I)V

    return-void
.end method

.method public synthetic lambda$setLockCredentialWithToken$4$LockSettingsService(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    return-void
.end method

.method public synthetic lambda$storeGatekeeperPasswordTemporarily$3$LockSettingsService(J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    monitor-enter v0

    :try_start_0
    const-string v1, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$updateEncryptionPassword$1$LockSettingsService(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->changeEncryptionPassword(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LockSettingsService"

    const-string v3, "Error changing encryption password"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onCleanupUser(I)V
    .locals 2

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 14

    move-object v9, p0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->enforceShell()V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Caller uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lcom/android/server/locksettings/LockSettingsShellCommand;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, v9, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v2, v9, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2, v10, v11}, Lcom/android/server/locksettings/LockSettingsShellCommand;-><init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;II)V

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onStartUser(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(I)V

    return-void
.end method

.method public onUnlockUser(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$1;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method public removeCachedUnifiedChallenge(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->removePassword(I)V

    return-void
.end method

.method public removeGatekeeperPasswordHandle(J)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public reportSuccessfulBiometricUnlock(ZI)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkBiometricPermission()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulBiometricUnlock(ZI)V

    return-void
.end method

.method public requireStrongAuth(II)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    return-void
.end method

.method public resetKeyStore(I)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    const/4 v0, -0x1

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v3

    move v3, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v7, -0x1

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v1, v0}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v9}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v9, "LockSettingsService"

    if-ne v3, v7, :cond_0

    :try_start_0
    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    move-object v6, v0

    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    move v3, v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "More than one managed profile, uid1:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", uid2:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_3

    :goto_2
    const-string v7, "Failed to decrypt child profile key"

    invoke-static {v9, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_3
    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    array-length v5, v0

    const/4 v8, 0x0

    move v9, v8

    :goto_4
    if-ge v9, v5, :cond_4

    aget v10, v0, v9

    sget-object v11, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    array-length v12, v11

    move v13, v8

    :goto_5
    if-ge v13, v12, :cond_3

    aget v14, v11, v13

    nop

    invoke-static {v10, v14}, Landroid/os/UserHandle;->getUid(II)I

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v16, v4

    move/from16 v17, v5

    int-to-long v4, v15

    :try_start_2
    invoke-static {v8, v4, v5}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I

    nop

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, v16

    move/from16 v5, v17

    goto :goto_5

    :cond_3
    move-object/from16 v16, v4

    move/from16 v17, v5

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    move-object/from16 v16, v4

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    const-wide/16 v4, 0x66

    invoke-static {v0, v4, v5}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    if-eq v3, v7, :cond_6

    if-eqz v6, :cond_6

    invoke-virtual {v1, v3, v6}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(ILcom/android/internal/widget/LockscreenCredential;)V

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v4

    :goto_6
    if-eq v3, v7, :cond_8

    if-eqz v6, :cond_8

    invoke-virtual {v1, v3, v6}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(ILcom/android/internal/widget/LockscreenCredential;)V

    :cond_8
    throw v0
.end method

.method public scheduleNonStrongBiometricIdleTimeout(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkBiometricPermission()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->scheduleNonStrongBiometricIdleTimeout(I)V

    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->setBoolean(Ljava/lang/String;ZI)V

    return-void
.end method

.method setKeystorePassword([BI)V
    .locals 0

    invoke-static {p2, p1}, Landroid/security/AndroidKeyStoreMaintenance;->onUserPasswordChanged(I[B)I

    return-void
.end method

.method public setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation requires secure lock screen feature"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "setLockCredential requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->enforceFrpResolved()V

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p2, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    move-object p2, v2

    :cond_4
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_2
    invoke-direct {p0, p3, v4, v3}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(I)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    :cond_6
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->onPostPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 1

    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->setLong(Ljava/lang/String;JI)V

    return-void
.end method

.method public setRecoverySecretTypes([I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setRecoverySecretTypes([I)V

    return-void
.end method

.method public setRecoveryStatus(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setRecoveryStatus(Ljava/lang/String;I)V

    return-void
.end method

.method public setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation requires secure lock screen feature."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p3, :cond_2

    move-object v1, p3

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    :goto_1
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setServerParams([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setServerParams([B)V

    return-void
.end method

.method public setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected shouldMigrateToSyntheticPasswordLocked(I)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/security/keystore/recovery/RecoveryCertPath;",
            "[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

.method public systemReady()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x534e4554

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "28251513"

    aput-object v3, v2, v1

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.software.secure_lock_screen"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateOldData()V

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->initWeaverService()V

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getAuthSecretHal()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->onSystemReady()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->prefetchUser(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getFingerprintManager()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getFaceManager()Landroid/hardware/face/FaceManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/BiometricDeferredQueue;->systemReady(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;)V

    return-void
.end method

.method public tieManagedProfileLockIfNecessary(ILcom/android/internal/widget/LockscreenCredential;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    invoke-direct {p0, v1, p2, p1, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    return-void

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    return-void

    :cond_4
    nop

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->generateRandomProfilePassword()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    :try_start_1
    invoke-direct {p0, v1, p2, p1, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    invoke-virtual {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(ILcom/android/internal/widget/LockscreenCredential;)V

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->storePassword(ILcom/android/internal/widget/LockscreenCredential;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    :cond_5
    return-void

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_6

    :try_start_2
    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    throw v2

    :catch_0
    move-exception v1

    const-string v2, "LockSettingsService"

    const-string v3, "Failed to talk to GateKeeper service"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected tieProfileLockToParent(ILcom/android/internal/widget/LockscreenCredential;)V
    .locals 11

    const-string v0, "NoPadding"

    const-string v1, "GCM"

    const-string/jumbo v2, "profile_key_name_encrypt_"

    :try_start_0
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v4}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v7, v4}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v8, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v8

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "profile_key_name_decrypt_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v7, v4}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v8, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v10, 0x2

    invoke-direct {v8, v10}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v0

    invoke-virtual {v5, v6, v7, v0}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v1, v9, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1

    nop

    nop

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_3
    array-length v1, v6

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    nop

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeChildProfileLock(I[B)V

    return-void

    :cond_0
    :try_start_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid iv length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to concatenate byte arrays"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    nop

    throw v0
    :try_end_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to encrypt key"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public tryUnlockWithCachedUnifiedChallenge(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->retrievePassword(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    nop

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    :cond_0
    return v1

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    :cond_3
    return v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v1
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method public updateEncryptionPassword(I[B)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->hasSecureLockScreen()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation requires the lock screen feature."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v1, "LockSettingsService"

    const-string v2, "Could not find the mount service to update the encryption password"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-eqz p2, :cond_4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/locksettings/LockSettingsService;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public userPresent(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportUnlock(I)V

    return-void
.end method

.method public verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 3

    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "verifyCredential requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    throw v2
.end method

.method public verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 9

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v8, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v8

    if-nez v1, :cond_0

    :try_start_1
    const-string v0, "LockSettingsService"

    const-string v2, "No gatekeeper password for handle"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    move-object v4, v1

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallengeInternal(Landroid/service/gatekeeper/IGateKeeperService;[BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    :goto_0
    monitor-exit v8

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 5

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v3

    invoke-direct {p0, v3, p2, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v3, "LockSettingsService"

    const-string v4, "Failed to decrypt child profile key"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to get tied profile token"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User id must be managed profile with unified lock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
