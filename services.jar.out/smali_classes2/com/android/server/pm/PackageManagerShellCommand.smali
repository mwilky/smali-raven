.class Lcom/android/server/pm/PackageManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "PackageManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;,
        Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;,
        Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;,
        Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;,
        Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;
    }
.end annotation


# static fields
.field private static final ART_PROFILE_SNAPSHOT_DEBUG_LOCATION:Ljava/lang/String; = "/data/misc/profman/"

.field private static final DEFAULT_STAGED_READY_TIMEOUT_MS:I = 0xea60

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final STDIN_PATH:Ljava/lang/String; = "-"

.field private static final TAG:Ljava/lang/String; = "PackageManagerShellCommand"


# instance fields
.field mBrief:Z

.field mComponents:Z

.field final mContext:Landroid/content/Context;

.field final mDomainVerificationShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

.field final mInterface:Landroid/content/pm/IPackageManager;

.field final mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

.field final mPermissionManager:Landroid/permission/PermissionManager;

.field mQueryFlags:I

.field private final mResourceCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field mTargetUser:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationShell;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const-class v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    const-class v0, Landroid/permission/PermissionManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManager;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mDomainVerificationShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    return-void
.end method

.method private static checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ABI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not supported on this device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing ABI argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private displayPackageFilePath(Ljava/lang/String;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v3, v6

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private doAbandonSession(IZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v1, v2

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->abandon()V

    if-eqz p2, :cond_0

    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private doAddFiles(ILjava/util/ArrayList;JZ)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;JZ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-instance v0, Landroid/content/pm/PackageInstaller$Session;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v5, p1

    :try_start_1
    invoke-interface {v4, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v2, v0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_4

    const-string v0, "-"
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v13, p2

    :try_start_2
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    invoke-direct {p0, v6, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->processArgForStdin(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;)I

    move-result v8
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v8, :cond_2

    nop

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v3

    :cond_1
    :try_start_3
    invoke-direct {p0, v6, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->processArgForLocalFile(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    goto :goto_0

    :cond_3
    nop

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v4

    :cond_4
    move-object/from16 v13, p2

    :goto_1
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "base"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/pm/PackageManagerShellCommand;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v6}, Ljava/security/SecureRandom;->nextInt()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_5

    const-string v6, "apex"

    goto :goto_2

    :cond_5
    const-string v6, "apk"

    :goto_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forStdIn(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->toByteArray()[B

    move-result-object v11

    const/4 v12, 0x0

    move-object v6, v2

    move-wide/from16 v9, p3

    invoke-virtual/range {v6 .. v12}, Landroid/content/pm/PackageInstaller$Session;->addFile(ILjava/lang/String;J[B[B)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    nop

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v4

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move v5, p1

    :goto_3
    move-object/from16 v13, p2

    goto :goto_6

    :catch_2
    move-exception v0

    move v5, p1

    :goto_4
    move-object/from16 v13, p2

    :goto_5
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to add file(s), reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v6, "Failure [failed to add file(s)]"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    nop

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v3

    :catchall_2
    move-exception v0

    :goto_6
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private doCommitSession(IZ)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v1, v2

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->isMultiPackage()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "]"

    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->isStaged()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->getNames()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/dex/DexMetadataHelper;->validateDexPaths([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning [Could not validate the dex paths: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.content.pm.extra.STATUS"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    if-eqz p2, :cond_2

    const-string v3, "Success"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_1
    nop

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v5

    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    iget v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :cond_0
    const/4 v0, 0x0

    const-string v1, "doCreateSession"

    invoke-direct {p0, p3, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2, v0}, Landroid/content/pm/IPackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private doInstallAddSession(I[IZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v1, v2

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->isMultiPackage()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: parent session ID is not a multi-package session"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    :try_start_1
    array-length v3, p2

    if-ge v2, v3, :cond_1

    aget v3, p2, v2

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageInstaller$Session;->addChildSessionId(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    const/4 v2, 0x0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private doListPermissions(Ljava/util/ArrayList;ZZZII)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;ZZZII)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_13

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ""

    const-string v7, "  description:"

    const-string v8, "  label:"

    const-string v9, "  package:"

    const/4 v10, 0x0

    const-string v11, "+ "

    const-string v12, ""

    if-eqz p2, :cond_7

    if-lez v4, :cond_0

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    if-eqz v5, :cond_5

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v13, v5, v10}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v13

    if-eqz p4, :cond_2

    invoke-direct {v0, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v14

    const-string v15, ": "

    if-eqz v14, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v3

    iget v3, v13, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    move-object/from16 v18, v6

    iget-object v6, v13, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-direct {v0, v13, v3, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move/from16 v17, v3

    move-object/from16 v18, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v13, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1
    goto/16 :goto_3

    :cond_2
    move/from16 v17, v3

    move-object/from16 v18, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_3

    move-object v6, v11

    goto :goto_2

    :cond_3
    move-object v6, v12

    :goto_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "group:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {v0, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v13, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    iget-object v14, v13, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-direct {v0, v13, v10, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v13, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    iget-object v14, v13, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    invoke-direct {v0, v13, v10, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    :goto_3
    goto :goto_5

    :cond_5
    move/from16 v17, v3

    move-object/from16 v18, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_6

    if-nez p4, :cond_6

    move-object v6, v11

    goto :goto_4

    :cond_6
    move-object v6, v12

    :goto_4
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "ungrouped:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    const-string v6, "  "

    goto :goto_6

    :cond_7
    move/from16 v17, v3

    move-object/from16 v18, v6

    :goto_6
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v3, v10, v13}, Landroid/permission/PermissionManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    const/4 v13, 0x1

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v10, :cond_11

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PermissionInfo;

    if-eqz p2, :cond_8

    if-nez v5, :cond_8

    iget-object v1, v15, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object/from16 v16, v3

    move-object/from16 v20, v5

    goto/16 :goto_c

    :cond_8
    iget v1, v15, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v1, v1, 0xf

    move-object/from16 v16, v3

    move/from16 v3, p5

    if-lt v1, v3, :cond_10

    move/from16 v3, p6

    if-le v1, v3, :cond_9

    move-object/from16 v20, v5

    goto/16 :goto_c

    :cond_9
    if-eqz p4, :cond_c

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    move/from16 v18, v1

    goto :goto_8

    :cond_a
    move/from16 v18, v1

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_8
    invoke-direct {v0, v15}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_b

    move-object/from16 v19, v1

    iget v1, v15, Landroid/content/pm/PermissionInfo;->labelRes:I

    iget-object v3, v15, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-direct {v0, v15, v1, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_9

    :cond_b
    move-object/from16 v19, v1

    iget-object v1, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_9
    move-object/from16 v20, v5

    goto/16 :goto_c

    :cond_c
    move/from16 v18, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_d

    move-object v3, v11

    goto :goto_a

    :cond_d
    move-object v3, v12

    :goto_a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "permission:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {v0, v15}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v1

    iget v1, v15, Landroid/content/pm/PermissionInfo;->labelRes:I

    move-object/from16 v20, v5

    iget-object v5, v15, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-direct {v0, v15, v1, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    iget-object v5, v15, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    invoke-direct {v0, v15, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    :cond_e
    move-object/from16 v19, v1

    move-object/from16 v20, v5

    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  protectionLevel:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    :cond_f
    move-object/from16 v20, v5

    goto :goto_c

    :cond_10
    move/from16 v18, v1

    move-object/from16 v20, v5

    :goto_c
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    move-object/from16 v5, v20

    goto/16 :goto_7

    :cond_11
    move-object/from16 v16, v3

    move-object/from16 v20, v5

    if-eqz p4, :cond_12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_12
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v17

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method private doRemoveSplits(ILjava/util/Collection;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v1, v2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageInstaller$Session;->removeSplit(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v2, 0x0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: failed to remove split; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v3

    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    iget-object v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    move v12, v0

    iget-object v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    move v0, v10

    goto :goto_1

    :cond_1
    move v0, v11

    :goto_1
    move v13, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, "-"

    if-nez v0, :cond_3

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v11

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v10

    :goto_3
    move v15, v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v10, :cond_4

    move v0, v10

    goto :goto_4

    :cond_4
    move v0, v11

    :goto_4
    move/from16 v16, v0

    if-eqz v15, :cond_5

    iget-object v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    const-string v0, "Error: must either specify a package size or an APK file"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    :cond_5
    if-eqz v13, :cond_6

    if-eqz v16, :cond_6

    const-string v0, "Error: can\'t specify SPLIT(s) for APEX"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    :cond_6
    if-nez v12, :cond_9

    if-eqz v15, :cond_7

    if-eqz v16, :cond_7

    const-string v0, "Error: can\'t specify SPLIT(s) along with STDIN"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    :cond_7
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    invoke-direct {v7, v8, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->setParamsSize(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;Ljava/util/List;)V

    :cond_9
    :goto_5
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    iget v2, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    invoke-direct {v7, v0, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v6

    const/16 v17, 0x1

    if-eqz v12, :cond_b

    :try_start_0
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v1, p0

    move v2, v6

    move-object v3, v14

    move v10, v6

    move v6, v13

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerShellCommand;->doAddFiles(ILjava/util/ArrayList;JZ)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_d

    nop

    if-eqz v17, :cond_a

    :try_start_2
    invoke-direct {v7, v10, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    :cond_a
    :goto_6
    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v0

    move v10, v6

    move-object v1, v0

    goto :goto_b

    :cond_b
    move v10, v6

    :try_start_3
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    move-object/from16 v1, p0

    move v2, v10

    move-object v3, v14

    move v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplits(ILjava/util/ArrayList;JZ)I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_d

    nop

    if-eqz v17, :cond_c

    :try_start_4
    invoke-direct {v7, v10, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    :cond_c
    :goto_7
    const/4 v1, 0x1

    return v1

    :cond_d
    :try_start_5
    invoke-direct {v7, v10, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_f

    nop

    if-eqz v17, :cond_e

    :try_start_6
    invoke-direct {v7, v10, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    :cond_e
    :goto_8
    const/4 v1, 0x1

    return v1

    :cond_f
    const/16 v17, 0x0

    :try_start_7
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_11

    iget-wide v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->stagedReadyTimeoutMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    iget-wide v0, v8, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->stagedReadyTimeoutMs:J

    invoke-direct {v7, v10, v0, v1, v9}, Lcom/android/server/pm/PackageManagerShellCommand;->doWaitForStagedSessionReady(IJLjava/io/PrintWriter;)I

    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v17, :cond_10

    :try_start_8
    invoke-direct {v7, v10, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    :cond_10
    :goto_9
    return v1

    :cond_11
    :try_start_9
    const-string v0, "Success"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    nop

    if-eqz v17, :cond_12

    :try_start_a
    invoke-direct {v7, v10, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_a

    :catch_4
    move-exception v0

    :cond_12
    :goto_a
    return v11

    :catchall_1
    move-exception v0

    move-object v1, v0

    :goto_b
    if-eqz v17, :cond_13

    :try_start_b
    invoke-direct {v7, v10, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_c

    :catch_5
    move-exception v0

    :cond_13
    :goto_c
    throw v1
.end method

.method private doWaitForStagedSessionReady(IJLjava/io/PrintWriter;)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    const/4 v7, 0x1

    if-lez v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    const-string v8, "]"

    if-nez v5, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure [Unknown session "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    :cond_1
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure [Session "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is not a staged session]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    add-long v11, v9, v2

    :goto_1
    cmp-long v13, v9, v11

    if-gez v13, :cond_4

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_2

    :cond_3
    sub-long v13, v11, v9

    const-wide/16 v6, 0x64

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v5, :cond_5

    const-string v6, "Failure [failed to retrieve SessionInfo]"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_5
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v6

    if-nez v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure [timed out after "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_6
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v6

    if-nez v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->getStagedSessionErrorCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->getStagedSessionErrorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_7
    const-string v6, "Success. Reboot device to apply staged session"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    return v6
.end method

.method private doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-instance v5, Landroid/content/pm/PackageInstaller$Session;

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move/from16 v12, p1

    :try_start_1
    invoke-interface {v0, v12}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    move-wide/from16 v13, p3

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_3

    const-string v3, "r"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v8, -0x1

    if-nez v3, :cond_1

    nop

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v8

    :cond_1
    :try_start_3
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    cmp-long v11, v9, v6

    if-gez v11, :cond_2

    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to get size of: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v8

    :catchall_0
    move-exception v0

    move-object v3, v5

    move-wide v13, v9

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move-object v3, v5

    move-wide v13, v9

    goto/16 :goto_3

    :cond_2
    move-wide v13, v9

    goto :goto_0

    :cond_3
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-wide/from16 v13, p3

    :goto_0
    cmp-long v6, v13, v6

    if-gtz v6, :cond_4

    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    const-string v7, "Error: must specify a APK size"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    nop

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v4

    :cond_4
    const-wide/16 v7, 0x0

    move-object/from16 v6, p5

    move-wide v9, v13

    move-object v11, v3

    :try_start_7
    invoke-virtual/range {v5 .. v11}, Landroid/content/pm/PackageInstaller$Session;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V

    if-eqz p6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Success: streamed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_5
    const/4 v4, 0x0

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v4

    :catchall_1
    move-exception v0

    move-object v3, v5

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v3, v5

    goto :goto_3

    :catchall_2
    move-exception v0

    move-wide/from16 v13, p3

    move-object v3, v5

    goto :goto_4

    :catch_2
    move-exception v0

    move-wide/from16 v13, p3

    move-object v3, v5

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    move/from16 v12, p1

    :goto_1
    move-wide/from16 v13, p3

    goto :goto_4

    :catch_4
    move-exception v0

    move/from16 v12, p1

    :goto_2
    move-wide/from16 v13, p3

    :goto_3
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: failed to write; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    nop

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v4

    :catchall_5
    move-exception v0

    :goto_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private doWriteSplits(ILjava/util/ArrayList;JZ)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;JZ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    goto :goto_3

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "base."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_2

    const-string v6, "apex"

    goto :goto_2

    :cond_2
    const-string v6, "apk"

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    :goto_3
    nop

    const/4 v11, 0x0

    move-object v5, p0

    move v6, p1

    move-object v7, v4

    move-wide v8, p3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I

    move-result v5

    if-eqz v5, :cond_3

    return v2

    :cond_3
    goto :goto_1

    :cond_4
    return v1
.end method

.method private static enabledSettingToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "unknown"

    return-object v0

    :pswitch_0
    const-string v0, "disabled-until-used"

    return-object v0

    :pswitch_1
    const-string v0, "disabled-user"

    return-object v0

    :pswitch_2
    const-string v0, "disabled"

    return-object v0

    :pswitch_3
    const-string v0, "enabled"

    return-object v0

    :pswitch_4
    const-string v0, "default"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFileStatSize(Ljava/io/File;)J
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Can\'t open file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getRemainingArgs()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const v3, 0x20008200

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    new-instance v2, Landroid/content/res/AssetManager;

    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    new-instance v3, Landroid/content/res/Resources;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    move-object v0, v3

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object v4, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static isNumber(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private isProductApp(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/high16 v2, 0x400000

    invoke-interface {v1, p1, v2, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private isSystemExtApp(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/high16 v2, 0x400000

    invoke-interface {v1, p1, v2, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemExt()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private isVendorApp(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/high16 v2, 0x400000

    invoke-interface {v1, p1, v2, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .locals 13

    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    iput-object v0, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v5, 0x400000

    or-int/2addr v4, v5

    iput v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v6, :cond_7

    const/4 v6, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/16 v11, 0x10

    const/4 v12, 0x4

    sparse-switch v10, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v10, "--skip-verification"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0x20

    goto/16 :goto_1

    :sswitch_1
    const-string v10, "--force-sdk"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0x18

    goto/16 :goto_1

    :sswitch_2
    const-string v10, "--staged"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0x1c

    goto/16 :goto_1

    :sswitch_3
    const-string v10, "--restrict-permissions"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v6, 0x7

    goto/16 :goto_1

    :sswitch_4
    const-string v10, "--user"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0x14

    goto/16 :goto_1

    :sswitch_5
    const-string v10, "--full"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0x12

    goto/16 :goto_1

    :sswitch_6
    const-string v10, "--apex"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0x19

    goto/16 :goto_1

    :sswitch_7
    const-string v10, "--preload"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0x13

    goto/16 :goto_1

    :sswitch_8
    const-string v10, "--ephemeral"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0xf

    goto/16 :goto_1

    :sswitch_9
    const-string v10, "--originating-uri"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string v10, "--force-queryable"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0x1d

    goto/16 :goto_1

    :sswitch_b
    const-string v10, "--pkg"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0xc

    goto/16 :goto_1

    :sswitch_c
    const-string v10, "--abi"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0xe

    goto/16 :goto_1

    :sswitch_d
    const-string v10, "-t"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v6, 0x3

    goto/16 :goto_1

    :sswitch_e
    const-string v10, "-r"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v6, v8

    goto/16 :goto_1

    :sswitch_f
    const-string v10, "-p"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0xb

    goto/16 :goto_1

    :sswitch_10
    const-string v10, "-i"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v6, v9

    goto/16 :goto_1

    :sswitch_11
    const-string v10, "-g"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v6, 0x6

    goto/16 :goto_1

    :sswitch_12
    const-string v10, "-f"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v6, v12

    goto/16 :goto_1

    :sswitch_13
    const-string v10, "-d"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v6, 0x5

    goto/16 :goto_1

    :sswitch_14
    const-string v10, "-S"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0xd

    goto/16 :goto_1

    :sswitch_15
    const-string v10, "-R"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v6, v1

    goto/16 :goto_1

    :sswitch_16
    const-string v10, "--staged-ready-timeout"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0x1f

    goto/16 :goto_1

    :sswitch_17
    const-string v10, "--multi-package"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0x1b

    goto :goto_1

    :sswitch_18
    const-string v10, "--enable-rollback"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0x1e

    goto :goto_1

    :sswitch_19
    const-string v10, "--referrer"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0xa

    goto :goto_1

    :sswitch_1a
    const-string v10, "--instant"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v6, v11

    goto :goto_1

    :sswitch_1b
    const-string v10, "--instantapp"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0x11

    goto :goto_1

    :sswitch_1c
    const-string v10, "--install-location"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0x15

    goto :goto_1

    :sswitch_1d
    const-string v10, "--dont-kill"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0x8

    goto :goto_1

    :sswitch_1e
    const-string v10, "--force-non-staged"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0x1a

    goto :goto_1

    :sswitch_1f
    const-string v10, "--force-uuid"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0x17

    goto :goto_1

    :sswitch_20
    const-string v10, "--install-reason"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0x16

    :goto_1
    packed-switch v6, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown option "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v8, 0x80000

    or-int/2addr v6, v8

    iput v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->stagedReadyTimeoutMs:J

    goto/16 :goto_2

    :pswitch_2
    iget-object v6, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    if-nez v6, :cond_1

    const-string v6, "com.android.shell"

    iput-object v6, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    :cond_1
    iget v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v8, 0x40000

    or-int/2addr v6, v8

    iput v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setForceQueryable()V

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setMultiPackage()V

    goto/16 :goto_2

    :pswitch_6
    const/4 v5, 0x1

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsApex()V

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    goto/16 :goto_2

    :pswitch_8
    goto/16 :goto_2

    :pswitch_9
    iget v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v6, v6, 0x200

    iput v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    const-string v8, "internal"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iput-object v3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsVirtualPreload()V

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {v0, v8}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsInstantApp(Z)V

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsInstantApp(Z)V

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerShellCommand;->checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_2

    invoke-virtual {v0, v8, v9}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    goto/16 :goto_2

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Size must be positive"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_12
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v6, :cond_3

    goto/16 :goto_2

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing package name"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_13
    iput v9, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing inherit package name"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_14
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    goto :goto_2

    :pswitch_15
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    goto :goto_2

    :pswitch_16
    iget v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_2

    :pswitch_17
    iget v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v8, -0x400001

    and-int/2addr v6, v8

    iput v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_2

    :pswitch_18
    iget v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_2

    :pswitch_19
    iget v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_2

    :pswitch_1a
    iget v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v6, v11

    iput v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_2

    :pswitch_1b
    iget v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v6, v12

    iput v6, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_2

    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing installer package"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1d
    const/4 v4, 0x0

    goto :goto_2

    :pswitch_1e
    nop

    :cond_6
    :goto_2
    goto/16 :goto_0

    :cond_7
    if-eqz v4, :cond_8

    iget v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v1, v9

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :cond_8
    if-eqz v5, :cond_9

    iput-boolean v8, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    :cond_9
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x7ca7efaa -> :sswitch_20
        -0x7449dd03 -> :sswitch_1f
        -0x6c42be18 -> :sswitch_1e
        -0x69f9e586 -> :sswitch_1d
        -0x4e451eb9 -> :sswitch_1c
        -0x43c705c0 -> :sswitch_1b
        -0x38b573bf -> :sswitch_1a
        -0x2a211e41 -> :sswitch_19
        -0x26fa19b2 -> :sswitch_18
        -0xa293dee -> :sswitch_17
        -0x9723f90 -> :sswitch_16
        0x5c5 -> :sswitch_15
        0x5c6 -> :sswitch_14
        0x5d7 -> :sswitch_13
        0x5d9 -> :sswitch_12
        0x5da -> :sswitch_11
        0x5dc -> :sswitch_10
        0x5e3 -> :sswitch_f
        0x5e5 -> :sswitch_e
        0x5e7 -> :sswitch_d
        0x2900ec8 -> :sswitch_c
        0x290482c -> :sswitch_b
        0x4991420 -> :sswitch_a
        0x8d57768 -> :sswitch_9
        0x3eb0e7fd -> :sswitch_8
        0x3fa0d469 -> :sswitch_7
        0x4f71fec2 -> :sswitch_6
        0x4f74582f -> :sswitch_5
        0x4f7b216b -> :sswitch_4
        0x59147c93 -> :sswitch_3
        0x59daeac6 -> :sswitch_2
        0x781e9cb8 -> :sswitch_1
        0x79732a09 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseIntentAndUser()Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$4;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerShellCommand$4;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {p0, v0}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    return-object v0
.end method

.method private printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    .locals 3

    if-nez p4, :cond_0

    if-eqz p5, :cond_5

    :cond_0
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    if-nez p5, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " preferredOrder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " match=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " specificIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/content/pm/ResolveInfo;->specificIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isDefault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {p3, p1, p2}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method private static printSession(Ljava/io/PrintWriter;Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V
    .locals 2

    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlySessionId:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; appPackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; isStaged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; isReady = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; isApplied = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; isFailed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; errorMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getStagedSessionErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private printSessionList(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;",
            "Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    iget-boolean v3, p3, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlyReady:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getParentSessionId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1, v2, p3}, Lcom/android/server/pm/PackageManagerShellCommand;->printSession(Ljava/io/PrintWriter;Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p3, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlyParent:Z

    if-nez v3, :cond_6

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getChildSessionIds()[I

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_5

    aget v5, v3, v4

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInstaller$SessionInfo;

    if-nez v5, :cond_4

    iget-boolean v6, p3, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlySessionId:Z

    if-eqz v6, :cond_3

    aget v6, v3, v4

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    goto :goto_3

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sessionId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v3, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "; not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-static {p1, v5, p3}, Lcom/android/server/pm/PackageManagerShellCommand;->printSession(Ljava/io/PrintWriter;Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_6
    goto :goto_1

    :cond_7
    return-void
.end method

.method private processArgForLocalFile(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->getFileStatSize(Ljava/io/File;)J

    move-result-wide v12

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forLocalFile(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v14

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".idsig"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v0, "r"

    invoke-virtual {v1, v15, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    if-eqz v16, :cond_0

    :try_start_0
    invoke-static/range {v16 .. v16}, Landroid/os/incremental/V4Signature;->readFrom(Landroid/os/ParcelFileDescriptor;)Landroid/os/incremental/V4Signature;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/incremental/V4Signature;->toByteArray()[B

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v5

    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v0, v4

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v5, "PackageManagerShellCommand"

    const-string v6, "V4 signature file exists but failed to be parsed."

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    :goto_0
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_0
    :goto_1
    move-object v0, v4

    :goto_2
    const/4 v5, 0x0

    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->toByteArray()[B

    move-result-object v9

    move-object/from16 v4, p2

    move-object v6, v11

    move-wide v7, v12

    move-object v10, v0

    invoke-virtual/range {v4 .. v10}, Landroid/content/pm/PackageInstaller$Session;->addFile(ILjava/lang/String;J[B[B)V

    return-void
.end method

.method private processArgForStdin(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;)I
    .locals 13

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    array-length v4, v0

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Must specify file name and size"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_0
    const/4 v4, 0x0

    aget-object v8, v0, v4

    aget-object v6, v0, v3

    invoke-static {v6}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide v9

    move-object v6, v8

    array-length v7, v0

    if-le v7, v5, :cond_1

    aget-object v7, v0, v5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    aget-object v5, v0, v5

    move-object v6, v5

    goto :goto_0

    :cond_1
    move-object v5, v6

    :goto_0
    array-length v6, v0

    const/4 v7, 0x3

    if-le v6, v7, :cond_2

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v6

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v6

    move-object v1, v6

    :cond_2
    array-length v6, v0

    const/4 v7, 0x4

    if-le v6, v7, :cond_4

    aget-object v6, v0, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v6

    move v2, v6

    if-ltz v2, :cond_3

    if-le v2, v3, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported streaming version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    return v3

    :cond_4
    nop

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Empty file name in: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_5
    if-eqz v1, :cond_8

    if-nez v2, :cond_6

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forDataOnlyStreaming(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v6

    goto :goto_1

    :cond_6
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forStreaming(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v6

    :goto_1
    nop

    :try_start_1
    array-length v7, v1

    if-lez v7, :cond_7

    invoke-static {v1}, Landroid/os/incremental/V4Signature;->readFrom([B)Landroid/os/incremental/V4Signature;

    move-result-object v7

    if-nez v7, :cond_7

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "V4 signature is invalid in: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :cond_7
    move-object v3, v6

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "V4 signature is invalid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_8
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forStdIn(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v6

    move-object v3, v6

    :goto_2
    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->toByteArray()[B

    move-result-object v11

    move-object v6, p2

    move-object v12, v1

    invoke-virtual/range {v6 .. v12}, Landroid/content/pm/PackageInstaller$Session;->addFile(ILjava/lang/String;J[B[B)V

    return v4

    :catch_1
    move-exception v4

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to parse file parameters: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3
.end method

.method private removeUser(Landroid/os/IUserManager;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManagerShellCommand"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, p2}, Landroid/os/IUserManager;->removeUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Success: removed user"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: couldn\'t remove user id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method private removeUserOrSetEphemeral(Landroid/os/IUserManager;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " or set as ephemeral if in use."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManagerShellCommand"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/os/IUserManager;->removeUserOrSetEphemeral(IZ)I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v0, "Error: couldn\'t remove or mark ephemeral user id %d\n"

    invoke-virtual {v3, v0, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v2

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v4, "Success: user %d is already being removed\n"

    invoke-virtual {v3, v4, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v4, "Success: user %d set as ephemeral\n"

    invoke-virtual {v3, v4, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v4, "Success: user %d removed\n"

    invoke-virtual {v3, v4, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runBypassAllowedApexUpdateCheck()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageInstaller;->bypassNextAllowedApexUpdateCheck(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, -0x1

    return v2
.end method

.method private runBypassStagedInstallerCheck()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageInstaller;->bypassNextStagedInstallerCheck(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, -0x1

    return v2
.end method

.method private runClear()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no package specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_1
    const/16 v4, -0x2710

    const-string v5, "runClear"

    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v4

    new-instance v5, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;

    invoke-direct {v5}, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;-><init>()V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7, v5, v4}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    monitor-enter v5

    :goto_0
    :try_start_0
    iget-boolean v6, v5, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_2

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_1

    :cond_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v6, v5, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->result:Z

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v6, "Success"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    const-string v7, "Failed"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method private runCompile()I
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "dalvik.vm.usejitprofiles"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v13

    move-object v15, v13

    const/4 v3, 0x1

    if-eqz v13, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v13, "--check-prof"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v14, 0x6

    goto :goto_2

    :sswitch_1
    const-string v13, "--compile-layouts"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v14, 0x5

    goto :goto_2

    :sswitch_2
    const-string v13, "--secondary-dex"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v14, 0x8

    goto :goto_2

    :sswitch_3
    const-string v13, "-r"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v14, 0x4

    goto :goto_2

    :sswitch_4
    const-string v13, "-m"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v14, 0x3

    goto :goto_2

    :sswitch_5
    const-string v13, "-f"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v14, 0x2

    goto :goto_2

    :sswitch_6
    const-string v13, "-c"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move v14, v3

    goto :goto_2

    :sswitch_7
    const-string v13, "-a"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v14, 0x0

    goto :goto_2

    :sswitch_8
    const-string v13, "--split"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v14, 0x9

    goto :goto_2

    :sswitch_9
    const-string v13, "--reset"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v14, 0x7

    goto :goto_2

    :goto_1
    const/4 v14, -0x1

    :goto_2
    packed-switch v14, :pswitch_data_0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error: Unknown option: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto :goto_3

    :pswitch_1
    const/4 v3, 0x1

    move v10, v3

    goto :goto_3

    :pswitch_2
    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v6, "install"

    move-object v8, v6

    move v6, v4

    move v4, v3

    goto :goto_3

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_3

    :pswitch_4
    const/4 v3, 0x1

    move v12, v3

    goto :goto_3

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    goto :goto_3

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto :goto_3

    :pswitch_7
    const/4 v3, 0x1

    move v4, v3

    goto :goto_3

    :pswitch_8
    const/4 v3, 0x1

    move v6, v3

    goto :goto_3

    :pswitch_9
    const/4 v3, 0x1

    move v5, v3

    :goto_3
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_1
    if-eqz v9, :cond_4

    const-string v13, "true"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v2, 0x1

    goto :goto_4

    :cond_2
    const-string v13, "false"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v2, 0x0

    goto :goto_4

    :cond_3
    const-string v13, "Invalid value for \"--check-prof\". Expected \"true\" or \"false\"."

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_4
    :goto_4
    if-eqz v7, :cond_5

    move v13, v3

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    :goto_5
    move/from16 v20, v13

    if-eqz v8, :cond_6

    move v13, v3

    goto :goto_6

    :cond_6
    const/4 v13, 0x0

    :goto_6
    move/from16 v21, v13

    if-nez v20, :cond_7

    if-nez v21, :cond_7

    if-eqz v12, :cond_b

    :cond_7
    if-nez v20, :cond_8

    if-eqz v21, :cond_8

    if-nez v12, :cond_b

    :cond_8
    if-eqz v20, :cond_9

    if-nez v21, :cond_9

    if-nez v12, :cond_b

    :cond_9
    if-eqz v20, :cond_a

    if-eqz v21, :cond_a

    if-eqz v12, :cond_b

    :cond_a
    if-eqz v20, :cond_c

    if-eqz v21, :cond_c

    if-eqz v12, :cond_c

    :cond_b
    const-string v13, "Must specify exactly one of compilation filter (\"-m\"), compilation reason (\"-r\"), or compile layouts (\"--compile-layouts\")"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_c
    if-eqz v5, :cond_d

    if-eqz v11, :cond_d

    const-string v13, "-a cannot be specified together with --split"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_d
    if-eqz v10, :cond_e

    if-eqz v11, :cond_e

    const-string v13, "--secondary-dex cannot be specified together with --split"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_e
    const/4 v13, 0x0

    if-eqz v20, :cond_10

    invoke-static {v7}, Ldalvik/system/DexFile;->isValidCompilerFilter(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_f

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: \""

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" is not a valid compilation filter."

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :cond_f
    move-object v13, v7

    :cond_10
    if-eqz v21, :cond_14

    const/4 v3, -0x1

    const/16 v16, 0x0

    move/from16 v14, v16

    :goto_7
    move/from16 v16, v3

    sget-object v3, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v14, v3, :cond_12

    sget-object v3, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v3, v3, v14

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move v3, v14

    goto :goto_8

    :cond_11
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v16

    goto :goto_7

    :cond_12
    move/from16 v3, v16

    :goto_8
    const/4 v14, -0x1

    if-ne v3, v14, :cond_13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v7

    const-string v7, "Error: Unknown compilation reason: "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x1

    return v7

    :cond_13
    move-object/from16 v22, v7

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    goto :goto_9

    :cond_14
    move-object/from16 v22, v7

    move-object v3, v13

    :goto_9
    const/4 v7, 0x0

    if-eqz v5, :cond_15

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v13}, Landroid/content/pm/IPackageManager;->getAllPackages()Ljava/util/List;

    move-result-object v7

    goto :goto_a

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_16

    const-string v14, "Error: package name not specified"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :cond_16
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    :goto_a
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v13

    const/4 v13, 0x0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_b
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1c

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v24, v8

    move-object/from16 v8, v16

    check-cast v8, Ljava/lang/String;

    if-eqz v6, :cond_17

    move/from16 v25, v6

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v8}, Landroid/content/pm/IPackageManager;->clearApplicationProfileData(Ljava/lang/String;)V

    goto :goto_c

    :cond_17
    move/from16 v25, v6

    :goto_c
    if-eqz v5, :cond_18

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v26, v5

    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    move v5, v13

    goto :goto_d

    :cond_18
    move/from16 v26, v5

    move v5, v13

    :goto_d
    const/4 v6, 0x1

    if-eqz v12, :cond_19

    const-class v13, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v13, v8}, Landroid/content/pm/PackageManagerInternal;->compileLayouts(Ljava/lang/String;)Z

    move-result v6

    move-object v0, v14

    move-object/from16 v27, v15

    goto :goto_f

    :cond_19
    if-eqz v10, :cond_1a

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v13, v8, v3, v4}, Landroid/content/pm/IPackageManager;->performDexOptSecondary(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    move-object v0, v14

    move-object/from16 v27, v15

    goto :goto_e

    :cond_1a
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/16 v18, 0x1

    move-object v0, v14

    move-object v14, v8

    move-object/from16 v27, v15

    move v15, v2

    move-object/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v19, v11

    invoke-interface/range {v13 .. v19}, Landroid/content/pm/IPackageManager;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z

    move-result v13

    :goto_e
    move v6, v13

    :goto_f
    if-nez v6, :cond_1b

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    move-object v14, v0

    move v13, v5

    move-object/from16 v8, v24

    move/from16 v6, v25

    move/from16 v5, v26

    move-object/from16 v15, v27

    move-object/from16 v0, p0

    goto/16 :goto_b

    :cond_1c
    move/from16 v26, v5

    move/from16 v25, v6

    move-object/from16 v24, v8

    move-object v0, v14

    move-object/from16 v27, v15

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1d

    const-string v5, "Success"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    return v5

    :cond_1d
    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure: package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " could not be compiled"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    :cond_1e
    const-string v5, "Failure: the following packages could not be compiled: "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v5, :cond_1f

    const/4 v5, 0x0

    goto :goto_11

    :cond_1f
    const-string v14, ", "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_11
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_10

    :cond_20
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const/4 v6, 0x1

    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60476451 -> :sswitch_9
        -0x60346686 -> :sswitch_8
        0x5d4 -> :sswitch_7
        0x5d6 -> :sswitch_6
        0x5d9 -> :sswitch_5
        0x5e0 -> :sswitch_4
        0x5e5 -> :sswitch_3
        0x4baaae9e -> :sswitch_2
        0x4ee8cb4f -> :sswitch_1
        0x64c6429e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runDexoptJob()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->runBackgroundDexoptJob(Ljava/util/List;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    if-eqz v1, :cond_2

    const-string v4, "Success"

    goto :goto_2

    :cond_2
    const-string v4, "Failure"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    const/4 v3, -0x1

    :goto_3
    return v3
.end method

.method private runDump()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no package specified"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/app/ActivityManager;->dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method private runDumpProfiles()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->dumpProfiles(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method private runGetHarmfulAppWarning()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x2

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_1

    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1

    :cond_1
    const/16 v1, -0x2710

    const-string v3, "runGetHarmfulAppWarning"

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v3, v1}, Landroid/content/pm/IPackageManager;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v5, 0x0

    return v5

    :cond_2
    const/4 v5, 0x1

    return v5
.end method

.method private runGetInstallLocation()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getInstallLocation()I

    move-result v0

    const-string v1, "invalid"

    if-nez v0, :cond_0

    const-string v1, "auto"

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v1, "internal"

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const-string v1, "external"

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method private runGetInstantAppResolver()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getInstantAppResolverComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method private runGetModuleInfo()I
    .locals 12

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v2, "--installed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :sswitch_1
    const-string v2, "--all"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    :goto_1
    move v4, v5

    :goto_2
    packed-switch v4, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :pswitch_0
    goto :goto_3

    :pswitch_1
    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    nop

    :goto_3
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    const-string v6, " packageName: "

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, v2, v1}, Landroid/content/pm/IPackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/pm/ModuleInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_2
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, v1}, Landroid/content/pm/IPackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ModuleInfo;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/content/pm/ModuleInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_3
    :goto_5
    nop

    return v4

    :catch_0
    move-exception v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x2901001 -> :sswitch_1
        0x1ed785da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runGetOemPermissions()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no package specified."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/SystemConfig;->getOemPermissions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "{}"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    const/4 v2, 0x0

    return v2
.end method

.method private runGetPrivappDenyPermissions()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no package specified."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isVendorApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getVendorPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isProductApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getProductPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isSystemExtApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getSystemExtPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    if-nez v1, :cond_4

    const-string v3, "{}"

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method private runGetPrivappPermissions()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no package specified."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isVendorApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getVendorPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isProductApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getProductPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isSystemExtApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getSystemExtPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    if-nez v1, :cond_4

    const-string v3, "{}"

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method private runGrantRevokePermission(Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_1

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no package specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, "Error: no permission specified"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_3
    const/16 v3, -0x2710

    const-string v5, "runGrantRevokePermission"

    invoke-direct {p0, v0, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    if-eqz p1, :cond_4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    invoke-virtual {v5, v2, v4, v3}, Landroid/permission/PermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v4, v3, v6}, Landroid/permission/PermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    :goto_1
    const/4 v5, 0x0

    return v5
.end method

.method private runHasFeature()I
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v3, "Error: expected FEATURE name"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :goto_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v1, v5}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_2

    move v2, v4

    :cond_2
    return v2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :catch_1
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: illegal version number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method

.method private runIncrementalInstall()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getIncrementalDataLoaderParams(Landroid/os/ShellCommand;)Landroid/content/pm/DataLoaderParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setDataLoaderParams(Landroid/content/pm/DataLoaderParams;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I

    move-result v1

    return v1
.end method

.method private runInstall()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I

    move-result v0

    return v0
.end method

.method private runInstallAbandon()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I

    move-result v1

    return v1
.end method

.method private runInstallAddSession()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/IntArray;->add(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_1

    const-string v3, "Error: At least two sessions are required."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_1
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    invoke-direct {p0, v1, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doInstallAddSession(I[IZ)I

    move-result v3

    return v3
.end method

.method private runInstallCommit()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-wide/32 v1, 0xea60

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    goto :goto_1

    :pswitch_0
    const-string v6, "--staged-ready-timeout"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :goto_1
    move v5, v3

    :goto_2
    packed-switch v5, :pswitch_data_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    nop

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    return v5

    :cond_2
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v7

    if-eqz v7, :cond_3

    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_3

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doWaitForStagedSessionReady(IJLjava/io/PrintWriter;)I

    move-result v5

    return v5

    :cond_3
    const-string v7, "Success"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    nop

    :pswitch_data_0
    .packed-switch -0x9723f90
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private runInstallCreate()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Success: created install session ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    return v3
.end method

.method private runInstallExisting()I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const/4 v0, -0x2

    const/high16 v3, 0x400000

    const/4 v4, 0x0

    move v11, v3

    move v12, v4

    move v3, v0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v4, "--restrict-permissions"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v14, 0x5

    goto :goto_2

    :sswitch_1
    const-string v4, "--wait"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v14, 0x4

    goto :goto_2

    :sswitch_2
    const-string v4, "--user"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :sswitch_3
    const-string v4, "--full"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v14, 0x3

    goto :goto_2

    :sswitch_4
    const-string v4, "--ephemeral"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v14, v15

    goto :goto_2

    :sswitch_5
    const-string v4, "--instant"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v14, 0x2

    goto :goto_2

    :goto_1
    move v14, v0

    :goto_2
    packed-switch v14, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v15

    :pswitch_0
    const v0, -0x400001

    and-int/2addr v0, v11

    move v11, v0

    goto :goto_3

    :pswitch_1
    const/4 v0, 0x1

    move v12, v0

    goto :goto_3

    :pswitch_2
    and-int/lit16 v0, v11, -0x801

    or-int/lit16 v0, v0, 0x4000

    move v11, v0

    goto :goto_3

    :pswitch_3
    or-int/lit16 v0, v11, 0x800

    and-int/lit16 v0, v0, -0x4001

    move v11, v0

    goto :goto_3

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    :goto_3
    goto/16 :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    const-string v0, "Error: package name not specified"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v15

    :cond_2
    const/16 v0, -0x2710

    const-string v4, "runInstallExisting"

    invoke-direct {v1, v3, v0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v9

    const/16 v16, 0x0

    if-eqz v12, :cond_4

    :try_start_0
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Installing package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v17, 0x0

    move-object v5, v10

    move v6, v11

    move/from16 v7, v16

    move/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v10, v17

    :try_start_1
    invoke-interface/range {v4 .. v10}, Landroid/content/pm/IPackageInstaller;->installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.content.pm.extra.STATUS"

    invoke-virtual {v5, v6, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "Received intent for package install"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v6, :cond_3

    goto :goto_4

    :cond_3
    move v14, v15

    :goto_4
    return v14

    :catch_0
    move-exception v0

    move/from16 v7, v18

    move-object/from16 v6, v19

    goto :goto_5

    :catch_1
    move-exception v0

    move v7, v9

    move-object v6, v10

    goto :goto_5

    :cond_4
    move/from16 v18, v9

    move-object/from16 v19, v10

    :try_start_2
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v9, 0x0

    move-object/from16 v5, v19

    move/from16 v6, v18

    move v7, v11

    move/from16 v8, v16

    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    const/4 v4, -0x3

    const-string v5, "Package "

    if-eq v0, v4, :cond_5

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v6, v19

    :try_start_4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " installed for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    move/from16 v7, v18

    :try_start_5
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v14

    :catch_2
    move-exception v0

    move/from16 v7, v18

    goto :goto_5

    :cond_5
    move/from16 v7, v18

    move-object/from16 v6, v19

    new-instance v4, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " doesn\'t exist"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move/from16 v7, v18

    move-object/from16 v6, v19

    :goto_5
    invoke-virtual {v0}, Landroid/util/AndroidException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v15

    :sswitch_data_0
    .sparse-switch
        -0x38b573bf -> :sswitch_5
        0x3eb0e7fd -> :sswitch_4
        0x4f74582f -> :sswitch_3
        0x4f7b216b -> :sswitch_2
        0x4f7bc715 -> :sswitch_1
        0x59147c93 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runInstallRemove()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const-string v3, "Error: split name not specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_0
    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doRemoveSplits(ILjava/util/Collection;Z)I

    move-result v3

    return v3
.end method

.method private runInstallWrite()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    if-eqz v2, :cond_1

    const-string v2, "-S"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v12

    const/4 v8, 0x1

    move-object v2, p0

    move v3, v10

    move-object v4, v12

    move-wide v5, v0

    move-object v7, v11

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I

    move-result v2

    return v2
.end method

.method private runList()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    const-string v3, "Error: didn\'t specify type of data to list"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v3, "permissions"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_1
    const-string v3, "libraries"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string v3, "packages"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_3
    const-string v3, "instrumentation"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_4
    const-string v3, "users"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_5
    const-string v3, "features"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :sswitch_6
    const-string v3, "package"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_7
    const-string v3, "permission-groups"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_8
    const-string v3, "staged-sessions"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x7

    goto :goto_1

    :goto_0
    move v3, v2

    :goto_1
    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown list type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :pswitch_0
    const-string v2, "user"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const-string v2, "list"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getShellCallback()Landroid/os/ShellCallback;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->adoptResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v11

    invoke-interface/range {v5 .. v11}, Landroid/os/IBinder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    return v4

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListStagedSessions()I

    move-result v2

    return v2

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPermissions()I

    move-result v2

    return v2

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPermissionGroups()I

    move-result v2

    return v2

    :pswitch_4
    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result v2

    return v2

    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListLibraries()I

    move-result v2

    return v2

    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListInstrumentation()I

    move-result v2

    return v2

    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListFeatures()I

    move-result v2

    return v2

    :sswitch_data_0
    .sparse-switch
        -0x431ede9c -> :sswitch_8
        -0x3b73d86e -> :sswitch_7
        -0x301acbba -> :sswitch_6
        -0x11531bc3 -> :sswitch_5
        0x6a68e08 -> :sswitch_4
        0x20752f6e -> :sswitch_3
        0x2cc154ed -> :sswitch_2
        0x3071b299 -> :sswitch_1
        0x4392f484 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runListFeatures()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerShellCommand$1;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/FeatureInfo;

    const-string v6, "feature:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v5, Landroid/content/pm/FeatureInfo;->version:I

    if-lez v6, :cond_1

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v5, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    :cond_1
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_2

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reqGlEsVersion=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method private runListInstrumentation()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    goto :goto_1

    :pswitch_0
    const-string v4, "-f"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_2

    :goto_1
    move v4, v3

    :goto_2
    packed-switch v4, :pswitch_data_1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_3

    :pswitch_1
    const/4 v1, 0x1

    goto :goto_4

    :goto_3
    const/16 v6, 0x2d

    if-eq v4, v6, :cond_1

    move-object v2, v5

    :goto_4
    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown option: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_2
    nop

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v2, v6}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$2;

    invoke-direct {v4, p0}, Lcom/android/server/pm/PackageManagerShellCommand$2;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_5

    :cond_3
    move v4, v6

    :goto_5
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/InstrumentationInfo;

    const-string v8, "instrumentation:"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    iget-object v8, v7, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "="

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, " (target="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v7, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, ")"

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_5
    return v6

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x5d9
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private runListLibraries()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/server/pm/PackageManagerShellCommand$3;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PackageManagerShellCommand$3;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "library:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private runListPackages(Z)I
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    move v13, v11

    move v14, v12

    move v11, v9

    move v12, v10

    move v9, v7

    move v10, v8

    move v7, v5

    move v8, v6

    move v5, v3

    move v6, v4

    move/from16 v3, p1

    move v4, v0

    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 p1, v0

    const v16, 0x402000

    const/16 v17, 0x1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    sparse-switch v0, :sswitch_data_0

    move-object/from16 v0, p1

    goto/16 :goto_2

    :sswitch_0
    :try_start_2
    const-string v0, "--apex-only"

    move-object/from16 v15, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v17, 0xb

    goto/16 :goto_1

    :sswitch_1
    move-object/from16 v15, p1

    const-string v0, "--user"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v17, 0xc

    goto :goto_1

    :sswitch_2
    move-object/from16 v15, p1

    const-string v0, "--uid"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v17, 0xd

    goto :goto_1

    :sswitch_3
    move-object/from16 v15, p1

    const-string v0, "-u"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v17, 0x8

    goto :goto_1

    :sswitch_4
    move-object/from16 v15, p1

    const-string v0, "-s"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v17, 0x6

    goto :goto_1

    :sswitch_5
    move-object/from16 v15, p1

    const-string v0, "-l"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v17, 0x5

    goto :goto_1

    :sswitch_6
    move-object/from16 v15, p1

    const-string v0, "-i"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v17, 0x4

    goto :goto_1

    :sswitch_7
    move-object/from16 v15, p1

    const-string v0, "-f"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v17, 0x3

    goto :goto_1

    :sswitch_8
    move-object/from16 v15, p1

    const-string v0, "-e"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    move-object v0, v15

    goto :goto_3

    :cond_0
    move-object v0, v15

    goto :goto_2

    :sswitch_9
    move-object/from16 v0, p1

    const-string v15, "-d"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/16 v17, 0x0

    goto :goto_3

    :sswitch_a
    move-object/from16 v0, p1

    const-string v15, "-a"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/16 v17, 0x2

    goto :goto_3

    :sswitch_b
    move-object/from16 v0, p1

    const-string v15, "-U"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/16 v17, 0x7

    goto :goto_3

    :sswitch_c
    move-object/from16 v0, p1

    const-string v15, "-3"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/16 v17, 0x9

    goto :goto_3

    :sswitch_d
    move-object/from16 v0, p1

    const-string v15, "--show-versioncode"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v15, :cond_1

    const/16 v17, 0xa

    goto :goto_3

    :catch_0
    move-exception v0

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v21, v14

    goto/16 :goto_c

    :cond_1
    :goto_2
    const/16 v17, -0x1

    :goto_3
    packed-switch v17, :pswitch_data_0

    :try_start_3
    new-instance v15, Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :pswitch_0
    const/4 v10, 0x1

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move v13, v15

    goto :goto_4

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v15
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    move v14, v15

    goto :goto_4

    :pswitch_2
    const/high16 v15, 0x40000000    # 2.0f

    or-int/2addr v4, v15

    const/4 v12, 0x1

    goto :goto_4

    :pswitch_3
    const/4 v11, 0x1

    goto :goto_4

    :pswitch_4
    const/4 v8, 0x1

    goto :goto_4

    :pswitch_5
    or-int/lit16 v4, v4, 0x2000

    goto :goto_4

    :pswitch_6
    const/4 v10, 0x1

    goto :goto_4

    :pswitch_7
    const/4 v7, 0x1

    goto :goto_4

    :pswitch_8
    goto :goto_4

    :pswitch_9
    const/4 v9, 0x1

    goto :goto_4

    :pswitch_a
    const/4 v3, 0x1

    goto :goto_4

    :pswitch_b
    or-int v4, v4, v16

    const/high16 v15, 0x20000000

    or-int/2addr v4, v15

    goto :goto_4

    :pswitch_c
    const/4 v6, 0x1

    goto :goto_4

    :pswitch_d
    const/4 v5, 0x1

    nop

    :goto_4
    goto/16 :goto_0

    :goto_5
    :try_start_5
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    move/from16 v18, v10

    :try_start_6
    const-string v10, "Error: Unknown option: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    const/4 v10, -0x1

    return v10

    :catch_1
    move-exception v0

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v21, v14

    move/from16 v10, v18

    goto/16 :goto_c

    :catch_2
    move-exception v0

    move/from16 v18, v10

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v21, v14

    goto/16 :goto_c

    :cond_2
    move-object/from16 v0, p1

    move/from16 v18, v10

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v10, -0x1

    if-ne v14, v10, :cond_3

    or-int v4, v4, v16

    :cond_3
    nop

    const-string v10, "runListPackages"

    const/4 v15, 0x0

    invoke-direct {v1, v14, v15, v10}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v10

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v15, v4, v10}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v15

    move/from16 v16, v4

    invoke-virtual {v15}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    move/from16 v19, v10

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    const/16 v20, 0x0

    move/from16 v21, v14

    move/from16 v14, v20

    :goto_6
    if-ge v14, v10, :cond_15

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v22, v4

    move-object/from16 v4, v20

    check-cast v4, Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_4

    move/from16 v20, v10

    iget-object v10, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    move-object/from16 v24, v0

    move/from16 v26, v5

    move/from16 v27, v6

    move-object/from16 v23, v15

    goto/16 :goto_b

    :cond_4
    move/from16 v20, v10

    :cond_5
    iget-boolean v10, v4, Landroid/content/pm/PackageInfo;->isApex:Z

    move-object/from16 v23, v15

    const/4 v15, -0x1

    if-eq v13, v15, :cond_6

    if-nez v10, :cond_6

    iget-object v15, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v15, v13, :cond_6

    move-object/from16 v24, v0

    move/from16 v26, v5

    move/from16 v27, v6

    goto/16 :goto_b

    :cond_6
    if-nez v10, :cond_7

    iget-object v15, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_7

    move/from16 v15, v17

    goto :goto_7

    :cond_7
    const/4 v15, 0x0

    :goto_7
    if-nez v10, :cond_8

    move-object/from16 v24, v0

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_9

    move/from16 v0, v17

    goto :goto_8

    :cond_8
    move-object/from16 v24, v0

    :cond_9
    const/4 v0, 0x0

    :goto_8
    if-eqz v5, :cond_b

    if-nez v0, :cond_a

    goto :goto_9

    :cond_a
    move/from16 v26, v5

    move/from16 v27, v6

    goto/16 :goto_b

    :cond_b
    :goto_9
    if-eqz v6, :cond_c

    if-eqz v0, :cond_a

    :cond_c
    if-eqz v7, :cond_d

    if-eqz v15, :cond_a

    :cond_d
    if-eqz v8, :cond_e

    if-nez v15, :cond_a

    :cond_e
    if-eqz v12, :cond_f

    if-eqz v10, :cond_a

    :cond_f
    move/from16 v25, v0

    const-string v0, "package:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v3, :cond_10

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_10
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v11, :cond_12

    const-string v0, " versionCode:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_11

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v26, v5

    move/from16 v27, v6

    iget-wide v5, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-virtual {v2, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_a

    :cond_11
    move/from16 v26, v5

    move/from16 v27, v6

    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_a

    :cond_12
    move/from16 v26, v5

    move/from16 v27, v6

    :goto_a
    if-eqz v9, :cond_13

    const-string v0, "  installer="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_13
    if-eqz v18, :cond_14

    if-nez v10, :cond_14

    const-string v0, " uid:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(I)V

    :cond_14
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    :goto_b
    add-int/lit8 v14, v14, 0x1

    move/from16 v10, v20

    move-object/from16 v4, v22

    move-object/from16 v15, v23

    move-object/from16 v0, v24

    move/from16 v5, v26

    move/from16 v6, v27

    goto/16 :goto_6

    :cond_15
    move-object/from16 v24, v0

    const/4 v0, 0x0

    return v0

    :catch_3
    move-exception v0

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v18, v10

    move/from16 v21, v14

    :goto_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, -0x1

    return v5

    :sswitch_data_0
    .sparse-switch
        -0x1d6f426b -> :sswitch_d
        0x5a6 -> :sswitch_c
        0x5c8 -> :sswitch_b
        0x5d4 -> :sswitch_a
        0x5d7 -> :sswitch_9
        0x5d8 -> :sswitch_8
        0x5d9 -> :sswitch_7
        0x5dc -> :sswitch_6
        0x5df -> :sswitch_5
        0x5e6 -> :sswitch_4
        0x5e8 -> :sswitch_3
        0x2905ab0 -> :sswitch_2
        0x4f7b216b -> :sswitch_1
        0x6bd72bd7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runListPermissionGroups()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/permission/PermissionManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PermissionGroupInfo;

    const-string v6, "permission group:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private runListPermissions()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    const/4 v14, 0x0

    if-eqz v6, :cond_1

    const/4 v6, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x1

    sparse-switch v7, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v7, "-u"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v14, 0x4

    goto :goto_2

    :sswitch_1
    const-string v7, "-s"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v14, 0x3

    goto :goto_2

    :sswitch_2
    const-string v7, "-g"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v14, 0x2

    goto :goto_2

    :sswitch_3
    const-string v7, "-f"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v14, v8

    goto :goto_2

    :sswitch_4
    const-string v7, "-d"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :goto_1
    move v14, v6

    :goto_2
    packed-switch v14, :pswitch_data_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v8

    :pswitch_0
    const/4 v3, 0x1

    goto :goto_3

    :pswitch_1
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/4 v4, 0x1

    goto :goto_3

    :pswitch_2
    const/4 v2, 0x1

    goto :goto_3

    :pswitch_3
    const/4 v1, 0x1

    goto :goto_3

    :pswitch_4
    const/4 v5, 0x1

    nop

    :goto_3
    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v6

    if-eqz v2, :cond_3

    move-object/from16 v12, p0

    iget-object v6, v12, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    invoke-virtual {v6, v14}, Landroid/permission/PermissionManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_2

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PermissionGroupInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_3
    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    const-string v11, ""

    if-eqz v5, :cond_4

    const-string v6, "Dangerous Permissions:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v6, p0

    move-object v7, v15

    move v8, v2

    move v9, v1

    move v10, v4

    move-object v14, v11

    move/from16 v11, v16

    move/from16 v12, v17

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    if-eqz v3, :cond_6

    const-string v6, "Normal Permissions:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object v7, v15

    move v8, v2

    move v9, v1

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    goto :goto_6

    :cond_4
    move-object v14, v11

    if-eqz v3, :cond_5

    const-string v6, "Dangerous and Normal Permissions:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v6, p0

    move-object v7, v15

    move v8, v2

    move v9, v1

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    goto :goto_6

    :cond_5
    const-string v6, "All Permissions:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v11, -0x2710

    const/16 v12, 0x2710

    move-object/from16 v6, p0

    move-object v7, v15

    move v8, v2

    move v9, v1

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    :cond_6
    :goto_6
    const/4 v6, 0x0

    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x5d7 -> :sswitch_4
        0x5d9 -> :sswitch_3
        0x5da -> :sswitch_2
        0x5e6 -> :sswitch_1
        0x5e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runListStagedSessions()I
    .locals 7

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "  "

    const/16 v3, 0x78

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    :try_start_0
    new-instance v1, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    const/4 v4, -0x1

    if-eqz v2, :cond_1

    invoke-direct {p0, v3, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->setSessionFlag(Ljava/lang/String;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    return v4

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/IPackageInstaller;->getStagedSessions()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->printSessionList(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    return v2

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    return v4

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private runLogVisibility()I
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v2, "--enable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :sswitch_1
    const-string v2, "--disable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    :goto_1
    move v4, v5

    :goto_2
    packed-switch v4, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_3

    :pswitch_1
    const/4 v1, 0x0

    nop

    :goto_3
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-class v5, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, v2, v1}, Landroid/content/pm/PackageManagerInternal;->setVisibilityLogging(Ljava/lang/String;Z)V

    return v4

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v6, "Error: no package specified"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x49c576b8 -> :sswitch_1
        0x41a27323 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runPath()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no package specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :cond_1
    const/16 v3, -0x2710

    const-string v4, "runPath"

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->displayPackageFilePath(Ljava/lang/String;I)I

    move-result v4

    return v4
.end method

.method private runQueryIntentActivities()I
    .locals 10

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v3, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " activities found:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Landroid/util/PrintWriterPrinter;

    invoke-direct {v5, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    const-string v4, "  Activity #"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "    "

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    goto :goto_3

    :cond_2
    new-instance v4, Landroid/util/PrintWriterPrinter;

    invoke-direct {v4, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const/4 v3, 0x0

    move v9, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    const-string v5, ""

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const-string v3, "No activities found"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_3
    nop

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed calling service"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runQueryIntentReceivers()I
    .locals 10

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v3, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " receivers found:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Landroid/util/PrintWriterPrinter;

    invoke-direct {v5, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    const-string v4, "  Receiver #"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "    "

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    goto :goto_3

    :cond_2
    new-instance v4, Landroid/util/PrintWriterPrinter;

    invoke-direct {v4, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const/4 v3, 0x0

    move v9, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    const-string v5, ""

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const-string v3, "No receivers found"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_3
    nop

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed calling service"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runQueryIntentServices()I
    .locals 10

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v3, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " services found:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Landroid/util/PrintWriterPrinter;

    invoke-direct {v5, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    const-string v4, "  Service #"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "    "

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    goto :goto_3

    :cond_2
    new-instance v4, Landroid/util/PrintWriterPrinter;

    invoke-direct {v4, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const/4 v3, 0x0

    move v9, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    const-string v5, ""

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const-string v3, "No services found"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_3
    nop

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed calling service"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runRemoveSplits(Ljava/lang/String;Ljava/util/Collection;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    iget v3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput-object p1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    nop

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v2, p2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doRemoveSplits(ILjava/util/Collection;Z)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    nop

    if-eqz v3, :cond_0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :cond_0
    :goto_0
    return v6

    :cond_1
    :try_start_2
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_3

    nop

    if-eqz v3, :cond_2

    :try_start_3
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    :cond_2
    :goto_1
    return v6

    :cond_3
    const/4 v3, 0x0

    :try_start_4
    const-string v5, "Success"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    if-eqz v3, :cond_4

    :try_start_5
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v5

    :cond_4
    :goto_2
    return v4

    :catchall_0
    move-exception v5

    if-eqz v3, :cond_5

    :try_start_6
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v4

    :cond_5
    :goto_3
    throw v5
.end method

.method private runResetPermissions()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-interface {v0}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->resetRuntimePermissions()V

    const/4 v0, 0x0

    return v0
.end method

.method private runResolveActivity()I
    .locals 9

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    move-object v8, v2

    if-nez v1, :cond_0

    const-string v2, "No activity found"

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, v8}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v4, ""

    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v2, p0

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    nop

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed calling service"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runRollbackApp()I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-wide/32 v3, 0xea60

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    goto :goto_1

    :pswitch_0
    const-string v7, "--staged-ready-timeout"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :goto_1
    move v6, v0

    :goto_2
    packed-switch v6, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    nop

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x1

    if-nez v7, :cond_2

    const-string v6, "Error: package name not specified"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_2
    :try_start_0
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    const-string v9, "com.android.shell"

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v8, v9, v6, v10}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    new-instance v9, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    const-class v10, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/rollback/RollbackManager;

    const/4 v11, 0x0

    invoke-virtual {v10}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v13}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v15}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v13

    move-object v11, v6

    goto :goto_5

    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    :goto_5
    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    if-nez v11, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No available rollbacks for: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_6
    invoke-virtual {v11}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v13

    invoke-virtual {v10, v6, v12, v13}, Landroid/content/rollback/RollbackManager;->commitRollback(ILjava/util/List;Landroid/content/IntentSender;)V

    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v6

    const-string v12, "android.content.rollback.extra.STATUS"

    invoke-virtual {v6, v12, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failure ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "android.content.rollback.extra.STATUS_MESSAGE"

    invoke-virtual {v6, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_7
    invoke-virtual {v11}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v0

    if-eqz v0, :cond_8

    const-wide/16 v13, 0x0

    cmp-long v0, v3, v13

    if-lez v0, :cond_8

    invoke-virtual {v11}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v0

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->doWaitForStagedSessionReady(IJLjava/io/PrintWriter;)I

    move-result v13

    return v13

    :cond_8
    const-string v0, "Success"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    nop

    :pswitch_data_0
    .packed-switch -0x9723f90
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private runSetDistractingRestriction()I
    .locals 10

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v7, -0x1

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v3, "--user"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_2

    :sswitch_1
    const-string v3, "--flag"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    goto :goto_2

    :goto_1
    move v3, v7

    :goto_2
    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    :cond_1
    goto :goto_3

    :sswitch_2
    const-string v5, "hide-from-suggestions"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_4

    :sswitch_3
    const-string v8, "hide-notifications"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_4

    :goto_3
    move v5, v7

    :goto_4
    packed-switch v5, :pswitch_data_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized flag: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :pswitch_1
    or-int/lit8 v2, v2, 0x1

    goto :goto_5

    :pswitch_2
    or-int/lit8 v2, v2, 0x2

    nop

    :goto_5
    goto :goto_6

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    nop

    :goto_6
    goto/16 :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v5, "Error: package name not specified"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :cond_3
    const/16 v7, -0x2710

    :try_start_0
    const-string v8, "set-distracting"

    invoke-direct {p0, v1, v7, v8}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    new-array v9, v5, [Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-interface {v8, v9, v2, v7}, Landroid/content/pm/IPackageManager;->setDistractingPackageRestrictionsAsUser([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    if-lez v9, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not set restriction for: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :cond_4
    return v5

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x4f74350c -> :sswitch_1
        0x4f7b216b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7eb17863 -> :sswitch_3
        -0x6e6b7989 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private runSetEnabledSetting(I)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no package or component specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_1
    const/16 v2, -0x2710

    const-string v3, "runSetEnabledSetting"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v9

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    const-string v11, " new state: "

    const/4 v12, 0x0

    if-nez v10, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shell:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v8

    move v4, p1

    move v6, v9

    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v8, v9}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerShellCommand;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v12

    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v10, p1, v12, v9}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v10, v9}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerShellCommand;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v12
.end method

.method private runSetHarmfulAppWarning()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x2

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_1

    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1

    :cond_1
    const/16 v1, -0x2710

    const-string v3, "runSetHarmfulAppWarning"

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v3, v4, v1}, Landroid/content/pm/IPackageManager;->setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v5, 0x0

    return v5
.end method

.method private runSetHiddenSetting(Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no package or component specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :cond_1
    const/16 v3, -0x2710

    const-string v4, "runSetHiddenSetting"

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v2, p1, v3}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " new hidden state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    return v4
.end method

.method private runSetHomeActivity()I
    .locals 18

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    goto :goto_1

    :pswitch_0
    const-string v7, "--user"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :goto_1
    move v5, v0

    :goto_2
    packed-switch v5, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    nop

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    const/16 v0, 0x2f

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    move-object v0, v7

    move-object v8, v0

    goto :goto_4

    :cond_2
    if-eqz v7, :cond_3

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_4

    const-string v5, "Error: invalid component name"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :cond_4
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    :goto_4
    const/16 v0, -0x2710

    const-string v9, "runSetHomeActivity"

    invoke-direct {v1, v3, v0, v9}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v16

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v15, v0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    const-class v9, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/role/RoleManager;

    const-string v10, "android.app.role.HOME"

    const/4 v12, 0x0

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v13

    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v14

    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v0, v15}, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CompletableFuture;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v11, v8

    move-object/from16 v17, v15

    move-object v15, v0

    :try_start_1
    invoke-virtual/range {v9 .. v15}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v10, "Success"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_5
    const-string v5, "Error: Failed to set default home."

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v17, v15

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x4f7b216b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private runSetInstallLocation()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Error: install location has to be a number."

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v3, "Error: no install location specified."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v3}, Landroid/content/pm/IPackageManager;->setInstallLocation(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method

.method private runSetInstaller()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v0, v1}, Landroid/content/pm/IPackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Success"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Must provide both target and installer package names"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2
.end method

.method private runSetPermissionEnforced()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no permission specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no enforcement specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private runSetSilentUpdatesPolicy()I
    .locals 12

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eqz v4, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v4, "--allow-unlimited-silent-updates"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v6, 0x0

    goto :goto_2

    :sswitch_1
    const-string v4, "--throttle-time"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :sswitch_2
    const-string v4, "--reset"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v6, 0x2

    goto :goto_2

    :goto_1
    move v6, v7

    :goto_2
    packed-switch v6, :pswitch_data_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown option: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    :pswitch_0
    const/4 v3, 0x1

    goto :goto_3

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_3

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    nop

    :goto_3
    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-gez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Invalid value for \"--throttle-time\":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v4

    if-eqz v3, :cond_3

    const/4 v8, 0x0

    invoke-interface {v4, v8}, Landroid/content/pm/IPackageInstaller;->setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V

    const-wide/16 v8, -0x1

    invoke-interface {v4, v8, v9}, Landroid/content/pm/IPackageInstaller;->setSilentUpdatesThrottleTime(J)V

    goto :goto_4

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v4, v1}, Landroid/content/pm/IPackageInstaller;->setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v4, v8, v9}, Landroid/content/pm/IPackageInstaller;->setSilentUpdatesThrottleTime(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_4
    nop

    return v6

    :catch_0
    move-exception v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60476451 -> :sswitch_2
        0x2dfd71f0 -> :sswitch_1
        0x3bbbf162 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runSnapshotProfile()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v9

    const-string v0, "android"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v0, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    const/4 v12, 0x0

    const/4 v13, -0x1

    if-eqz v3, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    goto :goto_1

    :pswitch_0
    const-string v3, "--code-path"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :goto_1
    move v12, v13

    :goto_2
    packed-switch v12, :pswitch_data_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown arg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return v13

    :pswitch_1
    if-eqz v10, :cond_1

    const-string v3, "--code-path cannot be used for the boot image."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return v13

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    nop

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    if-nez v10, :cond_5

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v9, v12, v12}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return v13

    :cond_3
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_4

    move-object v0, v3

    move-object v14, v0

    move-object v15, v3

    goto :goto_3

    :cond_4
    move-object v14, v0

    move-object v15, v3

    goto :goto_3

    :cond_5
    move-object v14, v0

    move-object v15, v3

    :goto_3
    new-instance v7, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "root"

    goto :goto_4

    :cond_6
    const-string v0, "com.android.shell"

    :goto_4
    move-object v8, v0

    if-eqz v10, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    move v0, v12

    :goto_5
    move v6, v0

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getArtManager()Landroid/content/pm/dex/IArtManager;

    move-result-object v0

    invoke-interface {v0, v6, v8}, Landroid/content/pm/dex/IArtManager;->isRuntimeProfilingEnabled(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "Error: Runtime profiling is not enabled"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v13

    :cond_8
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getArtManager()Landroid/content/pm/dex/IArtManager;

    move-result-object v3

    move v4, v6

    move-object v5, v9

    move/from16 v16, v6

    move-object v6, v14

    move-object/from16 v17, v8

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/dex/IArtManager;->snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->waitTillDone()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "Error: callback not called"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->access$300(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;)I

    move-result v0

    return v0

    :cond_9
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-static {v7}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->access$400(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    if-nez v10, :cond_b

    :try_start_1
    invoke-static {v15, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_b
    :goto_6
    const-string v0, ""

    :goto_7
    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/misc/profman/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".prof"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v6, v0

    :try_start_2
    invoke-static {v3, v6}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    const/16 v0, 0x1a4

    invoke-static {v5, v0}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0

    nop

    return v12

    :catchall_0
    move-exception v0

    move-object v8, v0

    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v12, v0

    :try_start_6
    invoke-virtual {v8, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v5, v0

    :try_start_8
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when reading the profile fd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    return v13

    nop

    :pswitch_data_0
    .packed-switch -0x28d32d9b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private runStreamingInstall()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getStreamingDataLoaderParams(Landroid/os/ShellCommand;)Landroid/content/pm/DataLoaderParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setDataLoaderParams(Landroid/content/pm/DataLoaderParams;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I

    move-result v1

    return v1
.end method

.method private runSuspend(Z)I
    .locals 20

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v3, 0x0

    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    new-instance v5, Landroid/os/PersistableBundle;

    invoke-direct {v5}, Landroid/os/PersistableBundle;-><init>()V

    move-object v6, v3

    move v3, v0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x4

    sparse-switch v10, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v10, "--user"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_2

    :sswitch_1
    const-string v8, "--les"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x6

    goto :goto_2

    :sswitch_2
    const-string v8, "--lel"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x5

    goto :goto_2

    :sswitch_3
    const-string v8, "--led"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x7

    goto :goto_2

    :sswitch_4
    const-string v8, "--aes"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x3

    goto :goto_2

    :sswitch_5
    const-string v8, "--ael"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    goto :goto_2

    :sswitch_6
    const-string v8, "--aed"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v11

    goto :goto_2

    :sswitch_7
    const-string v8, "--dialogMessage"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    goto :goto_2

    :goto_1
    move v8, v0

    :goto_2
    packed-switch v8, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Unknown option: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    if-nez p1, :cond_1

    goto :goto_5

    :cond_1
    const-string v9, "--a"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v4

    goto :goto_3

    :cond_2
    move-object v9, v5

    :goto_3
    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    sparse-switch v10, :sswitch_data_1

    goto :goto_4

    :sswitch_8
    invoke-virtual {v9, v0, v8}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :sswitch_9
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v0, v10, v11}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_4

    :sswitch_a
    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v9, v0, v10, v11}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    nop

    :goto_4
    goto :goto_5

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_5

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    :goto_5
    goto/16 :goto_0

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Error: package name not specified"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "root"

    goto :goto_6

    :cond_5
    const-string v0, "com.android.shell"

    :goto_6
    move-object/from16 v18, v0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v0}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    invoke-virtual {v0, v6}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v0

    move-object v11, v0

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    move-object v11, v0

    :goto_7
    const/16 v0, -0x2710

    :try_start_0
    const-string v12, "runSuspend"

    invoke-direct {v1, v3, v0, v12}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v0

    iget-object v12, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    new-array v13, v8, [Ljava/lang/String;

    invoke-interface {v10, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-virtual {v4}, Landroid/os/PersistableBundle;->size()I

    move-result v14

    const/4 v15, 0x0

    if-lez v14, :cond_7

    move-object/from16 v16, v4

    goto :goto_8

    :cond_7
    move-object/from16 v16, v15

    :goto_8
    invoke-virtual {v5}, Landroid/os/PersistableBundle;->size()I

    move-result v14

    if-lez v14, :cond_8

    move-object/from16 v17, v5

    goto :goto_9

    :cond_8
    move-object/from16 v17, v15

    :goto_9
    move/from16 v14, p1

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v11

    move/from16 v19, v0

    invoke-interface/range {v12 .. v19}, Landroid/content/pm/IPackageManager;->setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Ljava/lang/String;I)[Ljava/lang/String;

    const/4 v12, 0x0

    :goto_a
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_9

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " new suspended state: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v15, v13, v0}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_9
    return v8

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    nop

    :sswitch_data_0
    .sparse-switch
        -0x25a4801 -> :sswitch_7
        0x2900f20 -> :sswitch_6
        0x2900f28 -> :sswitch_5
        0x2900f2f -> :sswitch_4
        0x290386b -> :sswitch_3
        0x2903873 -> :sswitch_2
        0x290387a -> :sswitch_1
        0x4f7b216b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_a
        0x6c -> :sswitch_9
        0x73 -> :sswitch_8
    .end sparse-switch
.end method

.method private runTrimCaches()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no size specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_0
    const-wide/16 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    const/4 v7, 0x0

    if-lt v5, v6, :cond_2

    const/16 v6, 0x39

    if-le v5, v6, :cond_1

    goto :goto_0

    :cond_1
    move-wide v8, v2

    move-object v2, v0

    goto :goto_5

    :cond_2
    :goto_0
    const/16 v6, 0x4b

    if-eq v5, v6, :cond_8

    const/16 v6, 0x6b

    if-ne v5, v6, :cond_3

    goto :goto_3

    :cond_3
    const/16 v6, 0x4d

    if-eq v5, v6, :cond_7

    const/16 v6, 0x6d

    if-ne v5, v6, :cond_4

    goto :goto_2

    :cond_4
    const/16 v6, 0x47

    if-eq v5, v6, :cond_6

    const/16 v6, 0x67

    if-ne v5, v6, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid suffix: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_6
    :goto_1
    const-wide/32 v2, 0x40000000

    goto :goto_4

    :cond_7
    :goto_2
    const-wide/32 v2, 0x100000

    goto :goto_4

    :cond_8
    :goto_3
    const-wide/16 v2, 0x400

    :goto_4
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-wide v8, v2

    move-object v2, v0

    :goto_5
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    mul-long v16, v0, v8

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "internal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_6

    :cond_9
    move-object v3, v0

    :goto_6
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;-><init>()V

    move-object v6, v0

    move-object/from16 v1, p0

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v14, 0x2

    move-object v11, v3

    move-wide/from16 v12, v16

    move-object v15, v6

    invoke-interface/range {v10 .. v15}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V

    monitor-enter v6

    :goto_7
    :try_start_1
    iget-boolean v0, v6, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_a

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_8
    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_8

    :cond_a
    :try_start_3
    monitor-exit v6

    return v7

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: expected number at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method private runUninstall()I
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    move-wide v11, v4

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    const/4 v5, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v4, :cond_1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v4, "--versionCode"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_1
    const-string v4, "--user"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v15

    goto :goto_1

    :sswitch_2
    const-string v4, "-k"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v14

    :goto_1
    packed-switch v5, :pswitch_data_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v15

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-wide v11, v4

    goto :goto_2

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :pswitch_2
    or-int/lit8 v2, v2, 0x1

    nop

    :goto_2
    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    const-string v4, "Error: package name not specified"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v15

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {v0, v10, v9}, Lcom/android/server/pm/PackageManagerShellCommand;->runRemoveSplits(Ljava/lang/String;Ljava/util/Collection;)I

    move-result v4

    return v4

    :cond_3
    if-ne v3, v5, :cond_4

    or-int/lit8 v2, v2, 0x2

    :cond_4
    nop

    const-string v4, "runUninstall"

    invoke-direct {v0, v3, v14, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v8

    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    move-object/from16 v22, v4

    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, v10}, Landroid/content/pm/PackageManagerInternal;->isApexPackage(Ljava/lang/String;)Z

    move-result v4

    const-string v7, "]"

    if-eqz v4, :cond_5

    nop

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v16

    move-object v4, v6

    move-object v5, v10

    move-object/from16 v23, v6

    move-object v14, v7

    move-wide v6, v11

    move/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v9, v16

    move-object v15, v10

    move v10, v2

    invoke-virtual/range {v4 .. v10}, Landroid/content/pm/PackageManagerInternal;->uninstallApex(Ljava/lang/String;JILandroid/content/IntentSender;I)V

    move/from16 v6, v24

    goto :goto_5

    :cond_5
    move-object/from16 v23, v6

    move-object v14, v7

    move/from16 v24, v8

    move-object/from16 v25, v9

    move-object v15, v10

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_8

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/high16 v5, 0x4000000

    move/from16 v6, v24

    invoke-interface {v4, v15, v5, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-nez v4, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure [not installed for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    :cond_6
    const/4 v5, 0x1

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v5

    if-eqz v7, :cond_7

    const/4 v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_9

    or-int/lit8 v2, v2, 0x4

    goto :goto_4

    :cond_8
    move/from16 v6, v24

    :cond_9
    :goto_4
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v16

    new-instance v4, Landroid/content/pm/VersionedPackage;

    invoke-direct {v4, v15, v11, v12}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/16 v18, 0x0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v20

    move-object/from16 v17, v4

    move/from16 v19, v2

    move/from16 v21, v6

    invoke-interface/range {v16 .. v21}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    :goto_5
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.content.pm.extra.STATUS"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_a

    const-string v7, "Success"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    return v7

    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x1

    return v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x5de -> :sswitch_2
        0x4f7b216b -> :sswitch_1
        0x704d4945 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runreconcileSecondaryDexFiles()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->reconcileSecondaryDexFiles(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method private setParamsSize(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;Ljava/util/List;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p1

    const-string v2, "Error: Failed to parse APK file: "

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    const/4 v3, 0x0

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "-"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v10, p0

    goto/16 :goto_4

    :cond_0
    const-wide/16 v5, 0x0

    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v7

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    const-string v0, "r"

    move-object/from16 v10, p0

    invoke-virtual {v10, v9, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    if-eqz v11, :cond_2

    nop

    :try_start_0
    invoke-virtual {v7}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-static {v0, v12, v9, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v16, v12

    check-cast v16, Landroid/content/pm/parsing/ApkLite;

    new-instance v12, Landroid/content/pm/parsing/PackageLite;

    const/4 v14, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/parsing/ApkLite;->getTargetSdkVersion()I

    move-result v23

    move-object v13, v12

    invoke-direct/range {v13 .. v23}, Landroid/content/pm/parsing/PackageLite;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II)V

    iget-object v13, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v13, v13, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/io/FileDescriptor;)J

    move-result-wide v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v5, v13

    :try_start_1
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    nop

    :goto_1
    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v12

    invoke-direct {v3, v8, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    :goto_3
    throw v2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Can\'t open file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object/from16 v10, p0

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    return-void

    :cond_4
    move-object/from16 v10, p0

    move-object/from16 v4, p2

    :goto_4
    return-void
.end method

.method private setSessionFlag(Ljava/lang/String;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "--only-ready"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "--only-sessionid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "--only-parent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    iput-boolean v2, p2, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlySessionId:Z

    goto :goto_2

    :pswitch_1
    iput-boolean v2, p2, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlyReady:Z

    goto :goto_2

    :pswitch_2
    iput-boolean v2, p2, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlyParent:Z

    nop

    :goto_2
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a952fb5 -> :sswitch_2
        -0x6e25b510 -> :sswitch_1
        0x4ebe19e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private translateUserId(IILjava/lang/String;)I
    .locals 8

    const/16 v0, -0x2710

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v5, 0x1

    const-string v7, "pm command"

    move v3, p1

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move v1, p2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method private uninstallSystemUpdates(Ljava/lang/String;)I
    .locals 14

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v4

    const v3, 0x102000

    const/4 v10, 0x1

    if-nez p1, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v3, v2}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    move-object v3, v5

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, p1, v3, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v5

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    move-object v12, v5

    invoke-virtual {v12}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Uninstalling updates to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    move-object v13, v5

    new-instance v5, Landroid/content/pm/VersionedPackage;

    iget-object v6, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v7, v12, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-direct {v5, v6, v7}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.content.pm.extra.STATUS"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t uninstall package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    :cond_2
    nop

    if-eqz v1, :cond_3

    return v2

    :cond_3
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public synthetic lambda$runGetOemPermissions$0$PackageManagerShellCommand(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " granted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 8

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v2, "install"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "get-moduleinfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3e

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "log-visibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3f

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "reconcile-secondary-dex-files"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "bypass-allowed-apex-update-check"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x41

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "set-install-location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "disable-until-used"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x21

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1f

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "install-write"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "set-home-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x35

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "trim-caches"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2f

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "force-dex-opt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "query-activities"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "compile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "set-user-restriction"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x32

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "uninstall-system-updates"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3c

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "install-destroy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "snapshot-profile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1b

    goto/16 :goto_1

    :sswitch_12
    const-string v2, "rollback-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3d

    goto/16 :goto_1

    :sswitch_13
    const-string v2, "reset-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2a

    goto/16 :goto_1

    :sswitch_14
    const-string v2, "install-remove"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_15
    const-string v2, "install-add-session"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_16
    const-string v2, "get-harmful-app-warning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3a

    goto/16 :goto_1

    :sswitch_17
    const-string v2, "install-existing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_18
    const-string v2, "grant"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x28

    goto/16 :goto_1

    :sswitch_19
    const-string v2, "clear"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1d

    goto/16 :goto_1

    :sswitch_1a
    const-string v2, "install-streaming"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_1b
    const-string v2, "get-max-users"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x33

    goto/16 :goto_1

    :sswitch_1c
    const-string v2, "move-package"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_1d
    const-string v2, "path"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v6

    goto/16 :goto_1

    :sswitch_1e
    const-string v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto/16 :goto_1

    :sswitch_1f
    const-string v2, "hide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x23

    goto/16 :goto_1

    :sswitch_20
    const-string v2, "dump"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v7

    goto/16 :goto_1

    :sswitch_21
    const-string v2, "move-primary-storage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_22
    const-string v2, "default-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x22

    goto/16 :goto_1

    :sswitch_23
    const-string v2, "install-create"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_24
    const-string v2, "install-commit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_25
    const-string v2, "unsuspend"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x26

    goto/16 :goto_1

    :sswitch_26
    const-string v2, "set-permission-enforced"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2b

    goto/16 :goto_1

    :sswitch_27
    const-string v2, "remove-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x31

    goto/16 :goto_1

    :sswitch_28
    const-string v2, "get-stagedsessions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3b

    goto/16 :goto_1

    :sswitch_29
    const-string v2, "query-receivers"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_2a
    const-string v2, "bg-dexopt-job"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_2b
    const-string v2, "query-services"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto/16 :goto_1

    :sswitch_2c
    const-string v2, "create-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x30

    goto/16 :goto_1

    :sswitch_2d
    const-string v2, "uninstall"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1c

    goto/16 :goto_1

    :sswitch_2e
    const-string v2, "bypass-staged-installer-check"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x40

    goto/16 :goto_1

    :sswitch_2f
    const-string v2, "install-incremental"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_30
    const-string v2, "unhide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x24

    goto/16 :goto_1

    :sswitch_31
    const-string v2, "dump-profiles"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1a

    goto/16 :goto_1

    :sswitch_32
    const-string v2, "revoke"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x29

    goto/16 :goto_1

    :sswitch_33
    const-string v2, "set-distracting-restriction"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x27

    goto/16 :goto_1

    :sswitch_34
    const-string v2, "disable-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto/16 :goto_1

    :sswitch_35
    const-string v2, "get-privapp-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2c

    goto/16 :goto_1

    :sswitch_36
    const-string v2, "get-oem-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2e

    goto/16 :goto_1

    :sswitch_37
    const-string v2, "get-privapp-deny-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2d

    goto/16 :goto_1

    :sswitch_38
    const-string v2, "resolve-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto/16 :goto_1

    :sswitch_39
    const-string v2, "get-instantapp-resolver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x37

    goto/16 :goto_1

    :sswitch_3a
    const-string v2, "enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1e

    goto :goto_1

    :sswitch_3b
    const-string v2, "has-feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x38

    goto :goto_1

    :sswitch_3c
    const-string v2, "set-silent-updates-policy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x42

    goto :goto_1

    :sswitch_3d
    const-string v2, "set-installer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x36

    goto :goto_1

    :sswitch_3e
    const-string v2, "get-max-running-users"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x34

    goto :goto_1

    :sswitch_3f
    const-string v2, "suspend"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x25

    goto :goto_1

    :sswitch_40
    const-string v2, "get-install-location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x12

    goto :goto_1

    :sswitch_41
    const-string v2, "install-abandon"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    goto :goto_1

    :sswitch_42
    const-string v2, "set-harmful-app-warning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x39

    goto :goto_1

    :goto_0
    move v2, v1

    :goto_1
    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mDomainVerificationShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    goto/16 :goto_2

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetSilentUpdatesPolicy()I

    move-result v1

    return v1

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runBypassAllowedApexUpdateCheck()I

    move-result v1

    return v1

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runBypassStagedInstallerCheck()I

    move-result v1

    return v1

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runLogVisibility()I

    move-result v1

    return v1

    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetModuleInfo()I

    move-result v1

    return v1

    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runRollbackApp()I

    move-result v1

    return v1

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->uninstallSystemUpdates(Ljava/lang/String;)I

    move-result v1

    return v1

    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListStagedSessions()I

    move-result v1

    return v1

    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetHarmfulAppWarning()I

    move-result v1

    return v1

    :pswitch_9
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHarmfulAppWarning()I

    move-result v1

    return v1

    :pswitch_a
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runHasFeature()I

    move-result v1

    return v1

    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetInstantAppResolver()I

    move-result v1

    return v1

    :pswitch_c
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetInstaller()I

    move-result v1

    return v1

    :pswitch_d
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHomeActivity()I

    move-result v1

    return v1

    :pswitch_e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetMaxRunningUsers()I

    move-result v1

    return v1

    :pswitch_f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetMaxUsers()I

    move-result v1

    return v1

    :pswitch_10
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetUserRestriction()I

    move-result v1

    return v1

    :pswitch_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runRemoveUser()I

    move-result v1

    return v1

    :pswitch_12
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runCreateUser()I

    move-result v1

    return v1

    :pswitch_13
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runTrimCaches()I

    move-result v1

    return v1

    :pswitch_14
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetOemPermissions()I

    move-result v1

    return v1

    :pswitch_15
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetPrivappDenyPermissions()I

    move-result v1

    return v1

    :pswitch_16
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetPrivappPermissions()I

    move-result v1

    return v1

    :pswitch_17
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetPermissionEnforced()I

    move-result v1

    return v1

    :pswitch_18
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runResetPermissions()I

    move-result v1

    return v1

    :pswitch_19
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runGrantRevokePermission(Z)I

    move-result v1

    return v1

    :pswitch_1a
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runGrantRevokePermission(Z)I

    move-result v1

    return v1

    :pswitch_1b
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetDistractingRestriction()I

    move-result v1

    return v1

    :pswitch_1c
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(Z)I

    move-result v1

    return v1

    :pswitch_1d
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(Z)I

    move-result v1

    return v1

    :pswitch_1e
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHiddenSetting(Z)I

    move-result v1

    return v1

    :pswitch_1f
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHiddenSetting(Z)I

    move-result v1

    return v1

    :pswitch_20
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    :pswitch_21
    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    :pswitch_22
    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    :pswitch_23
    invoke-direct {p0, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    :pswitch_24
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v1

    return v1

    :pswitch_25
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runClear()I

    move-result v1

    return v1

    :pswitch_26
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runUninstall()I

    move-result v1

    return v1

    :pswitch_27
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSnapshotProfile()I

    move-result v1

    return v1

    :pswitch_28
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDumpProfiles()I

    move-result v1

    return v1

    :pswitch_29
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDexoptJob()I

    move-result v1

    return v1

    :pswitch_2a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runForceDexOpt()I

    move-result v1

    return v1

    :pswitch_2b
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runreconcileSecondaryDexFiles()I

    move-result v1

    return v1

    :pswitch_2c
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runCompile()I

    move-result v1

    return v1

    :pswitch_2d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runMovePrimaryStorage()I

    move-result v1

    return v1

    :pswitch_2e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runMovePackage()I

    move-result v1

    return v1

    :pswitch_2f
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallAddSession()I

    move-result v1

    return v1

    :pswitch_30
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetInstallLocation()I

    move-result v1

    return v1

    :pswitch_31
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetInstallLocation()I

    move-result v1

    return v1

    :pswitch_32
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallExisting()I

    move-result v1

    return v1

    :pswitch_33
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallWrite()I

    move-result v1

    return v1

    :pswitch_34
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallRemove()I

    move-result v1

    return v1

    :pswitch_35
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallCreate()I

    move-result v1

    return v1

    :pswitch_36
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallCommit()I

    move-result v1

    return v1

    :pswitch_37
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallAbandon()I

    move-result v1

    return v1

    :pswitch_38
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runIncrementalInstall()I

    move-result v1

    return v1

    :pswitch_39
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runStreamingInstall()I

    move-result v1

    return v1

    :pswitch_3a
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstall()I

    move-result v1

    return v1

    :pswitch_3b
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentReceivers()I

    move-result v1

    return v1

    :pswitch_3c
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentServices()I

    move-result v1

    return v1

    :pswitch_3d
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentActivities()I

    move-result v1

    return v1

    :pswitch_3e
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runResolveActivity()I

    move-result v1

    return v1

    :pswitch_3f
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runList()I

    move-result v1

    return v1

    :pswitch_40
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDump()I

    move-result v1

    return v1

    :pswitch_41
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runPath()I

    move-result v1

    return v1

    :goto_2
    invoke-virtual {v2, p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runCommand(Lcom/android/modules/utils/BasicShellCommandHandler;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v1, v7

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v4, "-l"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result v1

    return v1

    :cond_3
    const-string v4, "-lf"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result v1

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    const-string v4, "-p"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v3, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->displayPackageFilePath(Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d5639bf -> :sswitch_42
        -0x7540f3bd -> :sswitch_41
        -0x737996c2 -> :sswitch_40
        -0x6e635fc4 -> :sswitch_3f
        -0x6e1196e6 -> :sswitch_3e
        -0x67c8bc23 -> :sswitch_3d
        -0x5b75ef1e -> :sswitch_3c
        -0x504e493d -> :sswitch_3b
        -0x4d6ada7d -> :sswitch_3a
        -0x4b90d264 -> :sswitch_39
        -0x495fa230 -> :sswitch_38
        -0x41b47fcb -> :sswitch_37
        -0x410d7369 -> :sswitch_36
        -0x3fd1a8ae -> :sswitch_35
        -0x3d838470 -> :sswitch_34
        -0x38494450 -> :sswitch_33
        -0x37b0f17a -> :sswitch_32
        -0x36d5185d -> :sswitch_31
        -0x321a08a5 -> :sswitch_30
        -0x2c20e158 -> :sswitch_2f
        -0x29ee859f -> :sswitch_2e
        -0x2549d71e -> :sswitch_2d
        -0x202b5604 -> :sswitch_2c
        -0x1b57243d -> :sswitch_2b
        -0x1a825bcc -> :sswitch_2a
        -0x1a490a61 -> :sswitch_29
        -0x18d650e6 -> :sswitch_28
        -0x143f388c -> :sswitch_27
        -0xd1dc6eb -> :sswitch_26
        -0x85b5c7d -> :sswitch_25
        -0x7e40657 -> :sswitch_24
        -0x7bd8e92 -> :sswitch_23
        -0x6dac5fb -> :sswitch_22
        -0x533744c -> :sswitch_21
        0x2f39f4 -> :sswitch_20
        0x30dd42 -> :sswitch_1f
        0x32b09e -> :sswitch_1e
        0x346425 -> :sswitch_1d
        0x120f24a -> :sswitch_1c
        0x5296aa8 -> :sswitch_1b
        0x5951ab0 -> :sswitch_1a
        0x5a5b64d -> :sswitch_19
        0x5e0c11c -> :sswitch_18
        0x664b17d -> :sswitch_17
        0x8569735 -> :sswitch_16
        0xe265438 -> :sswitch_15
        0x1127c8f6 -> :sswitch_14
        0x156ea506 -> :sswitch_13
        0x1678dbb8 -> :sswitch_12
        0x1bde3ea0 -> :sswitch_11
        0x2f90ddc8 -> :sswitch_10
        0x3142fb77 -> :sswitch_f
        0x372512d5 -> :sswitch_e
        0x38a75a33 -> :sswitch_d
        0x3ec9c212 -> :sswitch_c
        0x4308171b -> :sswitch_b
        0x4634ad3c -> :sswitch_a
        0x55326612 -> :sswitch_9
        0x5bb0b12d -> :sswitch_8
        0x639e22e8 -> :sswitch_7
        0x653560d1 -> :sswitch_6
        0x681c75b2 -> :sswitch_5
        0x68bf5845 -> :sswitch_4
        0x6a555f29 -> :sswitch_3
        0x6cc4393b -> :sswitch_2
        0x6ecbfff1 -> :sswitch_1
        0x74ae259b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Package manager (package) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  path [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Print the path to the .apk of the given PACKAGE."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dump PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Print various system state associated with the given PACKAGE."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  has-feature FEATURE_NAME [version]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Prints true and returns exit status 0 when system has a FEATURE_NAME,"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    otherwise prints false and returns exit status 1"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  list features"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Prints all features of the system."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  list instrumentation [-f] [TARGET-PACKAGE]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Prints all test packages; optionally only those targeting TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Options:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -f: dump the name of the .apk file containing the test package"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  list libraries"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Prints all system libraries."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  list packages [-f] [-d] [-e] [-s] [-3] [-i] [-l] [-u] [-U] "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      [--show-versioncode] [--apex-only] [--uid UID] [--user USER_ID] [FILTER]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Prints all packages; optionally only those whose name contains"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    the text in FILTER.  Options are:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -f: see their associated file"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -a: all known packages (but excluding APEXes)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -d: filter to only show disabled packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -e: filter to only show enabled packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -s: filter to only show system packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -3: filter to only show third party packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -i: see the installer for the packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -l: ignored (used for compatibility with older releases)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -U: also show the package UID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -u: also include uninstalled packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --show-versioncode: also show the version code"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --apex-only: only show APEX packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --uid UID: filter to only show packages with the given UID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --user USER_ID: only list packages belonging to the given user"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  list permission-groups"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Prints all known permission groups."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  list permissions [-g] [-f] [-d] [-u] [GROUP]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Prints all known permissions; optionally only those in GROUP.  Options are:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -g: organize by group"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -f: print all information"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -s: short summary"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -d: only list dangerous permissions"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -u: list only the permissions users will see"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  list staged-sessions [--only-ready] [--only-sessionid] [--only-parent]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Prints all staged sessions."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --only-ready: show only staged sessions that are ready"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --only-sessionid: show only sessionId of each session"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --only-parent: hide all children sessions"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  list users"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Prints all users."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  resolve-activity [--brief] [--components] [--query-flags FLAGS]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "       [--user USER_ID] INTENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "    Prints the activity that resolves to the given INTENT."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  query-activities [--brief] [--components] [--query-flags FLAGS]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "    Prints all activities that can handle the given INTENT."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  query-services [--brief] [--components] [--query-flags FLAGS]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "    Prints all services that can handle the given INTENT."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  query-receivers [--brief] [--components] [--query-flags FLAGS]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Prints all broadcast receivers that can handle the given INTENT."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  install [-rtfdgw] [-i PACKAGE] [--user USER_ID|all|current]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "       [-p INHERIT_PACKAGE] [--install-location 0/1/2]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "       [--install-reason 0/1/2/3/4] [--originating-uri URI]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "       [--referrer URI] [--abi ABI_NAME] [--force-sdk]"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "       [--preload] [--instant] [--full] [--dont-kill]"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "       [--enable-rollback]"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "       [--force-uuid internal|UUID] [--pkg PACKAGE] [-S BYTES]"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "       [--apex] [--staged-ready-timeout TIMEOUT]"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "       [PATH [SPLIT...]|-]"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "    Install an application.  Must provide the apk data to install, either as"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "    file path(s) or \'-\' to read from stdin.  Options are:"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "      -R: disallow replacement of existing application"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "      -t: allow test packages"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "      -i: specify package name of installer owning the app"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "      -f: install application on internal flash"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "      -d: allow version code downgrade (debuggable packages only)"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "      -p: partial application install (new split on top of existing pkg)"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "      -g: grant all runtime permissions"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "      -S: size in bytes of package, required for stdin"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --user: install under the given user."

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --dont-kill: installing a new feature split, don\'t kill running app"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --restrict-permissions: don\'t whitelist restricted permissions at install"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --originating-uri: set URI where app was downloaded from"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --referrer: set URI that instigated the install of the app"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --pkg: specify expected package name of app being installed"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --abi: override the default ABI of the platform"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --instant: cause the app to be installed as an ephemeral install app"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --full: cause the app to be installed as a non-ephemeral full app"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --install-location: force the install location:"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "          0=auto, 1=internal only, 2=prefer external"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --install-reason: indicates why the app is being installed:"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "          0=unknown, 1=admin policy, 2=device restore,"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "          3=device setup, 4=user request"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --force-uuid: force install on to disk volume with given UUID"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --apex: install an .apex file, not an .apk"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --staged-ready-timeout: By default, staged sessions wait 60000"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "          milliseconds for pre-reboot verification to complete when"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "          performing staged install. This flag is used to alter the waiting"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "          time. You can skip the waiting time by specifying a TIMEOUT of \'0\'"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "  install-existing [--user USER_ID|all|current]"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "       [--instant] [--full] [--wait] [--restrict-permissions] PACKAGE"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "    Installs an existing application for a new user.  Options are:"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --user: install for the given user."

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --instant: install as an instant app"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --full: install as a full app"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --wait: wait until the package is installed"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "      --restrict-permissions: don\'t whitelist restricted permissions"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "  install-create [-lrtsfdg] [-i PACKAGE] [--user USER_ID|all|current]"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "       [--force-uuid internal|UUID] [--pkg PACKAGE] [--apex] [-S BYTES]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "       [--multi-package] [--staged]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Like \"install\", but starts an install session.  Use \"install-write\""

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    to push data into the session, and \"install-commit\" to finish."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  install-write [-S BYTES] SESSION_ID SPLIT_NAME [PATH|-]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Write an apk into the given install session.  If the path is \'-\', data"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    will be read from stdin.  Options are:"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  install-remove SESSION_ID SPLIT..."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Mark SPLIT(s) as removed in the given install session."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  install-add-session MULTI_PACKAGE_SESSION_ID CHILD_SESSION_IDs"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Add one or more session IDs to a multi-package session."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  install-commit SESSION_ID"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Commit the given active install session, installing the app."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  install-abandon SESSION_ID"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Delete the given active install session."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  set-install-location LOCATION"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Changes the default install location.  NOTE this is only intended for debugging;"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    using this can cause applications to break and other undersireable behavior."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    LOCATION is one of:"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    0 [auto]: Let system decide the best location"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    1 [internal]: Install on internal device storage"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    2 [external]: Install on external media"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  get-install-location"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Returns the current install location: 0, 1 or 2 as per set-install-location."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  move-package PACKAGE [internal|UUID]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  move-primary-storage [internal|UUID]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  uninstall [-k] [--user USER_ID] [--versionCode VERSION_CODE]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "       PACKAGE [SPLIT...]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Remove the given package name from the system.  May remove an entire app"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    if no SPLIT names specified, otherwise will remove only the splits of the"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    given app.  Options are:"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "      -k: keep the data and cache directories around after package removal."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "      --user: remove the app from the given user."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "      --versionCode: only uninstall if the app has the given version code."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  clear [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Deletes all data associated with a package."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  enable [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  disable [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  disable-user [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  disable-until-used [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  default-state [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    These commands change the enabled state of a given package or"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    component (written as \"package/class\")."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  hide [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  unhide [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  suspend [--user USER_ID] PACKAGE [PACKAGE...]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Suspends the specified package(s) (as user)."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  unsuspend [--user USER_ID] PACKAGE [PACKAGE...]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Unsuspends the specified package(s) (as user)."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  set-distracting-restriction [--user USER_ID] [--flag FLAG ...]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "      PACKAGE [PACKAGE...]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Sets the specified restriction flags to given package(s) (for user)."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Flags are:"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "      hide-notifications: Hides notifications from this package"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "      hide-from-suggestions: Hides this package from suggestions"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "        (by the launcher, etc.)"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Any existing flags are overwritten, which also means that if no flags are"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    specified then all existing flags will be cleared."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  grant [--user USER_ID] PACKAGE PERMISSION"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  revoke [--user USER_ID] PACKAGE PERMISSION"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    These commands either grant or revoke permissions to apps.  The permissions"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    must be declared as used in the app\'s manifest, be runtime permissions"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    (protection level dangerous), and the app targeting SDK greater than Lollipop MR1."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  reset-permissions"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Revert all runtime permissions to their default state."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  set-permission-enforced PERMISSION [true|false]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  get-privapp-permissions TARGET-PACKAGE"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Prints all privileged permissions for a package."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  get-privapp-deny-permissions TARGET-PACKAGE"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Prints all privileged permissions that are denied for a package."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  get-oem-permissions TARGET-PACKAGE"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Prints all OEM permissions for a package."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  trim-caches DESIRED_FREE_SPACE [internal|UUID]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Trim cache files to reach the given free space."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Lists the current users."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  create-user [--profileOf USER_ID] [--managed] [--restricted] [--ephemeral]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      [--guest] [--pre-create-only] [--user-type USER_TYPE] USER_NAME"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Create a new user with the given USER_NAME, printing the new user identifier"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    of the user."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    USER_TYPE is the name of a user type, e.g. android.os.usertype.profile.MANAGED."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      If not specified, the default user type is android.os.usertype.full.SECONDARY."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --managed is shorthand for \'--user-type android.os.usertype.profile.MANAGED\'."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --restricted is shorthand for \'--user-type android.os.usertype.full.RESTRICTED\'."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --guest is shorthand for \'--user-type android.os.usertype.full.GUEST\'."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  remove-user [--set-ephemeral-if-in-use] USER_ID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Remove the user with the given USER_IDENTIFIER, deleting all data"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    associated with that user."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --set-ephemeral-if-in-use: If the user is currently running and"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        therefore cannot be removed immediately, mark the user as ephemeral"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        so that it will be automatically removed when possible (after user"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        switch or reboot)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  set-user-restriction [--user USER_ID] RESTRICTION VALUE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  get-max-users"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  get-max-running-users"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  compile [-m MODE | -r REASON] [-f] [-c] [--split SPLIT_NAME]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "          [--reset] [--check-prof (true | false)] (-a | TARGET-PACKAGE)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Trigger compilation of TARGET-PACKAGE or all packages if \"-a\".  Options are:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -a: compile all packages"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -c: clear profile data before compiling"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -f: force compilation even if not needed"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -m: select compilation mode"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "          MODE is one of the dex2oat compiler filters:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "            assume-verified"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "            extract"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "            verify"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "            quicken"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "            space-profile"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "            space"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "            speed-profile"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "            speed"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "            everything"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      -r: select compilation reason"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "          REASON is one of:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "            "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "      --reset: restore package to its post-install state"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --check-prof (true | false): look at profiles when doing dexopt?"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --secondary-dex: compile app secondary dex files"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --split SPLIT: compile only the given split name"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --compile-layouts: compile layout resources for faster inflation"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  force-dex-opt PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Force immediate execution of dex opt for the given PACKAGE."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  bg-dexopt-job"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Execute the background optimizations immediately."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Note that the command only runs the background optimizer logic. It may"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    overlap with the actual job but the job scheduler will not be able to"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    cancel it. It will also run even if the device is not in the idle"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    maintenance mode."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  reconcile-secondary-dex-files TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Reconciles the package secondary dex files with the generated oat files."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dump-profiles TARGET-PACKAGE"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Dumps method/class profile files to"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    /data/misc/profman/TARGET-PACKAGE.txt"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  snapshot-profile TARGET-PACKAGE [--code-path path]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Take a snapshot of the package profiles to"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    /data/misc/profman/TARGET-PACKAGE[-code-path].prof"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    If TARGET-PACKAGE=android it will take a snapshot of the boot image"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  set-home-activity [--user USER_ID] TARGET-COMPONENT"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Set the default home activity (aka launcher)."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    TARGET-COMPONENT can be a package name (com.package.my) or a full"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    component (com.package.my/component.name). However, only the package name"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    matters: the actual component used will be determined automatically from"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    the package."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  set-installer PACKAGE INSTALLER"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Set installer package name"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  get-instantapp-resolver"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Return the name of the component that is the current instant app installer."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  set-harmful-app-warning [--user <USER_ID>] <PACKAGE> [<WARNING>]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Mark the app as harmful with the given warning message."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  get-harmful-app-warning [--user <USER_ID>] <PACKAGE>"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Return the harmful app warning message for the given app, if present"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const-string v2, "  uninstall-system-updates [<PACKAGE>]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Removes updates to the given system application and falls back to its"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    /system version. Does nothing if the given package is not a system app."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    If no package is specified, removes updates to all system applications."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  get-moduleinfo [--all | --installed] [module-name]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Displays module info. If module-name is specified only that info is shown"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    By default, without any argument only installed modules are shown."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --all: show all module info"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --installed: show only installed modules"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  log-visibility [--enable|--disable] <PACKAGE>"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Turns on debug logging when visibility is blocked for the given package."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --enable: turn on debug logging (default)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --disable: turn off debug logging"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  set-silent-updates-policy [--allow-unlimited-silent-updates <INSTALLER>]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "                            [--throttle-time <SECONDS>] [--reset]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Sets the policies of the silent updates."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --allow-unlimited-silent-updates: allows unlimited silent updated"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        installation requests from the installer without the throttle time."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --throttle-time: update the silent updates throttle time in seconds."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      --reset: restore the installer and throttle time to the default, and"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        clear tracks of silent updates in the system."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mDomainVerificationShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->printHelp(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public runCreateUser()I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v19, v1

    move v1, v0

    move-object v0, v2

    move/from16 v2, v19

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    const/4 v11, 0x1

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    const-string v5, "--profileOf"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_0
    const-string v5, "--managed"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "android.os.usertype.profile.MANAGED"

    goto :goto_1

    :cond_1
    const-string v5, "--restricted"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v4, "android.os.usertype.full.RESTRICTED"

    goto :goto_1

    :cond_2
    const-string v5, "--guest"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v4, "android.os.usertype.full.GUEST"

    goto :goto_1

    :cond_3
    const-string v5, "--demo"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v4, "android.os.usertype.full.DEMO"

    goto :goto_1

    :cond_4
    const-string v5, "--ephemeral"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    or-int/lit16 v2, v2, 0x100

    goto :goto_1

    :cond_5
    const-string v5, "--pre-create-only"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    const-string v5, "--user-type"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_8

    if-eqz v0, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: more than one user type was specified ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v11

    :cond_7
    move-object v0, v4

    :cond_8
    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: unknown option "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v11

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_b

    if-nez v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no user name specified."

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v11

    :cond_b
    if-eqz v12, :cond_c

    if-eqz v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Warning: name is ignored for pre-created users"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    move-object v13, v12

    const/4 v14, 0x0

    nop

    const-string v4, "user"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v15

    nop

    const-string v4, "account"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/IAccountManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManager;

    move-result-object v9

    if-nez v0, :cond_d

    invoke-static {v2}, Landroid/content/pm/UserInfo;->getDefaultUserType(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_2

    :cond_d
    move-object v8, v0

    :goto_2
    const/16 v16, 0x0

    :try_start_0
    invoke-static {v8}, Landroid/os/UserManager;->isUserTypeRestricted(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_10

    if-ltz v1, :cond_e

    move v0, v1

    goto :goto_3

    :cond_e
    move/from16 v0, v16

    :goto_3
    :try_start_1
    invoke-interface {v15, v13, v0}, Landroid/os/IUserManager;->createRestrictedProfileWithThrow(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v4

    move-object v14, v4

    nop

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "root"

    goto :goto_4

    :cond_f
    const-string v4, "com.android.shell"

    :goto_4
    invoke-interface {v9, v0, v1, v4}, Landroid/accounts/IAccountManager;->addSharedAccountsFromParentUser(IILjava/lang/String;)V

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    goto :goto_6

    :cond_10
    if-gez v1, :cond_12

    if-eqz v3, :cond_11

    invoke-interface {v15, v8}, Landroid/os/IUserManager;->preCreateUserWithThrow(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    goto :goto_5

    :cond_11
    invoke-interface {v15, v13, v8, v2}, Landroid/os/IUserManager;->createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    move-object v14, v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    goto :goto_6

    :catch_0
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    goto :goto_7

    :cond_12
    const/4 v0, 0x0

    move-object v4, v15

    move-object v5, v13

    move-object v6, v8

    move v7, v2

    move-object/from16 v17, v8

    move v8, v1

    move-object/from16 v18, v9

    move-object v9, v0

    :try_start_2
    invoke-interface/range {v4 .. v9}, Landroid/os/IUserManager;->createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v14, v0

    :goto_6
    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_8
    if-eqz v14, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Success: created user id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v16

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v4, "Error: couldn\'t create User."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v11
.end method

.method public runForceDexOpt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->forceDexOpt(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public runGetMaxRunningUsers()I
    .locals 4

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum supported running users: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMaxRunningUsers()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method public runGetMaxUsers()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum supported users: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public runMovePackage()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: package name not specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    const-string v3, "internal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v0, v2}, Landroid/content/pm/IPackageManager;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v3}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v4

    :goto_0
    invoke-static {v4}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v5

    if-nez v5, :cond_2

    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v3}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v4

    goto :goto_0

    :cond_2
    const/16 v5, -0x64

    if-ne v4, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v5, "Success"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public runMovePrimaryStorage()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "internal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->movePrimaryStorage(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v2

    :goto_0
    invoke-static {v2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v3

    if-nez v3, :cond_1

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v2

    goto :goto_0

    :cond_1
    const/16 v3, -0x64

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Success"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3
.end method

.method public runRemoveUser()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_1

    const-string v1, "--set-ephemeral-if-in-use"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no user id specified."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_2
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    nop

    const-string v3, "user"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v3

    if-eqz v0, :cond_3

    invoke-direct {p0, v3, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->removeUserOrSetEphemeral(Landroid/os/IUserManager;I)I

    move-result v4

    return v4

    :cond_3
    invoke-direct {p0, v3, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->removeUser(Landroid/os/IUserManager;I)I

    move-result v4

    return v4
.end method

.method public runSetUserRestriction()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    :goto_0
    const/16 v5, -0x2710

    const-string v6, "runSetUserRestriction"

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v5

    nop

    const-string v6, "user"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v6

    invoke-interface {v6, v2, v4, v5}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V

    const/4 v7, 0x0

    return v7

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: valid value not specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4
.end method
