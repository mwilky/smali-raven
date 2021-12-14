.class public Lcom/android/server/pm/PackageInstallerSession;
.super Landroid/content/pm/IPackageInstallerSession$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageInstallerSession$StreamingException;,
        Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;,
        Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;,
        Lcom/android/server/pm/PackageInstallerSession$UserActionRequirement;,
        Lcom/android/server/pm/PackageInstallerSession$StagedSession;,
        Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;,
        Lcom/android/server/pm/PackageInstallerSession$FileEntry;
    }
.end annotation


# static fields
.field private static final APEX_FILE_EXTENSION:Ljava/lang/String; = ".apex"

.field private static final ATTR_ABI_OVERRIDE:Ljava/lang/String; = "abiOverride"

.field private static final ATTR_APP_ICON:Ljava/lang/String; = "appIcon"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_APP_LABEL:Ljava/lang/String; = "appLabel"

.field private static final ATTR_APP_PACKAGE_NAME:Ljava/lang/String; = "appPackageName"

.field private static final ATTR_CHECKSUM_KIND:Ljava/lang/String; = "checksumKind"

.field private static final ATTR_CHECKSUM_VALUE:Ljava/lang/String; = "checksumValue"

.field private static final ATTR_COMMITTED:Ljava/lang/String; = "committed"

.field private static final ATTR_COMMITTED_MILLIS:Ljava/lang/String; = "committedMillis"

.field private static final ATTR_CREATED_MILLIS:Ljava/lang/String; = "createdMillis"

.field private static final ATTR_DATALOADER_ARGUMENTS:Ljava/lang/String; = "dataLoaderArguments"

.field private static final ATTR_DATALOADER_CLASS_NAME:Ljava/lang/String; = "dataLoaderClassName"

.field private static final ATTR_DATALOADER_PACKAGE_NAME:Ljava/lang/String; = "dataLoaderPackageName"

.field private static final ATTR_DATALOADER_TYPE:Ljava/lang/String; = "dataLoaderType"

.field private static final ATTR_DESTROYED:Ljava/lang/String; = "destroyed"

.field private static final ATTR_INITIATING_PACKAGE_NAME:Ljava/lang/String; = "installInitiatingPackageName"

.field private static final ATTR_INSTALLER_ATTRIBUTION_TAG:Ljava/lang/String; = "installerAttributionTag"

.field private static final ATTR_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = "installerPackageName"

.field private static final ATTR_INSTALLER_UID:Ljava/lang/String; = "installerUid"

.field private static final ATTR_INSTALL_FLAGS:Ljava/lang/String; = "installFlags"

.field private static final ATTR_INSTALL_LOCATION:Ljava/lang/String; = "installLocation"

.field private static final ATTR_INSTALL_REASON:Ljava/lang/String; = "installRason"

.field private static final ATTR_IS_APPLIED:Ljava/lang/String; = "isApplied"

.field private static final ATTR_IS_DATALOADER:Ljava/lang/String; = "isDataLoader"

.field private static final ATTR_IS_FAILED:Ljava/lang/String; = "isFailed"

.field private static final ATTR_IS_READY:Ljava/lang/String; = "isReady"

.field private static final ATTR_LENGTH_BYTES:Ljava/lang/String; = "lengthBytes"

.field private static final ATTR_LOCATION:Ljava/lang/String; = "location"

.field private static final ATTR_METADATA:Ljava/lang/String; = "metadata"

.field private static final ATTR_MODE:Ljava/lang/String; = "mode"

.field private static final ATTR_MULTI_PACKAGE:Ljava/lang/String; = "multiPackage"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_ORIGINATING_PACKAGE_NAME:Ljava/lang/String; = "installOriginatingPackageName"

.field private static final ATTR_ORIGINATING_UID:Ljava/lang/String; = "originatingUid"

.field private static final ATTR_ORIGINATING_URI:Ljava/lang/String; = "originatingUri"

.field private static final ATTR_PARENT_SESSION_ID:Ljava/lang/String; = "parentSessionId"

.field private static final ATTR_PREPARED:Ljava/lang/String; = "prepared"

.field private static final ATTR_REFERRER_URI:Ljava/lang/String; = "referrerUri"

.field private static final ATTR_SEALED:Ljava/lang/String; = "sealed"

.field private static final ATTR_SESSION_ID:Ljava/lang/String; = "sessionId"

.field private static final ATTR_SESSION_STAGE_CID:Ljava/lang/String; = "sessionStageCid"

.field private static final ATTR_SESSION_STAGE_DIR:Ljava/lang/String; = "sessionStageDir"

.field private static final ATTR_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final ATTR_SIZE_BYTES:Ljava/lang/String; = "sizeBytes"

.field private static final ATTR_STAGED_SESSION:Ljava/lang/String; = "stagedSession"

.field private static final ATTR_STAGED_SESSION_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field private static final ATTR_STAGED_SESSION_ERROR_MESSAGE:Ljava/lang/String; = "errorMessage"

.field private static final ATTR_UPDATED_MILLIS:Ljava/lang/String; = "updatedMillis"

.field private static final ATTR_USER_ID:Ljava/lang/String; = "userId"

