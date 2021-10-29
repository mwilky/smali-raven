.class public final Lcom/android/server/SystemServiceManager;
.super Ljava/lang/Object;
.source "SystemServiceManager.java"

# interfaces
.implements Lcom/android/server/Dumpable;


# static fields
.field private static final DEBUG:Z = false

.field private static final SERVICE_CALL_WARN_TIME_MS:I = 0x32

.field private static final TAG:Ljava/lang/String;

.field private static final USER_STARTING:Ljava/lang/String; = "Start"

.field private static final USER_STOPPED:Ljava/lang/String; = "Cleanup"

.field private static final USER_STOPPING:Ljava/lang/String; = "Stop"

.field private static final USER_SWITCHING:Ljava/lang/String; = "Switch"

.field private static final USER_UNLOCKED:Ljava/lang/String; = "Unlocked"

.field private static final USER_UNLOCKING:Ljava/lang/String; = "Unlocking"

.field private static sSystemDir:Ljava/io/File;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentPhase:I

.field private mCurrentUser:Lcom/android/server/SystemService$TargetUser;

.field private final mLoadedPaths:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ldalvik/system/PathClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private mRuntimeRestarted:Z

.field private mRuntimeStartElapsedTime:J

.field private mRuntimeStartUptime:J

.field private mSafeMode:Z

.field private final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/SystemService;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/SystemService$TargetUser;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mLoadedPaths:Landroid/util/ArrayMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/SystemServiceManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static ensureSystemDir()Ljava/io/File;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/android/server/SystemServiceManager;->sSystemDir:Ljava/io/File;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/SystemServiceManager;->sSystemDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    sget-object v0, Lcom/android/server/SystemServiceManager;->sSystemDir:Ljava/io/File;

    return-object v0
.end method

.method private getTargetUser(I)Lcom/android/server/SystemService$TargetUser;
    .locals 4

    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/SystemService$TargetUser;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No TargetUser for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static loadClassFromLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "Lcom/android/server/SystemService;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from class loader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": service class not found, usually indicates that the caller should have called PackageManager.hasSystemFeature() to check whether the feature is available on this device before trying to start the services that implement it. Also ensure that the correct path for the classloader is supplied, if applicable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private newTargetUser(I)Lcom/android/server/SystemService$TargetUser;
    .locals 4

    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No UserInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    new-instance v1, Lcom/android/server/SystemService$TargetUser;

    invoke-direct {v1, v0}, Lcom/android/server/SystemService$TargetUser;-><init>(Landroid/content/pm/UserInfo;)V

    return-object v1
.end method

.method private onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ssm."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "User-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calling on"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "User "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " (from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_0
    const-string v9, ""

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v0, 0x0

    move v9, v0

    :goto_1
    if-ge v9, v8, :cond_4

    iget-object v0, v1, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/SystemService;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v5}, Lcom/android/server/SystemService;->isUserSupported(Lcom/android/server/SystemService$TargetUser;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v10, v4}, Lcom/android/server/SystemService;->isUserSupported(Lcom/android/server/SystemService$TargetUser;)Z

    move-result v0

    move v12, v0

    goto :goto_2

    :cond_1
    move v12, v0

    :goto_2
    if-nez v12, :cond_2

    sget-object v0, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipping "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " on "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "ssm.on"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "_"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :cond_3
    goto :goto_3

    :sswitch_0
    const-string v15, "Start"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :sswitch_1
    const-string v15, "Stop"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v0, 0x4

    goto :goto_3

    :sswitch_2
    const-string v15, "Unlocked"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v0, 0x3

    goto :goto_3

    :sswitch_3
    const-string v15, "Unlocking"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v0, 0x2

    goto :goto_3

    :sswitch_4
    const-string v15, "Cleanup"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v0, 0x5

    goto :goto_3

    :sswitch_5
    const-string v15, "Switch"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v0, 0x0

    :goto_3
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto :goto_5

    :pswitch_0
    invoke-virtual {v10, v5}, Lcom/android/server/SystemService;->onUserStopped(Lcom/android/server/SystemService$TargetUser;)V

    goto :goto_4

    :pswitch_1
    invoke-virtual {v10, v5}, Lcom/android/server/SystemService;->onUserStopping(Lcom/android/server/SystemService$TargetUser;)V

    goto :goto_4

    :pswitch_2
    invoke-virtual {v10, v5}, Lcom/android/server/SystemService;->onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V

    goto :goto_4

    :pswitch_3
    invoke-virtual {v10, v5}, Lcom/android/server/SystemService;->onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V

    goto :goto_4

    :pswitch_4
    invoke-virtual {v10, v5}, Lcom/android/server/SystemService;->onUserStarting(Lcom/android/server/SystemService$TargetUser;)V

    goto :goto_4

    :pswitch_5
    invoke-virtual {v10, v4, v5}, Lcom/android/server/SystemService;->onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V

    nop

    :goto_4
    goto :goto_6

    :goto_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " what?"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure reporting "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " of user "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to service "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    sub-long v4, v15, v13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v5, v10, v0}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :goto_7
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    goto/16 :goto_1

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b9f5cac -> :sswitch_5
        -0x69b6117c -> :sswitch_4
        -0xe559e02 -> :sswitch_3
        -0x8b870fd -> :sswitch_2
        0x277c22 -> :sswitch_1
        0x4c7d442 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onUser(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/server/SystemServiceManager;->getTargetUser(I)Lcom/android/server/SystemService$TargetUser;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/server/SystemServiceManager;->onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method private warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V
    .locals 3

    const-wide/16 v0, 0x32

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " took "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 7

    const-string v0, "Current phase: %d\n"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SystemServiceManager;->mCurrentUser:Lcom/android/server/SystemService$TargetUser;

    if-eqz v2, :cond_0

    const-string v2, "Current user: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SystemServiceManager;->mCurrentUser:Lcom/android/server/SystemService$TargetUser;

    invoke-virtual {v2, p1}, Lcom/android/server/SystemService$TargetUser;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_0

    :cond_0
    const-string v2, "Current user not set!"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_3

    const-string v3, "%d target users: "

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {p1, v3, v5}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    iget-object v5, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/SystemService$TargetUser;

    invoke-virtual {v5, p1}, Lcom/android/server/SystemService$TargetUser;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v5, v2, -0x1

    if-eq v3, v5, :cond_1

    const-string v5, ", "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_2

    :cond_3
    const-string v3, "No target users"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    const-string v2, "%d started services:\n"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SystemService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_4

    :cond_5
    const-string v1, "No started services"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getRuntimeStartElapsedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartElapsedTime:J

    return-wide v0
.end method

.method public getRuntimeStartUptime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartUptime:J

    return-wide v0
.end method

.method public isBootCompleted()Z
    .locals 2

    iget v0, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRuntimeRestarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/SystemServiceManager;->mRuntimeRestarted:Z

    return v0
.end method

.method public isSafeMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/SystemServiceManager;->mSafeMode:Z

    return v0
.end method

.method public onUserStarting(Lcom/android/server/utils/TimingsTraceAndSlog;I)V
    .locals 3

    const/16 v0, 0x7582

    invoke-static {v0, p2}, Landroid/util/EventLog;->writeEvent(II)I

    invoke-direct {p0, p2}, Lcom/android/server/SystemServiceManager;->newTargetUser(I)Lcom/android/server/SystemService$TargetUser;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "Start"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/server/SystemServiceManager;->onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onUserStopped(I)V
    .locals 2

    const/16 v0, 0x7587

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    const-string v0, "Cleanup"

    invoke-direct {p0, v0, p1}, Lcom/android/server/SystemServiceManager;->onUser(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserStopping(I)V
    .locals 1

    const/16 v0, 0x7586

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    const-string v0, "Stop"

    invoke-direct {p0, v0, p1}, Lcom/android/server/SystemServiceManager;->onUser(Ljava/lang/String;I)V

    return-void
.end method

.method public onUserSwitching(II)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x7583

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mCurrentUser:Lcom/android/server/SystemService$TargetUser;

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/SystemServiceManager;->newTargetUser(I)Lcom/android/server/SystemService$TargetUser;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchUser("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): mCurrentUser is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/SystemServiceManager;->mCurrentUser:Lcom/android/server/SystemService$TargetUser;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", it should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mCurrentUser:Lcom/android/server/SystemService$TargetUser;

    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/SystemServiceManager;->getTargetUser(I)Lcom/android/server/SystemService$TargetUser;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServiceManager;->mCurrentUser:Lcom/android/server/SystemService$TargetUser;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    const-string v3, "Switch"

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/server/SystemServiceManager;->onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onUserUnlocked(I)V
    .locals 1

    const/16 v0, 0x7585

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    const-string v0, "Unlocked"

    invoke-direct {p0, v0, p1}, Lcom/android/server/SystemServiceManager;->onUser(Ljava/lang/String;I)V

    return-void
.end method

.method public onUserUnlocking(I)V
    .locals 1

    const/16 v0, 0x7584

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    const-string v0, "Unlocking"

    invoke-direct {p0, v0, p1}, Lcom/android/server/SystemServiceManager;->onUser(Ljava/lang/String;I)V

    return-void
.end method

.method public preSystemReady()V
    .locals 1

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-void
.end method

.method setSafeMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/SystemServiceManager;->mSafeMode:Z

    return-void
.end method

.method setStartInfo(ZJJ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/SystemServiceManager;->mRuntimeRestarted:Z

    iput-wide p2, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartElapsedTime:J

    iput-wide p4, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartUptime:J

    return-void
.end method

.method public startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V
    .locals 9

    const-string v0, "OnBootPhase_"

    iget v1, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    if-le p2, v1, :cond_2

    iput p2, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    sget-object v1, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting phase "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/SystemService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget v6, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    invoke-virtual {v3, v6}, Lcom/android/server/SystemService;->onBootPhase(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-string/jumbo v8, "onBootPhase"

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to boot service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": onBootPhase threw an exception during phase "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    nop

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartUptime:J

    sub-long/2addr v0, v2

    const-string v2, "TotalBootTime"

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->logDuration(Ljava/lang/String;J)V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->shutdown()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Next phase must be larger than previous"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/SystemService;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, ": service must have a public constructor with a Context argument"

    const-string v1, "Failed to create service "

    const-wide/32 v2, 0x80000

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/server/SystemServiceManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StartService "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-class v5, Lcom/android/server/SystemService;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :try_start_1
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {p1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/SystemServiceManager;->mContext:Landroid/content/Context;

    aput-object v7, v5, v8

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/SystemService;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v5

    nop

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": service constructor threw an exception"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_1
    move-exception v5

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_2
    move-exception v5

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_3
    move-exception v0

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": service could not be instantiated"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": service must extend "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v5, Lcom/android/server/SystemService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    .locals 2

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/SystemServiceManager;->loadClassFromLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    return-object v1
.end method

.method public startService(Lcom/android/server/SystemService;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/SystemService;->onStart()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-string/jumbo v4, "onStart"

    invoke-direct {p0, v2, v3, p1, v4}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": onStart threw an exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;
    .locals 8

    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mLoadedPaths:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/PathClassLoader;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v7}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ldalvik/system/PathClassLoader;

    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mLoadedPaths:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p1, v0}, Lcom/android/server/SystemServiceManager;->loadClassFromLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    return-object v2
.end method