.field private static final ATTR_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field private static final EMPTY_CHILD_SESSION_ARRAY:[I

.field private static final EMPTY_INSTALLATION_FILE_ARRAY:[Landroid/content/pm/InstallationFile;

.field private static final INCREMENTAL_STORAGE_BLOCKED_TIMEOUT_MS:I = 0x7d0

.field private static final INCREMENTAL_STORAGE_UNHEALTHY_MONITORING_MS:I = 0xea60

.field private static final INCREMENTAL_STORAGE_UNHEALTHY_TIMEOUT_MS:I = 0x1b58

.field private static final LOGD:Z = true

.field private static final MSG_INSTALL:I = 0x3

.field private static final MSG_ON_PACKAGE_INSTALLED:I = 0x4

.field private static final MSG_ON_SESSION_SEALED:I = 0x1

.field private static final MSG_SESSION_VALIDATION_FAILURE:I = 0x5

.field private static final MSG_STREAM_VALIDATE_AND_COMMIT:I = 0x2

.field private static final PROPERTY_NAME_INHERIT_NATIVE:Ljava/lang/String; = "pi.inherit_native_on_dont_kill"

.field private static final REMOVE_MARKER_EXTENSION:Ljava/lang/String; = ".removed"

.field private static final SYSTEM_DATA_LOADER_PACKAGE:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String; = "PackageInstallerSession"

.field private static final TAG_AUTO_REVOKE_PERMISSIONS_MODE:Ljava/lang/String; = "auto-revoke-permissions-mode"

.field static final TAG_CHILD_SESSION:Ljava/lang/String; = "childSession"

.field private static final TAG_GRANTED_RUNTIME_PERMISSION:Ljava/lang/String; = "granted-runtime-permission"

.field static final TAG_SESSION:Ljava/lang/String; = "session"

.field static final TAG_SESSION_CHECKSUM:Ljava/lang/String; = "sessionChecksum"

.field static final TAG_SESSION_CHECKSUM_SIGNATURE:Ljava/lang/String; = "sessionChecksumSignature"

.field static final TAG_SESSION_FILE:Ljava/lang/String; = "sessionFile"

.field private static final TAG_WHITELISTED_RESTRICTED_PERMISSION:Ljava/lang/String; = "whitelisted-restricted-permission"

.field private static final USER_ACTION_NOT_NEEDED:I = 0x0

.field private static final USER_ACTION_PENDING_APK_PARSING:I = 0x2

.field private static final USER_ACTION_REQUIRED:I = 0x1

.field private static final sAddedApkFilter:Ljava/io/FileFilter;

.field private static final sAddedFilter:Ljava/io/FileFilter;

.field private static final sRemovedFilter:Ljava/io/FileFilter;


# instance fields
.field private committedMillis:J

.field final createdMillis:J

.field private final mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mBridges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/FileBridge;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field private mChecksums:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;",
            ">;"
        }
    .end annotation
.end field

.field private mChildSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation
.end field

.field private mClientProgress:F

.field private mCommitted:Z

.field private final mContext:Landroid/content/Context;

.field private volatile mDataLoaderFinished:Z

.field private volatile mDestroyed:Z

.field private final mFds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/RevocableFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mFiles:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/pm/PackageInstallerSession$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFinalMessage:Ljava/lang/String;

.field private mFinalStatus:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerCallback:Landroid/os/Handler$Callback;

.field private mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

.field private mIncrementalProgress:F

.field private mInheritedFilesBase:Ljava/io/File;

.field private mInstallSource:Lcom/android/server/pm/InstallSource;

.field private volatile mInstallerUid:I

.field private mInternalProgress:F

.field private final mLock:Ljava/lang/Object;

.field private final mOriginalInstallerPackageName:Ljava/lang/String;

.field private final mOriginalInstallerUid:I

.field private mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field private mPackageName:Ljava/lang/String;

.field private mParentSessionId:I

.field private mPermissionsManuallyAccepted:Z

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private mPrepared:Z

.field private mProgress:F

.field private final mProgressLock:Ljava/lang/Object;

.field private mRelinquished:Z

.field private mRemoteStatusReceiver:Landroid/content/IntentSender;

.field private mReportedProgress:F

.field private mResolvedBaseFile:Ljava/io/File;

.field private final mResolvedInheritedFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolvedInstructionSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolvedNativeLibPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolvedStagedFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mSealed:Z

.field private final mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

.field private mShouldBeSealed:Z

.field private mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field private final mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

.field final mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

.field private final mStagingManager:Lcom/android/server/pm/StagingManager;

.field private final mTransactionLock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mVerityFoundForApks:Z

.field private mVersionCode:J

.field final params:Landroid/content/pm/PackageInstaller$SessionParams;

.field final sessionId:I

.field final stageCid:Ljava/lang/String;

.field final stageDir:Ljava/io/File;

.field private updatedMillis:J

.field final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/pm/InstallationFile;

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_INSTALLATION_FILE_ARRAY:[Landroid/content/pm/InstallationFile;

    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$1;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sAddedApkFilter:Ljava/io/FileFilter;

    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$2;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$3;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$3;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IIILcom/android/server/pm/InstallSource;Landroid/content/pm/PackageInstaller$SessionParams;JJLjava/io/File;Ljava/lang/String;[Landroid/content/pm/InstallationFile;Landroid/util/ArrayMap;ZZZZ[IIZZZILjava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageInstallerService$InternalCallback;",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/PackageSessionProvider;",
            "Lcom/android/server/pm/SilentUpdatePolicy;",
            "Landroid/os/Looper;",
            "Lcom/android/server/pm/StagingManager;",
            "III",
            "Lcom/android/server/pm/InstallSource;",
            "Landroid/content/pm/PackageInstaller$SessionParams;",
            "JJ",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/InstallationFile;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;",
            ">;ZZZZ[IIZZZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p10

    move-object/from16 v9, p12

    move-wide/from16 v10, p13

    move-object/from16 v12, p17

    move-object/from16 v13, p18

    move-object/from16 v14, p19

    move-object/from16 v15, p20

    move-object/from16 v6, p25

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mTransactionLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    iput v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    iput v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v7, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    iput v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalProgress:F

    iput-boolean v1, v7, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    iput-boolean v1, v7, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    iput-boolean v1, v7, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    iput-boolean v1, v7, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    iput-boolean v1, v7, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    iput-boolean v1, v7, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    iput-boolean v1, v7, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    iput-boolean v1, v7, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$4;

    invoke-direct {v0, v7}, Lcom/android/server/pm/PackageInstallerSession$4;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    iput-object v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mHandlerCallback:Landroid/os/Handler$Callback;

    move-object/from16 v5, p1

    iput-object v5, v7, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    move-object/from16 v4, p2

    iput-object v4, v7, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    move-object/from16 v3, p3

    iput-object v3, v7, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v2, p4

    iput-object v2, v7, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    move-object/from16 v5, p5

    iput-object v5, v7, Lcom/android/server/pm/PackageInstallerSession;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    new-instance v1, Landroid/os/Handler;

    move-object/from16 v5, p6

    invoke-direct {v1, v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, v7, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    move-object/from16 v1, p7

    iput-object v1, v7, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    move/from16 v0, p8

    iput v0, v7, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    move/from16 v5, p9

    iput v5, v7, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    iput v8, v7, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    iput v8, v7, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static/range {p11 .. p11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p11

    check-cast v0, Lcom/android/server/pm/InstallSource;

    iput-object v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iput-object v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerPackageName:Ljava/lang/String;

    iput-object v9, v7, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iput-wide v10, v7, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    iput-wide v10, v7, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    move-wide/from16 v10, p15

    iput-wide v10, v7, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    iput-object v12, v7, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    iput-object v13, v7, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    move/from16 v0, p24

    iput-boolean v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    if-eqz v6, :cond_1

    array-length v0, v6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    move/from16 v17, v0

    aget v0, v6, v1

    iget-object v2, v7, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, p3

    move-object/from16 v2, p4

    move/from16 v0, v17

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move/from16 v2, p26

    iput v2, v7, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    if-eqz v14, :cond_4

    iget-object v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    array-length v1, v14

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->ensureCapacity(I)V

    const/4 v0, 0x0

    array-length v1, v14

    :goto_2
    if-ge v0, v1, :cond_3

    aget-object v3, v14, v0

    move/from16 v17, v1

    iget-object v1, v7, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    invoke-direct {v2, v0, v3}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;-><init>(ILandroid/content/pm/InstallationFile;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    move/from16 v2, p26

    move/from16 v1, v17

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to add a duplicate installation file"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move/from16 v17, v1

    :cond_4
    if-eqz v15, :cond_5

    iget-object v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    :cond_5
    iget-boolean v0, v9, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    if-nez v12, :cond_6

    move v1, v0

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-nez v13, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    if-eq v1, v0, :cond_8

    goto :goto_5

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of stageDir or stageCid stage must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_5
    move/from16 v3, p21

    iput-boolean v3, v7, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    move/from16 v2, p22

    iput-boolean v2, v7, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    move/from16 v1, p23

    iput-boolean v1, v7, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    iget-boolean v0, v9, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_a

    new-instance v16, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p27

    move/from16 v3, p29

    move/from16 v4, p28

    move/from16 v5, p30

    move-object/from16 v6, p31

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;-><init>(Lcom/android/server/pm/PackageInstallerSession;ZZZILjava/lang/String;)V

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    :goto_6
    iput-object v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isSystemDataLoaderInstallation()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v7, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v1, "com.android.permission.USE_SYSTEM_DATA_LOADERS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_7

    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need the com.android.permission.USE_SYSTEM_DATA_LOADERS permission to use system data loaders"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DataLoader installation of APEX modules is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Landroid/os/incremental/IncrementalManager;->isAllowed()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_8

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incremental installation not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_8
    return-void
.end method

.method private abandonNonStaged()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "abandonNonStaged"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertNotChildLocked(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    if-eqz v1, :cond_0

    const-string v1, "PackageInstallerSession"

    const-string v2, "Ignoring abandon after commit relinquished control"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, -0x73

    const-string v1, "Session was abandoned"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->maybeCleanUpChildSessions()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/PackageInstallerSession;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->verify()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertNotLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/StagingManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->maybeCleanUpChildSessions()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->handleSessionSealed()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->handleStreamValidateAndCommit()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/pm/PackageInstallerSession;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->handleInstall()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Landroid/content/Context;Landroid/content/IntentSender;IZILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/android/server/pm/PackageInstallerSession;->sendOnPackageInstalled(Landroid/content/Context;Landroid/content/IntentSender;IZILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->onSessionValidationFailure(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/pm/PackageInstallerSession;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->onVerificationComplete()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/PackageInstallerService$InternalCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->sendUpdateToRemoteStatusReceiver(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/pm/PackageInstallerSession;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->onSystemDataLoaderUnrecoverable()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->getDataLoader(I)Landroid/content/pm/IDataLoader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/PackageSessionProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionSealed()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionValidationFailure(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingStreaming(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/server/pm/PackageInstallerSession;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalProgress:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionsLocked()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->cleanStageDir(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootOrSystem()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertNotChildLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->install()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/IntentSender;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteStatusReceiver:Landroid/content/IntentSender;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/IntentSender;)Landroid/content/IntentSender;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteStatusReceiver:Landroid/content/IntentSender;

    return-object p1
.end method

.method private acquireTransactionLock()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mTransactionLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Concurrent access not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertApkConsistentLocked(Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    invoke-virtual {p2}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/pm/parsing/ApkLite;->getLongVersionCode()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->assertPackageConsistentLocked(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {p2}, Landroid/content/pm/parsing/ApkLite;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$SigningDetails;->signaturesMatchExactly(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " signatures are inconsistent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private assertCallerIsOwnerOrRoot()V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session does not belong to uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private assertCallerIsOwnerOrRootOrSystem()V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session does not belong to uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private assertCanWrite(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "assertCanWrite"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const-string v0, "Reverse mode"

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertShellOrSystemCalling(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot write regular files in a data loader installation session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertNoWriteFileTransfersOpenLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Files still open"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RevocableFileDescriptor;

    invoke-virtual {v1}, Landroid/os/RevocableFileDescriptor;->isRevoked()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/FileBridge;

    invoke-virtual {v1}, Landroid/os/FileBridge;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method private assertNotChildLocked(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can\'t be called on a child session, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " parentId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertNotLocked(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is holding mLock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertPackageConsistentLocked(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " inconsistent with "

    const/4 v2, -0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " specified package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    cmp-long v0, v3, p3

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " version code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not allowed after commit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not allowed after destruction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " before prepared"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertPreparedAndNotSealedLocked(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not allowed after sealing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertSealed(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " before sealing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertShellOrSystemCalling(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " only supported from shell or system"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    nop

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_0
    .end sparse-switch
.end method

.method private static buildAppIconFile(ILjava/io/File;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_icon."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private canBeAddedAsChild(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    if-ne v1, p1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
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

.method private cleanStageDir()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Landroid/os/incremental/IncrementalFileStorages;->cleanUpAndMarkComplete()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private cleanStageDir(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {v1}, Lcom/android/server/pm/PackageInstallerSession;->cleanStageDir()V

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->cleanStageDir()V

    :goto_1
    return-void
.end method

.method private closeInternal(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private computeProgressLocked(Z)V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v0

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalProgress:F

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    sub-float v3, v0, v3

    float-to-double v3, v3

    cmpl-double v3, v3, v1

    if-ltz v3, :cond_2

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v5

    invoke-static {v3, v4, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    sub-float/2addr v0, v3

    float-to-double v3, v0

    cmpl-double v0, v3, v1

    if-ltz v0, :cond_4

    :cond_3
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionProgressChanged(Lcom/android/server/pm/PackageInstallerSession;F)V

    :cond_4
    return-void
.end method

.method private computeUserActionRequirement()I
    .locals 22

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    monitor-exit v2

    return v3

    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v2, v2, 0x400

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    :goto_1
    if-eqz v2, :cond_3

    return v4

    :cond_3
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v6, "android.permission.INSTALL_PACKAGES"

    iget v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v7, "android.permission.INSTALL_SELF_UPDATES"

    iget v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_5

    move v6, v4

    goto :goto_3

    :cond_5
    move v6, v3

    :goto_3
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v8, "android.permission.INSTALL_PACKAGE_UPDATES"

    iget v9, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-virtual {v7, v8, v9}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_6

    move v7, v4

    goto :goto_4

    :cond_6
    move v7, v3

    :goto_4
    iget-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v9, "android.permission.UPDATE_PACKAGES_WITHOUT_USER_ACTION"

    iget v10, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-virtual {v8, v9, v10}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_7

    move v8, v4

    goto :goto_5

    :cond_7
    move v8, v3

    :goto_5
    iget-object v9, v1, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v10, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {v9, v0, v3, v10}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_6

    :cond_8
    move v10, v3

    goto :goto_7

    :cond_9
    :goto_6
    move v10, v4

    :goto_7
    const/4 v11, 0x0

    if-eqz v10, :cond_a

    iget-object v12, v1, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v12, v0}, Lcom/android/server/pm/PackageManagerService;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v12

    goto :goto_8

    :cond_a
    move-object v12, v11

    :goto_8
    nop

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    :cond_b
    nop

    :goto_9
    nop

    if-eqz v10, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    move v13, v4

    goto :goto_a

    :cond_c
    move v13, v3

    :goto_a
    iget v14, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne v9, v14, :cond_d

    move v14, v4

    goto :goto_b

    :cond_d
    move v14, v3

    :goto_b
    if-nez v5, :cond_10

    if-eqz v7, :cond_e

    if-nez v10, :cond_10

    :cond_e
    if-eqz v6, :cond_f

    if-eqz v14, :cond_f

    goto :goto_c

    :cond_f
    move v15, v3

    goto :goto_d

    :cond_10
    :goto_c
    move v15, v4

    :goto_d
    iget v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-nez v4, :cond_11

    const/4 v4, 0x1

    goto :goto_e

    :cond_11
    move v4, v3

    :goto_e
    iget v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    move-object/from16 v18, v0

    const/16 v0, 0x3e8

    if-ne v3, v0, :cond_12

    const/4 v0, 0x1

    goto :goto_f

    :cond_12
    const/4 v0, 0x0

    :goto_f
    if-nez v15, :cond_14

    if-nez v4, :cond_14

    if-nez v0, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_10

    :cond_13
    const/4 v3, 0x0

    goto :goto_11

    :cond_14
    :goto_10
    const/4 v3, 0x1

    :goto_11
    if-eqz v3, :cond_15

    const/16 v16, 0x0

    return v16

    :cond_15
    move/from16 v17, v0

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    move/from16 v19, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v2

    move/from16 v20, v3

    iget v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    move/from16 v21, v4

    iget v4, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->isInstallDisabledForPackage(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_18

    if-eqz v8, :cond_18

    if-nez v13, :cond_17

    if-eqz v14, :cond_18

    :cond_17
    return v2

    :cond_18
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static copyFiles(Ljava/util/List;Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-string v3, ".tmp"

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "PackageInstallerSession"

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    const-string v4, "inherit"

    invoke-static {v4, v3, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Copying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_3

    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x1a4

    invoke-static {v5, v7}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Renaming "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to rename "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to chmod "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to copy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copied "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " files into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createOatDirs(Ljava/util/List;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerException;->from(Lcom/android/server/pm/Installer$InstallerException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v2

    throw v2

    :cond_0
    return-void
.end method

.method private createRemoveSplitMarkerLocked(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->getRemoveMarkerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private createRevocableFdInternal(Landroid/os/RevocableFileDescriptor;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    invoke-virtual {v1, v0}, Ljava/io/FileDescriptor;->setInt$(I)V

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2, v1}, Landroid/os/RevocableFileDescriptor;->init(Landroid/content/Context;Ljava/io/FileDescriptor;)V

    invoke-virtual {p1}, Landroid/os/RevocableFileDescriptor;->getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    return-object v2
.end method

.method private destroyInternal()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v2, :cond_0

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RevocableFileDescriptor;

    invoke-virtual {v2}, Landroid/os/RevocableFileDescriptor;->revoke()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/FileBridge;

    invoke-virtual {v2}, Landroid/os/FileBridge;->forceClose()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v1}, Landroid/os/incremental/IncrementalFileStorages;->cleanUpAndMarkComplete()V

    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_4
    :goto_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->sendUpdateToRemoteStatusReceiver(ILjava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p3, :cond_1

    const-string v3, "android.intent.extra.REPLACING"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerService;->okToSendBroadcasts()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoScrubbed(Z)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v1

    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {v3, v1, v4}, Lcom/android/server/pm/PackageManagerService;->sendSessionCommitBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;I)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v1, p0, v2}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->logDataLoaderInstallationSession(I)V

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private dispatchSessionSealed()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private dispatchSessionValidationFailure(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private dispatchStreamValidateAndCommit()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v12, p4

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/RevocableFileDescriptor;

    invoke-direct {v0}, Landroid/os/RevocableFileDescriptor;-><init>()V

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v14, v0

    move-object v15, v6

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-instance v6, Landroid/os/FileBridge;

    invoke-direct {v6}, Landroid/os/FileBridge;-><init>()V

    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v14, v0

    move-object v15, v6

    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide/from16 v16, v5

    :try_start_2
    new-instance v0, Ljava/io/File;

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v0, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v18, v0

    :try_start_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget v5, Landroid/system/OsConstants;->O_CREAT:I

    sget v6, Landroid/system/OsConstants;->O_WRONLY:I

    or-int/2addr v5, v6

    const/16 v6, 0x1a4

    invoke-direct {v1, v0, v5, v6}, Lcom/android/server/pm/PackageInstallerSession;->openTargetInternal(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object v11, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_1

    cmp-long v0, v12, v5

    if-lez v0, :cond_1

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v8, v8, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {v8}, Lcom/android/internal/content/PackageHelper;->translateAllocateFlags(I)I

    move-result v8

    invoke-virtual {v0, v7, v12, v13, v8}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/io/FileDescriptor;JI)V

    :cond_1
    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    sget v7, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, v3, v4, v7}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    if-eqz p6, :cond_5

    :try_start_4
    new-instance v0, Landroid/system/Int64Ref;

    invoke-direct {v0, v5, v6}, Landroid/system/Int64Ref;-><init>(J)V

    invoke-virtual/range {p6 .. p6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v9, 0x0

    sget-object v10, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda7;

    new-instance v7, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1, v0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/system/Int64Ref;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v19, v7

    move-wide/from16 v7, p4

    move-object/from16 v20, v11

    move-object/from16 v11, v19

    :try_start_5
    invoke-static/range {v5 .. v11}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static/range {p6 .. p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v15}, Landroid/os/FileBridge;->forceClose()V

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    monitor-exit v5

    nop

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_2
    :try_start_8
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v20, v11

    :goto_3
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static/range {p6 .. p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    sget-boolean v6, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v6, :cond_4

    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    invoke-virtual {v15}, Landroid/os/FileBridge;->forceClose()V

    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_4
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    nop

    :try_start_a
    throw v0
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_a} :catch_0

    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_2

    :cond_5
    move-object/from16 v20, v11

    :try_start_c
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_6

    move-object/from16 v5, v20

    invoke-direct {v1, v14, v5}, Lcom/android/server/pm/PackageInstallerSession;->createRevocableFdInternal(Landroid/os/RevocableFileDescriptor;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    :cond_6
    move-object/from16 v5, v20

    invoke-virtual {v15, v5}, Landroid/os/FileBridge;->setTargetFile(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v15}, Landroid/os/FileBridge;->start()V

    invoke-virtual {v15}, Landroid/os/FileBridge;->getClientSocket()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    :catchall_4
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v5

    throw v5

    :catchall_5
    move-exception v0

    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0
.end method

.method private dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mOriginalInstallerUid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerPackageName:Ljava/lang/String;

    const-string v1, "mOriginalInstallerPackageName"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    const-string v1, "installerPackageName"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    const-string v1, "installInitiatingPackageName"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    const-string v1, "installOriginatingPackageName"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mInstallerUid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v0, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "createdMillis"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v0, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "updatedMillis"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v0, p0, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "committedMillis"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    const-string v1, "stageDir"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    const-string v1, "stageCid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "mClientProgress"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "mProgress"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mCommitted"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mSealed"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mPermissionsManuallyAccepted"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mRelinquished"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mDestroyed"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mFds"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mBridges"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mFinalStatus"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    const-string v1, "mFinalMessage"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "params.isMultiPackage"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "params.isStaged"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mParentSessionId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIdsLocked()[I

    move-result-object v0

    const-string v1, "mChildSessionIds"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionApplied()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mStagedSessionApplied"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionFailed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mStagedSessionFailed"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionReady()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mStagedSessionReady"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getStagedSessionErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mStagedSessionErrorCode"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getStagedSessionErrorMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mStagedSessionErrorMessage"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method private extractNativeLibraries(Landroid/content/pm/parsing/PackageLite;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/File;

    const-string v1, "lib"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-nez p4, :cond_0

    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Landroid/content/pm/parsing/PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v3

    move-object v2, v3

    nop

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v3

    invoke-static {v2, v0, p3, v3}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v1, :cond_1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to extract native libraries, res="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    const/16 v4, -0x6e

    const-string v5, "Failed to extract native libraries"

    invoke-direct {v3, v4, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private static filterFiles(Ljava/io/File;[Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p2, v4}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private generateInfoInternal(ZZ)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 4

    new-instance v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->userId:I

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerAttributionTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted:Z

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installScenario:I

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    iput-wide v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    :goto_2
    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installLocation:I

    if-nez p2, :cond_4

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUri:Landroid/net/Uri;

    :cond_4
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUid:I

    if-nez p2, :cond_5

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->referrerUri:Landroid/net/Uri;

    :cond_5
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->grantedRuntimePermissions:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->whitelistedRestrictedPermissions:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->autoRevokePermissionsMode:I

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage:Z

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged:Z

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackDataPolicy:I

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIdsLocked()[I

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionApplied()Z

    move-result v2

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied:Z

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionReady()Z

    move-result v2

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady:Z

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionFailed()Z

    move-result v2

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed:Z

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getStagedSessionErrorCode()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getStagedSessionErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->setStagedSessionErrorCode(ILjava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    iput-wide v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->createdMillis:J

    iget-wide v2, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    iput-wide v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->updatedMillis:J

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->requireUserAction:I

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getAddedApksLocked()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getNamesLocked()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    sget-object v2, Lcom/android/server/pm/PackageInstallerSession;->sAddedApkFilter:Ljava/io/FileFilter;

    invoke-static {v1, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->filterFiles(Ljava/io/File;[Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private getApksSize(Ljava/lang/String;)J
    .locals 10

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPath()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    return-wide v1

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    const-string v5, ".apk"

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1

    return-wide v1

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3

    return-wide v1

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_5

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-wide v6
.end method

.method private getChildSessionIdsLocked()[I
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    return-object v1

    :cond_0
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getChildSessionsLocked()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getDataLoader(I)Landroid/content/pm/IDataLoader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getDataLoaderManager()Landroid/content/pm/DataLoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/DataLoaderManager;->getDataLoader(I)Landroid/content/pm/IDataLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x14

    const-string v3, "Failure to obtain data loader"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private getDataLoaderManager()Landroid/content/pm/DataLoaderManager;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/DataLoaderManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/DataLoaderManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x14

    const-string v3, "Failed to find data loader manager service"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/pm/InstallationFile;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->getIndex()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->getFile()Landroid/content/pm/InstallationFile;

    move-result-object v4

    aput-object v4, v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getNamesLocked()[Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private getOrParsePackageLiteLocked(Ljava/io/File;I)Landroid/content/pm/parsing/PackageLite;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    nop

    invoke-static {v0, p1, p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/PackageLite;

    return-object v2

    :cond_1
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/16 v3, -0x6e

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " outside base: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid path (was relative) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getRemoveMarkerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid marker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getRemovedFilesLocked()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getNamesLocked()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    sget-object v2, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    invoke-static {v1, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->filterFiles(Ljava/io/File;[Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private handleInstall()V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x70

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x400000

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/16 v3, -0x16

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v5, v5, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/PackageInstallerSession;->isApexUpdateAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update of APEX package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not allowed for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/android/server/pm/PackageInstallerSession;->onSessionValidationFailure(ILjava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/StagingManager;->getSessionIdByPackageName(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Staged session "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " already contains "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/android/server/pm/PackageInstallerSession;->onSessionValidationFailure(ILjava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_3
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/StagingManager;->commitSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    const-string v0, "Session staged"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->verify()V

    return-void
.end method

.method private handleSessionSealed()V
    .locals 1

    const-string v0, "dispatchSessionSealed"

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertSealed(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionSealedBlocking(Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchStreamValidateAndCommit()V

    return-void
.end method

.method private handleStreamValidateAndCommit()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->streamValidateAndCommit()Z

    move-result v2
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionsLocked()Ljava/util/List;

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    add-int/lit8 v5, v2, -0x1

    :goto_1
    if-ltz v5, :cond_1

    :try_start_2
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {v6}, Lcom/android/server/pm/PackageInstallerSession;->streamValidateAndCommit()Z

    move-result v7

    and-int/2addr v1, v7

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_1

    nop

    goto :goto_2

    :catch_1
    move-exception v6

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v6

    :cond_0
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->onSessionValidationFailure(Lcom/android/server/pm/PackageManagerException;)Lcom/android/server/pm/PackageManagerException;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_3
    if-ltz v5, :cond_2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {v6, v0}, Lcom/android/server/pm/PackageInstallerSession;->onSessionValidationFailure(Lcom/android/server/pm/PackageManagerException;)Lcom/android/server/pm/PackageManagerException;

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :cond_2
    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private inheritFileLocked(Ljava/io/File;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->maybeInheritFsveritySignatureLocked(Ljava/io/File;)V

    nop

    invoke-static {p1}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->maybeInheritFsveritySignatureLocked(Ljava/io/File;)V

    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/ApkChecksums;->findDigestsForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/android/server/pm/ApkChecksums;->findSignatureForDigests(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private install()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->installNonStaged()V
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->onSessionInstallationFailure(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private installNonStaged()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->makeInstallParams()Lcom/android/server/pm/PackageManagerService$InstallParams;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionsLocked()Ljava/util/List;

    move-result-object v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageInstallerSession;

    nop

    :try_start_1
    invoke-direct {v6}, Lcom/android/server/pm/PackageInstallerSession;->makeInstallParams()Lcom/android/server/pm/PackageManagerService$InstallParams;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v7

    move-object v4, v7

    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteStatusReceiver:Landroid/content/IntentSender;

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z

    move-result v9

    iget v10, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    const/4 v11, 0x0

    iget v12, v4, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static/range {v6 .. v14}, Lcom/android/server/pm/PackageInstallerSession;->sendOnPackageInstalled(Landroid/content/Context;Landroid/content/IntentSender;IZILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    :cond_2
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v0, v1}, Lcom/android/server/pm/PackageManagerService;->installStage(Lcom/android/server/pm/PackageManagerService$InstallParams;Ljava/util/List;)V

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService;->installStage(Lcom/android/server/pm/PackageManagerService$InstallParams;)V

    :goto_2
    return-void

    :cond_4
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x6e

    const-string v3, "Session should contain at least one apk session for installation"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private isApexUpdateAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/PackageManagerService;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v0

    const-string v2, "PackageInstallerSession"

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getModulesInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v3, "No modules installer defined"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_1
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowedVendorApexes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not allowed to be updated"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isDataLoaderInstallation()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFsVerityRequiredForApk(Ljava/io/File;Ljava/io/File;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mVerityFoundForApks:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mVerityFoundForApks:Z

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x76

    const-string v4, "Previously staged apk is missing fs-verity signature"

    invoke-direct {v1, v2, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_4
    return v1
.end method

.method private isIncrementalInstallation()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isIncrementalInstallationAllowed(Ljava/lang/String;)Z
    .locals 4

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    :goto_1
    return v2
.end method

.method private isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z
    .locals 4

    const-string v0, "isInstallerDeviceOwnerOrAffiliatedProfileOwner"

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertNotLocked(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertSealed(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-virtual {v0, v1, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->canSilentlyInstallPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private static isLinkPossible(Ljava/util/List;Ljava/io/File;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v4

    iget-wide v5, v4, Landroid/system/StructStat;->st_dev:J

    iget-wide v7, v1, Landroid/system/StructStat;->st_dev:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to detect if linking possible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageInstallerSession"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static isSecureFrpInstallAllowed(Landroid/content/Context;I)Z
    .locals 5

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    const-string v4, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private static isStagedSessionStateValid(ZZZ)Z
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    if-eqz p2, :cond_3

    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    if-nez p0, :cond_4

    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isStreamingInstallation()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSystemDataLoaderInstallation()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$containsApkSession$3(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$onSystemDataLoaderUnrecoverable$1(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .locals 7

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to uninstall package with failed dataloader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageInstallerSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic lambda$verifyNonStaged$2(Lcom/android/server/pm/PackageInstallerSession;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    return v0
.end method

.method private linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/incremental/IncrementalFileStorages;->makeLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/Installer;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed linkOrCreateDir("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private linkFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-static {v1, p3}, Lcom/android/server/pm/PackageInstallerSession;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/pm/PackageInstallerSession;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Linked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " files into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageInstallerSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logDataLoaderInstallationSession(I)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    const-string v1, ""

    move-object v4, v1

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    :goto_1
    const/16 v2, 0x107

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v3

    iget-wide v5, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    sub-long v5, v11, v5

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->getApksSize(Ljava/lang/String;)J

    move-result-wide v8

    move v7, p1

    move v10, v1

    invoke-static/range {v2 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZLjava/lang/String;JIJI)V

    return-void
.end method

.method private makeInstallParams()Lcom/android/server/pm/PackageManagerService$InstallParams;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    const/16 v2, -0x6e

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-eqz v1, :cond_5

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "Apex package should have been installed by apexd"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->sendUpdateToRemoteStatusReceiver(ILjava/lang/String;Landroid/os/Bundle;)V

    return-object v2

    :cond_0
    new-instance v6, Lcom/android/server/pm/PackageInstallerSession$6;

    invoke-direct {v6, p0}, Lcom/android/server/pm/PackageInstallerSession$6;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v3, 0x200000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-nez v2, :cond_3

    const-string v2, "PackageInstallerSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Don\'t have a valid PackageLite."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->getOrParsePackageLiteLocked(Ljava/io/File;I)Landroid/content/pm/parsing/PackageLite;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    new-instance v0, Lcom/android/server/pm/PackageManagerService$InstallParams;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v10, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v11, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget-object v12, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    move-object v3, v0

    move-object v9, v1

    invoke-direct/range {v3 .. v12}, Lcom/android/server/pm/PackageManagerService$InstallParams;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;Landroid/os/UserHandle;Landroid/content/pm/PackageParser$SigningDetails;ILandroid/content/pm/parsing/PackageLite;)V

    monitor-exit v2

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_5
    :try_start_3
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Session not sealed"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_6
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Session destroyed"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method private makeVerificationParamsLocked()Lcom/android/server/pm/PackageManagerService$VerificationParams;
    .locals 15

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$5;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageInstallerSession$5;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v12, v1

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    move-object v12, v1

    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionParams;->copy()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v13

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v1, :cond_2

    iget v1, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :cond_2
    new-instance v14, Lcom/android/server/pm/PackageManagerService$VerificationParams;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v10, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget-object v11, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    move-object v1, v14

    move-object v3, v12

    move-object v5, v0

    move-object v6, v13

    invoke-direct/range {v1 .. v11}, Lcom/android/server/pm/PackageManagerService$VerificationParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;ILandroid/content/pm/PackageParser$SigningDetails;ILandroid/content/pm/parsing/PackageLite;)V

    return-object v14
.end method

.method private markAsSealed(Landroid/content/IntentSender;Z)Z
    .locals 7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commit of session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertNoWriteFileTransfersOpenLocked()V

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "secure_frp_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageInstallerSession;->isSecureFrpInstallAllowed(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Can\'t install packages while in secure FRP"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_1
    if-eqz p2, :cond_4

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.INSTALL_PACKAGES"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    if-eq v4, v5, :cond_3

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Session has not been transferred"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    if-ne v4, v5, :cond_6

    :goto_2
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteStatusReceiver:Landroid/content/IntentSender;

    iget-boolean v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-eqz v4, :cond_5

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :cond_5
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->sealLocked()V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v0

    return v2

    :catch_0
    move-exception v2

    monitor-exit v0

    return v3

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Session has been transferred"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private mayInheritNativeLibs()Z
    .locals 3

    const-string v0, "pi.inherit_native_on_dont_kill"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private maybeCleanUpChildSessions()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {v3}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    const/16 v4, -0x73

    const/4 v5, 0x0

    const-string v6, "Session was abandoned because the parent session is abandoned"

    invoke-direct {v3, v4, v6, v5}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private maybeInheritFsveritySignatureLocked(Ljava/io/File;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static maybeRenameFile(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x6e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not rename file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeStageDexMetadataLocked(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    invoke-static {p1}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/dex/DexMetadataHelper;->buildDexMetadataPathForApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V

    nop

    invoke-static {}, Landroid/content/pm/dex/DexMetadataHelper;->isFsVerityRequired()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->maybeStageFsveritySignatureLocked(Ljava/io/File;Ljava/io/File;Z)V

    return-void

    :cond_1
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid filename: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private maybeStageDigestsLocked(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->getChecksums()[Landroid/content/pm/Checksum;

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/ApkChecksums;->buildDigestsPathForApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v4, v1}, Lcom/android/server/pm/ApkChecksums;->writeChecksums(Ljava/io/OutputStream;[Landroid/content/pm/Checksum;)V

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->getSignature()[B

    move-result-object v5

    if-eqz v5, :cond_2

    array-length v6, v5

    if-lez v6, :cond_2

    invoke-static {v1, v5}, Lcom/android/server/pm/ApkChecksums;->verifySignature([Landroid/content/pm/Checksum;[B)[Ljava/security/cert/Certificate;

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {p0, v2, v6, v7}, Lcom/android/server/pm/PackageInstallerSession;->storeBytesToInstallationFile(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-direct {p0, v3, v3}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V

    if-eqz v5, :cond_4

    array-length v6, v5

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/android/server/pm/ApkChecksums;->buildSignaturePathForDigests(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    nop

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v8, v5}, Lcom/android/server/pm/PackageInstallerSession;->storeBytesToInstallationFile(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-direct {p0, v7, v7}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    nop

    return-void

    :cond_4
    :goto_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    :try_start_4
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v4

    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    const/16 v6, -0x67

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to verify digests\' signature for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_1
    move-exception v4

    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    const/4 v6, -0x4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to store digests for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private maybeStageFsveritySignatureLocked(Ljava/io/File;Ljava/io/File;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    :goto_0
    nop

    return-void

    :cond_1
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x76

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing corresponding fs-verity signature to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private onSessionInstallationFailure(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Install of session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageInstallerSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private onSessionValidationFailure(Lcom/android/server/pm/PackageManagerException;)Lcom/android/server/pm/PackageManagerException;
    .locals 2

    iget v0, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {p1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->onSessionValidationFailure(ILjava/lang/String;)V

    return-object p1
.end method

.method private onSessionValidationFailure(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->cleanStageDir()V

    :cond_0
    return-void
.end method

.method private onSessionVerificationFailure(ILjava/lang/String;)V
    .locals 3

    invoke-static {p1, p2}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to verify session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageInstallerSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/StagingManager;->notifyVerificationComplete(Lcom/android/server/pm/StagingManager$StagedSession;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method private onSystemDataLoaderUnrecoverable()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v1}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onVerificationComplete()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/StagingManager;->notifyPreRebootVerification_Apk_Complete(Lcom/android/server/pm/StagingManager$StagedSession;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->install()V

    return-void
.end method

.method private openReadInternalLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private openTargetInternal(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/system/ErrnoException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v1
.end method

.method private parseApkLite()Landroid/content/pm/parsing/PackageLite;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    const-string v0, "PackageInstallerSession"

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inherited files: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "mInheritedFilesBase == null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->isLinkPossible(Ljava/util/List;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/io/File;

    const-string v4, "oat"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    invoke-direct {p0, v4, v3}, Lcom/android/server/pm/PackageInstallerSession;->createOatDirs(Ljava/util/List;Ljava/io/File;)V

    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-ltz v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-lt v5, v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v7}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    :cond_4
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    goto :goto_1

    :cond_5
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping native library creation for linking due to invalid path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/pm/PackageInstallerSession;->linkFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V

    goto :goto_3

    :cond_7
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->copyFiles(Ljava/util/List;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x4

    const-string v3, "Failed to inherit existing install"

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->getOrParsePackageLiteLocked(Ljava/io/File;I)Landroid/content/pm/parsing/PackageLite;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method private prepareDataLoaderLocked()Z
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, v8, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;

    move-result-object v10

    array-length v0, v10

    const/4 v9, 0x0

    move v2, v9

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, v10, v2

    sget-object v4, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    new-instance v5, Ljava/io/File;

    iget-object v6, v8, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v3}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/content/pm/InstallationFile;->getData()Landroid/content/pm/InstallationFileParcel;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    new-instance v5, Ljava/io/File;

    iget-object v6, v8, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v3}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ".removed"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, v8, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v11, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v0

    xor-int/2addr v0, v1

    move/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isSystemDataLoaderInstallation()Z

    move-result v15

    new-instance v13, Lcom/android/server/pm/PackageInstallerSession$7;

    move-object v1, v13

    move-object/from16 v2, p0

    move v3, v15

    move/from16 v4, v19

    move-object v5, v14

    move-object v6, v11

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageInstallerSession$7;-><init>(Lcom/android/server/pm/PackageInstallerSession;ZZLjava/util/List;Landroid/content/pm/DataLoaderParams;Ljava/util/List;)V

    const/16 v1, -0x14

    if-nez v19, :cond_7

    iget-object v0, v8, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPerUidReadTimeouts()[Landroid/os/incremental/PerUidReadTimeouts;

    move-result-object v20

    new-instance v0, Landroid/os/incremental/StorageHealthCheckParams;

    invoke-direct {v0}, Landroid/os/incremental/StorageHealthCheckParams;-><init>()V

    move-object v7, v0

    const/16 v0, 0x7d0

    iput v0, v7, Landroid/os/incremental/StorageHealthCheckParams;->blockedTimeoutMs:I

    const/16 v0, 0x1b58

    iput v0, v7, Landroid/os/incremental/StorageHealthCheckParams;->unhealthyTimeoutMs:I

    const v0, 0xea60

    iput v0, v7, Landroid/os/incremental/StorageHealthCheckParams;->unhealthyMonitoringMs:I

    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$8;

    invoke-direct {v0, v8, v15}, Lcom/android/server/pm/PackageInstallerSession$8;-><init>(Lcom/android/server/pm/PackageInstallerSession;Z)V

    move/from16 v21, v15

    move-object v15, v0

    :try_start_0
    iget-object v0, v8, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v8, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget v3, v8, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {v0, v2, v9, v3}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v0, :cond_5

    :try_start_1
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v9, v7

    move-object/from16 v24, v10

    move-object/from16 v22, v11

    move-object/from16 v25, v12

    move-object/from16 v26, v14

    goto/16 :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v22, v11

    move-object v11, v2

    :try_start_2
    iget-object v2, v8, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    if-nez v2, :cond_6

    :try_start_3
    iget-object v2, v8, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    iget-object v3, v8, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    new-instance v4, Lcom/android/server/pm/PackageInstallerSession$9;

    invoke-direct {v4, v8}, Lcom/android/server/pm/PackageInstallerSession$9;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v23, v9

    move-object v9, v2

    move-object/from16 v24, v10

    move-object v10, v3

    move-object/from16 v25, v12

    move-object/from16 v12, v22

    move-object/from16 v26, v14

    move-object v14, v7

    move-object/from16 v16, v26

    move-object/from16 v17, v20

    move-object/from16 v18, v4

    :try_start_4
    invoke-static/range {v9 .. v18}, Landroid/os/incremental/IncrementalFileStorages;->initialize(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;Ljava/util/List;[Landroid/os/incremental/PerUidReadTimeouts;Landroid/content/pm/IPackageLoadingProgressCallback;)Landroid/os/incremental/IncrementalFileStorages;

    move-result-object v2

    iput-object v2, v8, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v9, v7

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v9, v7

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v26, v14

    move-object v9, v7

    goto :goto_4

    :cond_6
    move/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v26, v14

    move-object/from16 v3, v22

    move-object v4, v13

    move-object v5, v7

    move-object v6, v15

    move-object v9, v7

    move-object/from16 v7, v20

    :try_start_5
    invoke-virtual/range {v2 .. v7}, Landroid/os/incremental/IncrementalFileStorages;->startLoading(Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    return v23

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v9, v7

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v26, v14

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v9, v7

    move-object/from16 v24, v10

    move-object/from16 v22, v11

    move-object/from16 v25, v12

    move-object/from16 v26, v14

    :goto_4
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_7
    move/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v22, v11

    move-object/from16 v25, v12

    move-object/from16 v26, v14

    move/from16 v21, v15

    const-wide/16 v2, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getDataLoaderManager()Landroid/content/pm/DataLoaderManager;

    move-result-object v27

    iget v0, v8, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v29

    const-wide/16 v30, 0x0

    move/from16 v28, v0

    move-object/from16 v32, v13

    invoke-virtual/range {v27 .. v32}, Landroid/content/pm/DataLoaderManager;->bindToDataLoader(ILandroid/content/pm/DataLoaderParamsParcel;JLandroid/content/pm/IDataLoaderStatusListener;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v23

    :cond_8
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v4, "Failed to initialize data loader"

    invoke-direct {v0, v1, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private prepareForVerification()Lcom/android/server/pm/PackageManagerService$VerificationParams;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    const-string v0, "makeSessionActive"

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertNotLocked(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->computeUserActionRequirement()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntent()V

    return-object v3

    :cond_0
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    const/16 v6, -0x6e

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->parseApkLite()Landroid/content/pm/parsing/PackageLite;

    move-result-object v5

    if-eqz v5, :cond_2

    iput-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/high16 v7, 0x3f000000    # 0.5f

    :try_start_1
    iput v7, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v7, v7, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->mayInheritNativeLibs()Z

    move-result v8

    invoke-direct {p0, v2, v6, v7, v8}, Lcom/android/server/pm/PackageInstallerSession;->extractNativeLibraries(Landroid/content/pm/parsing/PackageLite;Ljava/io/File;Ljava/lang/String;Z)V

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-virtual {v5}, Landroid/content/pm/parsing/PackageLite;->getTargetSdk()I

    move-result v6

    const/16 v7, 0x1d

    if-ge v6, v7, :cond_1

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntent()V

    monitor-exit v4

    return-object v3

    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v6, v6, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v6, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :cond_2
    :goto_0
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/pm/SilentUpdatePolicy;->isSilentUpdateAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntent()V

    return-object v3

    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/SilentUpdatePolicy;->track(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->makeVerificationParamsLocked()Lcom/android/server/pm/PackageManagerService$VerificationParams;

    move-result-object v3

    monitor-exit v2

    return-object v3

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    :cond_5
    :try_start_6
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Session not sealed"

    invoke-direct {v2, v6, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_6
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Session destroyed"

    invoke-direct {v2, v6, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_7
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Session relinquished"

    invoke-direct {v2, v6, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2
.end method

.method public static readFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;Ljava/io/File;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;)Lcom/android/server/pm/PackageInstallerSession;
    .locals 73
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-string v2, "sessionId"

    invoke-interface {v0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    const-string v3, "userId"

    invoke-interface {v0, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    const-string v3, "installerPackageName"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "installerAttributionTag"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v3, 0x2000

    move-object/from16 v10, p3

    invoke-virtual {v10, v12, v3, v13}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v3

    const-string v4, "installerUid"

    invoke-interface {v0, v1, v4, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v35

    nop

    const-string v3, "installInitiatingPackageName"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    nop

    const-string v3, "installOriginatingPackageName"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "createdMillis"

    invoke-interface {v0, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v36

    const-string v3, "updatedMillis"

    invoke-interface {v0, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v38

    const-string v3, "committedMillis"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v3, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v40

    const-string v3, "sessionStageDir"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v3

    goto :goto_0

    :cond_0
    move-object/from16 v20, v1

    :goto_0
    const-string v3, "sessionStageCid"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    const-string v3, "prepared"

    const/4 v4, 0x1

    invoke-interface {v0, v1, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v43

    const-string v3, "committed"

    const/4 v5, 0x0

    invoke-interface {v0, v1, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v44

    const-string v3, "destroyed"

    invoke-interface {v0, v1, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v45

    const-string v3, "sealed"

    invoke-interface {v0, v1, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v46

    const-string v3, "parentSessionId"

    const/4 v6, -0x1

    invoke-interface {v0, v1, v3, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v47

    new-instance v3, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v3, v6}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    const-string v14, "multiPackage"

    invoke-interface {v0, v1, v14, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    const-string v14, "stagedSession"

    invoke-interface {v0, v1, v14, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    const-string v14, "mode"

    invoke-interface {v0, v1, v14}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const-string v4, "installFlags"

    invoke-interface {v0, v1, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const-string v4, "installLocation"

    invoke-interface {v0, v1, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    const-string v4, "sizeBytes"

    invoke-interface {v0, v1, v4}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v3, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-string v4, "appPackageName"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const-string v4, "appIcon"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBitmapAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    const-string v4, "appLabel"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    const-string v4, "originatingUri"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    nop

    const-string v4, "originatingUid"

    const/4 v5, -0x1

    invoke-interface {v0, v1, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    const-string v4, "referrerUri"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    const-string v4, "abiOverride"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    const-string v4, "volumeUuid"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    const-string v4, "installRason"

    invoke-interface {v0, v1, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const-string v4, "isDataLoader"

    const/4 v5, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Landroid/content/pm/DataLoaderParams;

    const-string v5, "dataLoaderType"

    invoke-interface {v0, v1, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    new-instance v6, Landroid/content/ComponentName;

    const-string v1, "dataLoaderPackageName"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v7

    const-string v7, "dataLoaderClassName"

    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dataLoaderArguments"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v6, v1}, Landroid/content/pm/DataLoaderParams;-><init>(ILandroid/content/ComponentName;Ljava/lang/String;)V

    iput-object v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    goto :goto_1

    :cond_1
    move-object/from16 v21, v7

    :goto_1
    move-object/from16 v1, p6

    invoke-static {v15, v1}, Lcom/android/server/pm/PackageInstallerSession;->buildAppIconFile(ILjava/io/File;)Ljava/io/File;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {v48 .. v48}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual/range {v48 .. v48}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    :cond_2
    const-string v4, "isReady"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v0, v6, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    const-string v4, "isFailed"

    invoke-interface {v0, v6, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    const-string v1, "isApplied"

    invoke-interface {v0, v6, v1, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const-string v10, "errorCode"

    invoke-interface {v0, v6, v10, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v49

    const-string v5, "errorMessage"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    invoke-static {v7, v1, v4}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionStateValid(ZZZ)Z

    move-result v5

    if-eqz v5, :cond_17

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v5

    const/4 v5, 0x3

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v51, v22

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v52, v22

    new-instance v22, Landroid/util/ArrayMap;

    invoke-direct/range {v22 .. v22}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v53, v22

    new-instance v22, Landroid/util/ArrayMap;

    invoke-direct/range {v22 .. v22}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v54, v22

    move/from16 v55, v1

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    :goto_2
    move/from16 v22, v4

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    move/from16 v56, v4

    move/from16 v23, v7

    const/4 v7, 0x1

    if-eq v4, v7, :cond_f

    const/4 v4, 0x3

    move/from16 v16, v13

    move/from16 v13, v56

    if-ne v13, v4, :cond_4

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v56, v1

    move-object/from16 v17, v8

    move/from16 v34, v13

    move/from16 v57, v15

    move-object/from16 v1, v51

    move-object/from16 v15, v52

    move-object/from16 v13, v53

    move-object/from16 v8, v54

    goto/16 :goto_a

    :cond_4
    :goto_3
    if-eq v13, v4, :cond_e

    const/4 v4, 0x4

    if-ne v13, v4, :cond_5

    move/from16 v56, v1

    move-object/from16 v25, v2

    move-object/from16 v17, v8

    move/from16 v57, v15

    move-object/from16 v1, v51

    move-object/from16 v15, v52

    move-object/from16 v13, v53

    move-object/from16 v8, v54

    move-object/from16 v51, v14

    const/4 v14, 0x0

    goto/16 :goto_9

    :cond_5
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "granted-runtime-permission"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "name"

    if-eqz v4, :cond_6

    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    move/from16 v56, v1

    const-string v1, "whitelisted-restricted-permission"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "auto-revoke-permissions-mode"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    invoke-interface {v0, v1, v14}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v5, v4

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v1, "childSession"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, -0x1

    const/4 v4, 0x0

    invoke-interface {v0, v4, v2, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v1, v51

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    move-object/from16 v1, v51

    :goto_5
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v25, v2

    const-string v2, "sessionFile"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "signature"

    if-eqz v2, :cond_a

    new-instance v2, Landroid/content/pm/InstallationFile;

    move/from16 v33, v5

    const-string v5, "location"

    move/from16 v34, v13

    move-object/from16 v51, v14

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v0, v14, v5, v13}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v27

    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move/from16 v57, v15

    const-wide/16 v14, -0x1

    const-string v5, "lengthBytes"

    const/4 v13, 0x0

    invoke-interface {v0, v13, v5, v14, v15}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v29

    const-string v5, "metadata"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v31

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v32

    move-object/from16 v26, v2

    invoke-direct/range {v26 .. v32}, Landroid/content/pm/InstallationFile;-><init>(ILjava/lang/String;J[B[B)V

    move-object/from16 v15, v52

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    move/from16 v33, v5

    move/from16 v34, v13

    move-object/from16 v51, v14

    move/from16 v57, v15

    move-object/from16 v15, v52

    :goto_6
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "sessionChecksum"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Landroid/content/pm/Checksum;

    const-string v13, "checksumKind"

    move-object/from16 v17, v8

    const/4 v8, 0x0

    const/4 v14, 0x0

    invoke-interface {v0, v8, v13, v14}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13

    const-string v8, "checksumValue"

    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v5, v13, v8}, Landroid/content/pm/Checksum;-><init>(I[B)V

    move-object/from16 v13, v53

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_b

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v8, v26

    invoke-virtual {v13, v2, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    move-object/from16 v17, v8

    move-object/from16 v13, v53

    const/4 v14, 0x0

    :goto_7
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "sessionChecksumSignature"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v8, v54

    invoke-virtual {v8, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_d
    move-object/from16 v8, v54

    :goto_8
    move-object/from16 v54, v8

    move-object/from16 v53, v13

    move-object/from16 v52, v15

    move/from16 v13, v16

    move-object/from16 v8, v17

    move/from16 v4, v22

    move/from16 v7, v23

    move-object/from16 v2, v25

    move/from16 v5, v33

    move-object/from16 v14, v51

    move/from16 v15, v57

    move-object/from16 v51, v1

    move/from16 v1, v56

    goto/16 :goto_2

    :cond_e
    move/from16 v56, v1

    move-object/from16 v25, v2

    move-object/from16 v17, v8

    move/from16 v34, v13

    move/from16 v57, v15

    move-object/from16 v1, v51

    move-object/from16 v15, v52

    move-object/from16 v13, v53

    move-object/from16 v8, v54

    move-object/from16 v51, v14

    const/4 v14, 0x0

    :goto_9
    move-object/from16 v54, v8

    move-object/from16 v53, v13

    move-object/from16 v52, v15

    move/from16 v13, v16

    move-object/from16 v8, v17

    move/from16 v4, v22

    move/from16 v7, v23

    move-object/from16 v2, v25

    move-object/from16 v14, v51

    move/from16 v15, v57

    move-object/from16 v51, v1

    move/from16 v1, v56

    goto/16 :goto_2

    :cond_f
    move-object/from16 v17, v8

    move/from16 v16, v13

    move/from16 v57, v15

    move-object/from16 v15, v52

    move-object/from16 v13, v53

    move-object/from16 v8, v54

    move/from16 v34, v56

    move/from16 v56, v1

    move-object/from16 v1, v51

    :goto_a
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_10

    sget-object v2, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    invoke-interface {v10, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    :cond_10
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_11

    iput-object v6, v3, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    :cond_11
    iput v5, v3, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_13

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    :goto_b
    if-ge v4, v7, :cond_12

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_12
    goto :goto_c

    :cond_13
    sget-object v2, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    :goto_c
    const/4 v4, 0x0

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_14

    sget-object v7, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_INSTALLATION_FILE_ARRAY:[Landroid/content/pm/InstallationFile;

    invoke-interface {v15, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    check-cast v4, [Landroid/content/pm/InstallationFile;

    move-object/from16 v51, v4

    goto :goto_d

    :cond_14
    move-object/from16 v51, v4

    :goto_d
    const/4 v4, 0x0

    invoke-virtual {v13}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_16

    new-instance v7, Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v14

    invoke-direct {v7, v14}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v4, v7

    const/4 v7, 0x0

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v14

    :goto_e
    if-ge v7, v14, :cond_15

    invoke-virtual {v13, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v13, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v52, v1

    move-object/from16 v1, v18

    check-cast v1, Ljava/util/List;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v3

    move-object/from16 v3, v18

    check-cast v3, [B

    move/from16 v18, v5

    new-instance v5, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    move-object/from16 v24, v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/content/pm/Checksum;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/pm/Checksum;

    invoke-direct {v5, v6, v3}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;-><init>([Landroid/content/pm/Checksum;[B)V

    invoke-virtual {v4, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v5, v18

    move-object/from16 v3, v19

    move-object/from16 v6, v24

    move-object/from16 v1, v52

    goto :goto_e

    :cond_15
    move-object/from16 v52, v1

    move-object/from16 v19, v3

    move/from16 v18, v5

    move-object/from16 v24, v6

    move-object v0, v4

    goto :goto_f

    :cond_16
    move-object/from16 v52, v1

    move-object/from16 v19, v3

    move/from16 v18, v5

    move-object/from16 v24, v6

    move-object v0, v4

    :goto_f
    move-object/from16 v1, v17

    invoke-static {v9, v1, v12, v11}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object v53

    move-object/from16 v14, v53

    new-instance v54, Lcom/android/server/pm/PackageInstallerSession;

    move-object/from16 v58, v19

    move-object/from16 v3, v54

    move/from16 v59, v22

    move-object/from16 v4, p1

    move/from16 v60, v18

    move-object/from16 v5, p2

    move-object/from16 v61, v24

    move-object/from16 v6, p3

    move-object/from16 v62, v21

    move/from16 v63, v23

    move-object/from16 v7, p7

    move-object/from16 v64, v8

    move-object/from16 v8, p8

    move-object/from16 v65, v9

    move-object/from16 v9, p4

    move-object/from16 v66, v10

    move-object/from16 v10, p5

    move-object/from16 v67, v11

    move/from16 v11, v57

    move-object/from16 v68, v12

    move/from16 v12, v16

    move-object/from16 v70, v13

    move/from16 v69, v16

    move/from16 v71, v34

    move/from16 v13, v35

    move-object/from16 v72, v15

    move-object/from16 v15, v58

    move-wide/from16 v16, v36

    move-wide/from16 v18, v40

    move-object/from16 v21, v42

    move-object/from16 v22, v51

    move-object/from16 v23, v0

    move/from16 v24, v43

    move/from16 v25, v44

    move/from16 v26, v45

    move/from16 v27, v46

    move-object/from16 v28, v2

    move/from16 v29, v47

    move/from16 v30, v63

    move/from16 v31, v59

    move/from16 v32, v55

    move/from16 v33, v49

    move-object/from16 v34, v50

    invoke-direct/range {v3 .. v34}, Lcom/android/server/pm/PackageInstallerSession;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IIILcom/android/server/pm/InstallSource;Landroid/content/pm/PackageInstaller$SessionParams;JJLjava/io/File;Ljava/lang/String;[Landroid/content/pm/InstallationFile;Landroid/util/ArrayMap;ZZZZ[IIZZZILjava/lang/String;)V

    return-object v54

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t restore staged session with invalid state."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private releaseTransactionLock()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mTransactionLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method private resolveAndStageFileLocked(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V

    nop

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->isFsVerityRequiredForApk(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/PackageInstallerSession;->maybeStageFsveritySignatureLocked(Ljava/io/File;Ljava/io/File;Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->maybeStageDexMetadataLocked(Ljava/io/File;Ljava/io/File;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->maybeStageDigestsLocked(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private sealLocked()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertNoWriteFileTransfersOpenLocked()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sealing of session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->onSessionValidationFailure(Lcom/android/server/pm/PackageManagerException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v1

    throw v1
.end method

.method private static sendOnPackageInstalled(Landroid/content/Context;Landroid/content/IntentSender;IZILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x1

    if-ne v0, p6, :cond_2

    if-eqz p3, :cond_2

    if-eqz p8, :cond_0

    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_1

    const v2, 0x10405d3

    goto :goto_1

    :cond_1
    const v2, 0x10405d2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p5, p4}, Lcom/android/server/pm/PackageInstallerService;->buildSuccessNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_2

    nop

    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const/16 v3, 0x15

    invoke-virtual {v2, p5, v3, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    nop

    invoke-static {p6}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result v1

    const-string v2, "android.content.pm.extra.STATUS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    nop

    invoke-static {p6, p7}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.content.pm.extra.LEGACY_STATUS"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p8, :cond_3

    const-string v1, "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

    invoke-virtual {p8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.content.pm.extra.OTHER_PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v4, v0

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    :goto_2
    return-void
.end method

.method private static sendOnUserActionRequired(Landroid/content/Context;Landroid/content/IntentSender;ILandroid/content/Intent;)V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.content.pm.extra.STATUS"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v4, v0

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-void
.end method

.method private static sendPendingStreaming(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    const-string v0, "PackageInstallerSession"

    const-string v1, "Missing receiver for pending streaming status."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x2

    const-string v2, "android.content.pm.extra.STATUS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "android.content.pm.extra.STATUS_MESSAGE"

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Staging Image Not Ready ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v1, "Staging Image Not Ready"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v4, v0

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    return-void
.end method

.method private sendPendingUserActionIntent()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.CONFIRM_INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getPackageInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.content.pm.extra.SESSION_ID"

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteStatusReceiver:Landroid/content/IntentSender;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/pm/PackageInstallerSession;->sendOnUserActionRequired(Landroid/content/Context;Landroid/content/IntentSender;ILandroid/content/Intent;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->closeInternal(Z)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private sendUpdateToRemoteStatusReceiver(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteStatusReceiver:Landroid/content/IntentSender;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setClientProgressLocked(F)V
    .locals 2

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    return-void
.end method

.method private shouldScrubData(I)Z
    .locals 1

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private stageFileLocked(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->maybeRenameFile(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method private storeBytesToInstallationFile(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p3}, Landroid/os/incremental/IncrementalFileStorages;->makeFile(Ljava/lang/String;[B)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p2, p3}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V

    :goto_1
    return-void
.end method

.method private streamValidateAndCommit()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->prepareDataLoaderLocked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->validateApexInstallLocked()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->validateApkInstallLocked()Landroid/content/pm/parsing/PackageLite;

    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/high16 v3, 0x3f800000    # 1.0f

    :try_start_2
    iput v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    monitor-exit v0

    return v2

    :cond_5
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x6e

    const-string v3, "Session destroyed"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->onSessionValidationFailure(Lcom/android/server/pm/PackageManagerException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v1

    throw v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->onSessionValidationFailure(Lcom/android/server/pm/PackageManagerException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v1

    throw v1
.end method

.method private unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t obtain signatures from APK : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private validateApexInstallLocked()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getAddedApksLocked()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x2

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    if-gt v1, v3, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apex"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    nop

    invoke-static {v3}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5}, Lcom/android/server/pm/PackageInstallerSession;->resolveAndStageFileLocked(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    iput-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    const/16 v8, 0x20

    invoke-static {v6, v7, v8}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/parsing/ApkLite;

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-nez v8, :cond_1

    invoke-virtual {v7}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/content/pm/parsing/ApkLite;->getLongVersionCode()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    :cond_1
    return-void

    :cond_2
    new-instance v7, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v8

    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_3
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid filename: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    :cond_4
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v2, "Too many files for apex install"

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    const-string v2, "Session: %d. No packages staged in %s"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private validateApkInstallLocked()Landroid/content/pm/parsing/PackageLite;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iput-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    const-wide/16 v4, -0x1

    iput-wide v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    sget-object v4, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    const v7, 0x4000040

    invoke-virtual {v4, v5, v7, v6}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v6, 0x2

    const/4 v7, -0x2

    if-ne v5, v6, :cond_1

    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    const-string v5, "Missing existing base package"

    invoke-direct {v3, v7, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isApkVerityEnabled()Z

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    if-ne v5, v6, :cond_2

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/security/VerityUtils;->hasFsverity(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v9

    goto :goto_1

    :cond_2
    move v5, v8

    :goto_1
    iput-boolean v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mVerityFoundForApks:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getRemovedFilesLocked()Ljava/util/List;

    move-result-object v5

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    nop

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const-string v15, ".removed"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v13, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getAddedApksLocked()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_3

    :cond_4
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    new-array v6, v6, [Ljava/lang/Object;

    iget v12, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v8

    iget-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    const-string v8, "Session: %d. No packages staged in %s"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v7, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3

    :cond_5
    :goto_3
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    new-instance v13, Landroid/util/ArrayMap;

    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v14

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-object/from16 v16, v0

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v6, "PackageInstallerSession"

    if-eqz v0, :cond_f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v14}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v8

    const/16 v3, 0x20

    invoke-static {v8, v0, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v8

    if-nez v8, :cond_e

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v8}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-nez v9, :cond_6

    invoke-virtual {v8}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    move-object v9, v14

    move-object/from16 v18, v15

    invoke-virtual {v8}, Landroid/content/pm/parsing/ApkLite;->getLongVersionCode()J

    move-result-wide v14

    iput-wide v14, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    goto :goto_5

    :cond_6
    move-object v9, v14

    move-object/from16 v18, v15

    :goto_5
    iget-object v14, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v15, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne v14, v15, :cond_7

    invoke-virtual {v8}, Landroid/content/pm/parsing/ApkLite;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    :cond_7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14, v8}, Lcom/android/server/pm/PackageInstallerSession;->assertApkConsistentLocked(Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;)V

    invoke-static {v8}, Landroid/content/pm/parsing/ApkLiteParseUtils;->splitNameToFileName(Landroid/content/pm/parsing/ApkLite;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-virtual {v8}, Landroid/content/pm/parsing/ApkLite;->getInstallLocation()I

    move-result v15

    const/4 v7, -0x1

    if-eq v15, v7, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v15, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v15, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    move-object/from16 v19, v2

    invoke-virtual {v8}, Landroid/content/pm/parsing/ApkLite;->getInstallLocation()I

    move-result v2

    if-eq v15, v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " drops manifest attribute android:installLocation in "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " for "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_8
    move-object/from16 v19, v2

    goto :goto_6

    :cond_9
    move-object/from16 v19, v2

    :cond_a
    :goto_6
    new-instance v2, Ljava/io/File;

    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v2, v6, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v0, v2, v6}, Lcom/android/server/pm/PackageInstallerSession;->resolveAndStageFileLocked(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_b

    iput-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    move-object v6, v8

    move-object/from16 v16, v6

    goto :goto_7

    :cond_b
    invoke-virtual {v8}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    move-object v14, v9

    move-object/from16 v15, v18

    move-object/from16 v2, v19

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v7, -0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_4

    :cond_c
    move-object/from16 v19, v2

    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid filename: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x2

    invoke-direct {v2, v7, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_d
    move-object/from16 v19, v2

    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Split "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " was defined multiple times"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x2

    invoke-direct {v2, v7, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_e
    move-object/from16 v19, v2

    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v6

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v8

    invoke-direct {v2, v6, v7, v8}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_f
    move-object/from16 v19, v2

    move-object v9, v14

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    if-eqz v4, :cond_13

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_8

    :cond_10
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Split not found: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, -0x2

    invoke-direct {v0, v6, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_11
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_12

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    :cond_12
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v2, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne v0, v2, :cond_14

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    goto :goto_9

    :cond_13
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing existing base package for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-direct {v0, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_14
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v0

    const/16 v2, -0x74

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallationAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_a

    :cond_15
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Incremental installation of this package is not allowed."

    invoke-direct {v0, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_16
    :goto_a
    iget v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    if-eq v0, v3, :cond_18

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_b

    :cond_17
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x17

    const-string v3, "Can only transfer sessions that update the original installer"

    invoke-direct {v0, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_18
    :goto_b
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const-string v2, "Missing split for "

    const/16 v3, -0x1c

    const/4 v7, 0x1

    if-ne v0, v7, :cond_1d

    const/4 v6, 0x0

    invoke-virtual {v12, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/parsing/ApkLite;->isSplitRequired()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-le v0, v7, :cond_19

    goto :goto_c

    :cond_19
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1a
    :goto_c
    nop

    invoke-virtual {v9}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    move-object/from16 v7, v16

    const/4 v3, 0x1

    invoke-static {v0, v2, v7, v13, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->composePackageLiteFromApks(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Landroid/content/pm/parsing/ApkLite;Landroid/util/ArrayMap;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/PackageLite;

    iput-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    move-object/from16 v22, v7

    const/4 v7, 0x1

    goto/16 :goto_1c

    :cond_1b
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v3

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v8

    invoke-direct {v2, v3, v6, v8}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1c
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v2, "Full install must include a base package"

    const/4 v3, -0x2

    invoke-direct {v0, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1d
    move-object/from16 v7, v16

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    nop

    invoke-virtual {v9}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    new-instance v14, Ljava/io/File;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    invoke-static {v0, v14, v15}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-interface {v14}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/pm/parsing/PackageLite;

    move-object/from16 v16, v15

    invoke-virtual {v15}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v4

    invoke-virtual {v15}, Landroid/content/pm/parsing/PackageLite;->getLongVersionCode()J

    move-result-wide v3

    move-object/from16 v20, v5

    const-string v5, "Existing"

    invoke-direct {v1, v5, v0, v3, v4}, Lcom/android/server/pm/PackageInstallerSession;->assertPackageConsistentLocked(Ljava/lang/String;Ljava/lang/String;J)V

    nop

    invoke-virtual {v15}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v3

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageParser$SigningDetails;->signaturesMatchExactly(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    if-nez v0, :cond_1e

    new-instance v0, Ljava/io/File;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->inheritFileLocked(Ljava/io/File;)V

    :cond_1e
    invoke-virtual {v15}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {v15}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_20

    invoke-virtual {v15}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    new-instance v5, Ljava/io/File;

    invoke-virtual {v15}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v21, v3

    aget-object v3, v19, v0

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    invoke-interface {v10, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v12, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1f

    if-nez v5, :cond_1f

    invoke-direct {v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->inheritFileLocked(Ljava/io/File;)V

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v21

    goto :goto_d

    :cond_20
    move-object/from16 v21, v3

    goto :goto_e

    :cond_21
    move-object/from16 v21, v3

    :goto_e
    new-instance v0, Ljava/io/File;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v4, "oat"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_26

    array-length v5, v0

    if-lez v5, :cond_26

    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v4

    array-length v4, v0

    move-object/from16 v22, v7

    const/4 v7, 0x0

    :goto_f
    if-ge v7, v4, :cond_25

    aget-object v23, v0, v7

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    move/from16 v25, v4

    move-object/from16 v26, v5

    goto :goto_10

    :cond_22
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_24

    move/from16 v25, v4

    array-length v4, v0

    if-nez v4, :cond_23

    move-object/from16 v26, v5

    goto :goto_10

    :cond_23
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    move-object/from16 v26, v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_10

    :cond_24
    move/from16 v25, v4

    move-object/from16 v26, v5

    :goto_10
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v24

    move/from16 v4, v25

    move-object/from16 v5, v26

    goto :goto_f

    :cond_25
    move-object/from16 v24, v0

    move-object/from16 v26, v5

    goto :goto_11

    :cond_26
    move-object/from16 v24, v0

    move-object/from16 v19, v4

    move-object/from16 v22, v7

    goto :goto_11

    :cond_27
    move-object/from16 v19, v4

    move-object/from16 v22, v7

    :goto_11
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->mayInheritNativeLibs()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const-string v5, "lib"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v7, 0x0

    aput-object v4, v0, v7

    new-instance v4, Ljava/io/File;

    const-string v5, "lib64"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v4, v0, v5

    move-object v4, v0

    array-length v5, v4

    :goto_12
    if-ge v7, v5, :cond_30

    aget-object v17, v4, v7

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_28

    move-object/from16 v30, v3

    move-object/from16 v25, v4

    move/from16 v26, v5

    move-object/from16 v31, v8

    goto/16 :goto_17

    :cond_28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v23, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v24, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    move-object/from16 v25, v4

    array-length v4, v0

    move/from16 v26, v5

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v4, :cond_2c

    move/from16 v27, v4

    aget-object v4, v0, v5

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v28

    if-nez v28, :cond_29

    move-object/from16 v28, v0

    move-object/from16 v30, v3

    move-object/from16 v31, v8

    move-object/from16 v3, v23

    move-object/from16 v8, v24

    goto :goto_14

    :cond_29
    :try_start_0
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageInstallerSession;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v28
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v29, v28

    nop

    move-object/from16 v28, v0

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2b

    move-object/from16 v30, v3

    array-length v3, v0

    if-nez v3, :cond_2a

    move-object/from16 v31, v8

    move-object/from16 v3, v23

    move-object/from16 v8, v24

    goto :goto_14

    :cond_2a
    move-object/from16 v3, v23

    move-object/from16 v23, v4

    move-object/from16 v4, v29

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v31, v8

    move-object/from16 v8, v24

    invoke-interface {v8, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_14

    :cond_2b
    move-object/from16 v30, v3

    move-object/from16 v31, v8

    move-object/from16 v3, v23

    move-object/from16 v8, v24

    move-object/from16 v23, v4

    :goto_14
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v23, v3

    move-object/from16 v24, v8

    move/from16 v4, v27

    move-object/from16 v0, v28

    move-object/from16 v3, v30

    move-object/from16 v8, v31

    goto :goto_13

    :catch_0
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v31, v8

    move-object/from16 v3, v23

    move-object/from16 v8, v24

    move-object/from16 v23, v4

    move-object v4, v0

    move-object v0, v4

    const-string v4, "Skipping linking of native library directory!"

    invoke-static {v6, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v8}, Ljava/util/List;->clear()V

    goto :goto_15

    :cond_2c
    move-object/from16 v30, v3

    move-object/from16 v31, v8

    move-object/from16 v3, v23

    move-object/from16 v8, v24

    :goto_15
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    goto :goto_16

    :cond_2e
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_17

    :cond_2f
    move-object/from16 v30, v3

    move-object/from16 v25, v4

    move/from16 v26, v5

    move-object/from16 v31, v8

    :goto_17
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v25

    move/from16 v5, v26

    move-object/from16 v3, v30

    move-object/from16 v8, v31

    goto/16 :goto_12

    :cond_30
    move-object/from16 v30, v3

    move-object/from16 v25, v4

    move-object/from16 v31, v8

    goto :goto_18

    :cond_31
    move-object/from16 v30, v3

    move-object/from16 v31, v8

    :goto_18
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/parsing/PackageLite;->isSplitRequired()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {v15}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_32

    const/4 v7, 0x1

    goto :goto_19

    :cond_32
    const/4 v7, 0x0

    :goto_19
    move v3, v7

    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_33

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    move v4, v7

    goto :goto_1a

    :cond_33
    const/4 v4, 0x0

    :goto_1a
    if-eqz v3, :cond_36

    invoke-virtual {v12}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_34

    if-nez v4, :cond_34

    goto :goto_1b

    :cond_34
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, -0x1c

    invoke-direct {v5, v6, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    :cond_35
    const/4 v7, 0x1

    :cond_36
    :goto_1b
    move-object/from16 v0, v16

    :goto_1c
    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->isUseEmbeddedDex()Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/dex/DexManager;->auditUncompressedDexInApk(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    goto :goto_1e

    :cond_37
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Some dex are not uncompressed and aligned correctly for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x2

    invoke-direct {v2, v5, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_38
    :goto_1e
    goto :goto_1d

    :cond_39
    iget v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/16 v3, 0x7d0

    if-ne v2, v3, :cond_3a

    move v8, v7

    goto :goto_1f

    :cond_3a
    const/4 v8, 0x0

    :goto_1f
    move v2, v8

    if-eqz v2, :cond_3b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    if-eqz v3, :cond_3b

    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->isDebuggable()Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->isProfileableByShell()Z

    move-result v3

    if-nez v3, :cond_3b

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    invoke-virtual {v3}, Landroid/os/incremental/IncrementalFileStorages;->disallowReadLogs()V

    :cond_3b
    return-object v0

    :cond_3c
    move-object/from16 v21, v3

    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v2, "Existing signatures are inconsistent"

    const/4 v3, -0x2

    invoke-direct {v0, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3d
    move-object/from16 v18, v4

    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x6e

    invoke-interface {v14}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3e
    move-object/from16 v18, v4

    move-object/from16 v20, v5

    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid checksum name(s): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    const-string v5, ","

    invoke-static {v5, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private verify()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->verifyNonStaged()V
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private verifyNonStaged()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    nop

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->prepareForVerification()Lcom/android/server/pm/PackageManagerService$VerificationParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionsLocked()Ljava/util/List;

    move-result-object v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->containsApkSession()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->sessionContains(Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v3, -0x74

    const-string v4, "Non-staged multi package install of APEX and APK packages is not supported"

    invoke-direct {v1, v3, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageInstallerSession;

    nop

    :try_start_1
    invoke-direct {v6}, Lcom/android/server/pm/PackageInstallerSession;->prepareForVerification()Lcom/android/server/pm/PackageManagerService$VerificationParams;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    goto :goto_2

    :catch_0
    move-exception v7

    move-object v4, v7

    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteStatusReceiver:Landroid/content/IntentSender;

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z

    move-result v9

    iget v10, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    const/4 v11, 0x0

    iget v12, v4, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static/range {v6 .. v14}, Lcom/android/server/pm/PackageInstallerSession;->sendOnPackageInstalled(Landroid/content/Context;Landroid/content/IntentSender;IZILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    :cond_5
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v0, v1}, Lcom/android/server/pm/PackageManagerService;->verifyStage(Lcom/android/server/pm/PackageManagerService$VerificationParams;Ljava/util/List;)V

    goto :goto_3

    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    :cond_6
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService;->verifyStage(Lcom/android/server/pm/PackageManagerService$VerificationParams;)V

    :goto_3
    return-void
.end method

.method private static writeAutoRevokePermissionsMode(Landroid/util/TypedXmlSerializer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "auto-revoke-permissions-mode"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "mode"

    invoke-interface {p0, v0, v2, p1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private static writeGrantedRuntimePermissionsLocked(Landroid/util/TypedXmlSerializer;[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    const/4 v3, 0x0

    const-string v4, "granted-runtime-permission"

    invoke-interface {p0, v3, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "name"

    invoke-static {p0, v5, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-interface {p0, v3, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static writeWhitelistedRestrictedPermissionsLocked(Landroid/util/TypedXmlSerializer;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v2, 0x0

    const-string v3, "whitelisted-restricted-permission"

    invoke-interface {p0, v2, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "name"

    invoke-static {p0, v5, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-interface {p0, v2, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->abandon()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->abandonNonStaged()V

    :goto_0
    return-void
.end method

.method public addChildSessionId(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v0, p1}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionParams;->getEnableRollback()Z

    move-result v1

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionParams;->getEnableRollback()Z

    move-result v2

    if-ne v1, v2, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->acquireTransactionLock()V

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession;->acquireTransactionLock()V

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->canBeAddedAsChild(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    const-string v2, "addChildSessionId"

    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    return-void

    :cond_0
    :try_start_2
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageInstallerSession;->setParentSessionId(I)V

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    nop

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add child session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " as it is in an invalid state."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multipackage Inconsistency: session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " have inconsistent rollback settings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multipackage Inconsistency: session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " have inconsistent staged settings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multi-session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " can\'t be a child."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add child session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " as it does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Single-session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " can\'t have child."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addClientProgress(F)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    add-float/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgressLocked(F)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addFile(ILjava/lang/String;J[B[B)V
    .locals 14

    move-object v1, p0

    move-object/from16 v9, p2

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v2, "com.android.permission.USE_INSTALLER_V2"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStreamingInstallation()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-incremental installation only supports /data/app placement: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz p5, :cond_4

    invoke-static/range {p2 .. p2}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v10, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    const-string v0, "addFile"

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    new-instance v11, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v12

    new-instance v13, Landroid/content/pm/InstallationFile;

    move-object v2, v13

    move v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Landroid/content/pm/InstallationFile;-><init>(ILjava/lang/String;J[B[B)V

    invoke-direct {v11, v12, v13}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;-><init>(ILandroid/content/pm/InstallationFile;)V

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v10

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File already added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataLoader installation requires valid metadata: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add files to non-data loader installation session."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->closeInternal(Z)V

    return-void
.end method

.method public commit(Landroid/content/IntentSender;Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->markAsSealed(Landroid/content/IntentSender;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/util/SparseArray;Landroid/content/IntentSender;Lcom/android/server/pm/PackageInstallerSession$1;)V

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {v4, v1, p2}, Lcom/android/server/pm/PackageInstallerSession;->markAsSealed(Landroid/content/IntentSender;Z)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionSealed()V

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is a child of multi-package session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and may not be committed directly."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method containsApkSession()Z
    .locals 1

    sget-object v0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda2;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->sessionContains(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageInstallerSession;->shouldScrubData(I)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoInternal(ZZ)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public generateInfoScrubbed(Z)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoInternal(ZZ)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getChildSessionIds()[I
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIdsLocked()[I

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

.method getChildSessions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionsLocked()Ljava/util/List;

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

.method getCommittedMillis()J
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDataLoaderParams()Landroid/content/pm/DataLoaderParamsParcel;
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v1, "com.android.permission.USE_INSTALLER_V2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method getInstallSource()Lcom/android/server/pm/InstallSource;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getInstallerAttributionTag()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method getInstallerPackageName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallerUid()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNames()[Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "getNames"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getNamesLocked()[Ljava/lang/String;

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

.method public getPackageName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getParentSessionId()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getStagedSessionErrorCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->getSessionErrorCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getStagedSessionErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->getSessionErrorMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getUpdatedMillis()J
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasParentSessionId()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

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

.method isApexSession()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isCommitted()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isDestroyed()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMultiPackage()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    return v0
.end method

.method public isPrepared()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSealed()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isStaged()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    return v0
.end method

.method public isStagedAndInTerminalState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isInTerminalState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isStagedSessionApplied()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isSessionApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isStagedSessionFailed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isSessionFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isStagedSessionReady()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$doWriteInternal$0$PackageInstallerSession(Landroid/system/Int64Ref;J)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p1, Landroid/system/Int64Ref;->value:J

    sub-long v0, p2, v0

    iput-wide p2, p1, Landroid/system/Int64Ref;->value:J

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    long-to-float v4, v0

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgressLocked(F)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :goto_0
    return-void
.end method

.method public markUpdated()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onAfterSessionRead(Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string v4, "PackageInstallerSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Child session not existed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_6

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->sealLocked()V

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    goto :goto_2

    :cond_4
    move-object v1, p0

    :goto_2
    nop

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->validateApexInstallLocked()V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->validateApkInstallLocked()Landroid/content/pm/parsing/PackageLite;
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_3
    goto :goto_5

    :cond_7
    :goto_4
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "PackageInstallerSession"

    const-string v3, "Package not valid"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    monitor-exit v0

    return-void

    :cond_8
    :goto_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public open()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    move v3, v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-eqz v2, :cond_2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "stageDir must be set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_4

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionPrepared(Lcom/android/server/pm/PackageInstallerSession;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "openRead"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->openReadInternalLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    invoke-static {v1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read regular files in a data loader installation session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertCanWrite(Z)V

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeChildSessionId(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    const-string v1, "removeChildSessionId"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->acquireTransactionLock()V

    invoke-direct {v2}, Lcom/android/server/pm/PackageInstallerSession;->acquireTransactionLock()V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->setParentSessionId(I)V

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    invoke-direct {v2}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    invoke-direct {v2}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    nop

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public removeFile(ILjava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v1, "com.android.permission.USE_INSTALLER_V2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    const-string v1, "removeFile"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    new-instance v11, Landroid/content/pm/InstallationFile;

    invoke-static {p2}, Lcom/android/server/pm/PackageInstallerSession;->getRemoveMarkerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v11

    move v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/InstallationFile;-><init>(ILjava/lang/String;J[B[B)V

    invoke-direct {v2, v3, v11}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;-><init>(ILandroid/content/pm/InstallationFile;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File already removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must specify package name to remove a split"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add files to non-data loader installation session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeSplit(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "removeSplit"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->createRemoveSplitMarkerLocked(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must specify package name to remove a split"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot remove splits in a data loader installation session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method sessionContains(Ljava/util/function/Predicate;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionsLocked()Ljava/util/List;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setChecksums(Ljava/lang/String;[Landroid/content/pm/Checksum;[B)V
    .locals 7

    array-length v0, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz p3, :cond_1

    array-length v4, p3

    if-eqz v4, :cond_1

    :try_start_0
    invoke-static {p2, p3}, Lcom/android/server/pm/ApkChecksums;->verifySignature([Landroid/content/pm/Checksum;[B)[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Can\'t verify signature"

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    const-string v5, "addChecksums"

    invoke-direct {p0, v5}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    new-instance v6, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    invoke-direct {v6, p2, p3}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;-><init>([Landroid/content/pm/Checksum;[B)V

    invoke-virtual {v5, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    return-void

    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Duplicate checksums."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Can\'t obtain calling installer\'s package."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setClientProgress(F)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgressLocked(F)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setParentSessionId(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    :try_start_0
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The parent of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is alreadyset to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setPermissionsResult(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    const/16 v0, -0x73

    const-string v1, "User rejected permissions"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must be sealed to accept permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stageViaHardLink(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/system/Os;->link(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a4

    invoke-static {v3, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    :goto_0
    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    nop

    return-void

    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t relabel file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v1

    invoke-static {v1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "link() can only be run by the system"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public transfer(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v2, "android.permission.INSTALL_PACKAGES"

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionParams;->areHiddenOptionsSet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    const-string v2, "transfer"

    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->sealLocked()V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/4 v2, 0x0

    invoke-static {p1, v2, p1, v2}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    monitor-exit v1

    return-void

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Package is not valid"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Can only transfer sessions that use public options"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destination package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not have the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method write(Landroid/util/TypedXmlSerializer;Ljava/io/File;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v0, :cond_0

    monitor-exit v3

    return-void

    :cond_0
    const-string v0, "session"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "sessionId"

    iget v5, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-interface {v2, v4, v0, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "userId"

    iget v5, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {v2, v4, v0, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "installerPackageName"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v5, v5, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "installerAttributionTag"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v5, v5, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "installerUid"

    iget v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {v2, v4, v0, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "installInitiatingPackageName"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v5, v5, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "installOriginatingPackageName"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v5, v5, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "createdMillis"

    iget-wide v5, v1, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-interface {v2, v4, v0, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "updatedMillis"

    iget-wide v5, v1, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    invoke-interface {v2, v4, v0, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "committedMillis"

    iget-wide v5, v1, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    invoke-interface {v2, v4, v0, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v0, :cond_1

    const-string v5, "sessionStageDir"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v5, v0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v5, "sessionStageCid"

    invoke-static {v2, v5, v0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_2
    const-string v0, "prepared"

    iget-boolean v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string v0, "committed"

    iget-boolean v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string v0, "destroyed"

    iget-boolean v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string v0, "sealed"

    iget-boolean v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string v0, "multiPackage"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string v0, "stagedSession"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string v0, "isReady"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionReady()Z

    move-result v5

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string v0, "isFailed"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionFailed()Z

    move-result v5

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string v0, "isApplied"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionApplied()Z

    move-result v5

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string v0, "errorCode"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getStagedSessionErrorCode()I

    move-result v5

    invoke-interface {v2, v4, v0, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "errorMessage"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getStagedSessionErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "parentSessionId"

    iget v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-interface {v2, v4, v0, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "mode"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-interface {v2, v4, v0, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "installFlags"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-interface {v2, v4, v0, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "installLocation"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-interface {v2, v4, v0, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "sizeBytes"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-interface {v2, v4, v0, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "appPackageName"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "appLabel"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "originatingUri"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "originatingUid"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-interface {v2, v4, v0, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "referrerUri"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "abiOverride"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "volumeUuid"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-static {v2, v0, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "installRason"

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-interface {v2, v4, v0, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    const-string v0, "isDataLoader"

    invoke-static {v2, v0, v6}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    if-eqz v6, :cond_4

    const-string v0, "dataLoaderType"

    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v7, v7, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v7}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v7

    invoke-interface {v2, v4, v0, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "dataLoaderPackageName"

    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v7, v7, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v7}, Landroid/content/pm/DataLoaderParams;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v0, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "dataLoaderClassName"

    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v7, v7, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v7}, Landroid/content/pm/DataLoaderParams;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v0, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "dataLoaderArguments"

    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v7, v7, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v7}, Landroid/content/pm/DataLoaderParams;->getArguments()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v0, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageInstallerSession;->writeGrantedRuntimePermissionsLocked(Landroid/util/TypedXmlSerializer;[Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageInstallerSession;->writeWhitelistedRestrictedPermissionsLocked(Landroid/util/TypedXmlSerializer;Ljava/util/List;)V

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageInstallerSession;->writeAutoRevokePermissionsMode(Landroid/util/TypedXmlSerializer;I)V

    iget v0, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    move-object/from16 v7, p2

    invoke-static {v0, v7}, Lcom/android/server/pm/PackageInstallerSession;->buildAppIconFile(ILjava/io/File;)Ljava/io/File;

    move-result-object v0

    move-object v8, v0

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto/16 :goto_4

    :cond_5
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v11, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    cmp-long v0, v9, v11

    if-eqz v0, :cond_6

    const-string v0, "PackageInstallerSession"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Writing changed icon "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v9, 0x0

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v9, v0

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x5a

    invoke-virtual {v0, v10, v11, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_3
    const-string v10, "PackageInstallerSession"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to write icon "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_2
    :try_start_4
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    iput-wide v10, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    goto :goto_4

    :goto_3
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    throw v0

    :cond_6
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIdsLocked()[I

    move-result-object v0

    array-length v9, v0

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v9, :cond_7

    aget v11, v0, v10

    const-string v12, "childSession"

    invoke-interface {v2, v4, v12}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v12, "sessionId"

    invoke-interface {v2, v4, v12, v11}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v12, "childSession"

    invoke-interface {v2, v4, v12}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v10, :cond_8

    aget-object v12, v9, v11

    const-string v13, "sessionFile"

    invoke-interface {v2, v4, v13}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "location"

    invoke-virtual {v12}, Landroid/content/pm/InstallationFile;->getLocation()I

    move-result v14

    invoke-interface {v2, v4, v13, v14}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "name"

    invoke-virtual {v12}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v13, v14}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v13, "lengthBytes"

    invoke-virtual {v12}, Landroid/content/pm/InstallationFile;->getLengthBytes()J

    move-result-wide v14

    invoke-interface {v2, v4, v13, v14, v15}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "metadata"

    invoke-virtual {v12}, Landroid/content/pm/InstallationFile;->getMetadata()[B

    move-result-object v14

    invoke-static {v2, v13, v14}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    const-string v13, "signature"

    invoke-virtual {v12}, Landroid/content/pm/InstallationFile;->getSignature()[B

    move-result-object v14

    invoke-static {v2, v13, v14}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    const-string v13, "sessionFile"

    invoke-interface {v2, v4, v13}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_8
    const/4 v10, 0x0

    iget-object v11, v1, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    :goto_7
    if-ge v10, v11, :cond_a

    iget-object v12, v1, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v13, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->getChecksums()[Landroid/content/pm/Checksum;

    move-result-object v14

    array-length v15, v14

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v15, :cond_9

    aget-object v16, v14, v5

    const-string v4, "sessionChecksum"

    move/from16 v17, v6

    const/4 v6, 0x0

    invoke-interface {v2, v6, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "name"

    invoke-static {v2, v4, v12}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v4, "checksumKind"

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/Checksum;->getType()I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v2, v7, v4, v6}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "checksumValue"

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/Checksum;->getValue()[B

    move-result-object v6

    invoke-static {v2, v4, v6}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    const-string v4, "sessionChecksum"

    const/4 v6, 0x0

    invoke-interface {v2, v6, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v7, p2

    move/from16 v6, v17

    const/4 v4, 0x0

    goto :goto_8

    :cond_9
    move/from16 v17, v6

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, p2

    const/4 v4, 0x0

    goto :goto_7

    :cond_a
    move/from16 v17, v6

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    :goto_9
    if-ge v4, v5, :cond_d

    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->getSignature()[B

    move-result-object v10

    if-eqz v10, :cond_c

    array-length v11, v10

    if-nez v11, :cond_b

    goto :goto_a

    :cond_b
    const-string v11, "sessionChecksumSignature"

    const/4 v12, 0x0

    invoke-interface {v2, v12, v11}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v11, "name"

    invoke-static {v2, v11, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v11, "signature"

    invoke-static {v2, v11, v10}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    const-string v11, "sessionChecksumSignature"

    const/4 v12, 0x0

    invoke-interface {v2, v12, v11}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_d
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v0, "session"

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    .locals 2

    if-eqz p6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertCanWrite(Z)V

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
