.class public Lcom/android/server/am/ContentProviderHelper;
.super Ljava/lang/Object;
.source "ContentProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;,
        Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;
    }
.end annotation


# static fields
.field private static final PROCESS_STATE_STATS_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "ContentProviderHelper"


# instance fields
.field private final mLaunchingProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessStateStatsLongs:[J

.field private final mProviderMap:Lcom/android/server/am/ProviderMap;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSystemProvidersInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ContentProviderHelper;->PROCESS_STATE_STATS_FORMAT:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x2820
    .end array-data
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mProcessStateStatsLongs:[J

    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/server/am/ProviderMap;

    invoke-direct {v0, p1}, Lcom/android/server/am/ProviderMap;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ContentProviderHelper;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method private canClearIdentity(III)Z
    .locals 3

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p3, :cond_0

    return v1

    :cond_0
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    const/4 v2, -0x1

    invoke-static {v0, p1, p2, v2, v1}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v0, p1, p2, v2, v1}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    return v1
.end method

.method private checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V
    .locals 14

    move-object v7, p0

    move-object v8, p1

    move-wide/from16 v9, p7

    move-object/from16 v11, p2

    move/from16 v12, p3

    invoke-direct {p0, p1, v12, v11}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderAssociation(Lcom/android/server/am/ProcessRecord;ILandroid/content/pm/ProviderInfo;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    if-nez v0, :cond_2

    const-string v0, "getContentProviderImpl: before checkContentProviderPermission"

    invoke-direct {p0, v9, v10, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    nop

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderPermission(Landroid/content/pm/ProviderInfo;IIIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    if-nez v0, :cond_1

    const-string v0, "getContentProviderImpl: after checkContentProviderPermission"

    invoke-direct {p0, v9, v10, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content provider lookup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed: association not allowed with package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkContentProviderAssociation(Lcom/android/server/am/ProcessRecord;ILandroid/content/pm/ProviderInfo;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "<null>"

    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/PackageList;->searchEachPackage(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private checkContentProviderPermission(Landroid/content/pm/ProviderInfo;IIIZLjava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p5

    const/4 v2, 0x0

    const/4 v13, 0x0

    if-eqz v12, :cond_2

    iget-object v3, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move/from16 v14, p4

    invoke-virtual {v3, v14}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUser(I)I

    move-result v15

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v15, v3, :cond_1

    iget-object v3, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-interface {v3, v11, v1, v15, v12}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v13

    :cond_0
    const/4 v2, 0x1

    move/from16 v16, v2

    goto :goto_0

    :cond_1
    move/from16 v16, v2

    :goto_0
    iget-object v2, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkContentProviderPermissionLocked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eq v2, v15, :cond_3

    const/4 v3, 0x0

    move/from16 v16, v3

    goto :goto_1

    :cond_2
    move/from16 v14, p4

    move/from16 v16, v2

    move v2, v14

    :cond_3
    :goto_1
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-static {v3, v10, v11, v4, v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v3

    if-nez v3, :cond_4

    return-object v13

    :cond_4
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-static {v3, v10, v11, v4, v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v3

    if-nez v3, :cond_5

    return-object v13

    :cond_5
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-eqz v3, :cond_8

    array-length v4, v3

    :goto_2
    if-lez v4, :cond_8

    add-int/lit8 v4, v4, -0x1

    aget-object v5, v3, v4

    invoke-virtual {v5}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v8, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-static {v6, v10, v11, v7, v8}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v7

    if-nez v7, :cond_6

    return-object v13

    :cond_6
    invoke-virtual {v5}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v8, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v9, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-static {v7, v10, v11, v8, v9}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v8

    if-nez v8, :cond_7

    return-object v13

    :cond_7
    goto :goto_2

    :cond_8
    if-nez v16, :cond_9

    iget-object v4, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-interface {v4, v11, v1, v2, v12}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result v4

    if-eqz v4, :cond_9

    return-object v13

    :cond_9
    iget-boolean v4, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    if-nez v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " that is not exported from UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_a
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    const-string v5, "android.permission.MANAGE_DOCUMENTS"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, " requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    goto :goto_3

    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: opening provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_c

    move-object/from16 v6, p6

    goto :goto_4

    :cond_c
    const-string v6, "(null)"

    :goto_4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ContentProviderHelper"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method private checkTime(JLjava/lang/String;)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v2, v0, p1

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slow operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v3, v0, p1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms so far, now at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContentProviderHelper"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private decProviderCountLocked(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ZZZ)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p2, p3}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleLocked(Landroid/os/IBinder;)Z

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ContentProviderConnection;->totalRefCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-virtual {p1, p4}, Lcom/android/server/am/ContentProviderConnection;->decrementCount(Z)I

    return v0

    :cond_1
    if-eqz p5, :cond_2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p4, p6}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ContentProviderConnection;ZZ)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p4, p6}, Lcom/android/server/am/ContentProviderHelper;->handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V

    :goto_0
    return v2
.end method

.method private getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZI)Landroid/app/ContentProviderHolder;
    .locals 45

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move/from16 v1, p8

    const/16 v26, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v25, p8

    iget-object v11, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3f

    move-wide v8, v4

    const/4 v4, 0x0

    if-eqz v14, :cond_1

    :try_start_1
    iget-object v5, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v14}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    move-object v4, v5

    if-eqz v4, :cond_0

    move-object v12, v4

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find app for caller "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") when getting content provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move/from16 v10, p4

    move-object v4, v0

    move-object/from16 v32, v11

    move-object v5, v14

    move-object v14, v13

    goto/16 :goto_2e

    :cond_1
    move-object v12, v4

    :goto_0
    const/4 v4, 0x1

    :try_start_2
    const-string v5, "getContentProviderImpl: getProviderByName"

    invoke-direct {v15, v8, v9, v5}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    iget-object v5, v15, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v5, v13, v1}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3f

    const/4 v10, 0x0

    if-nez v5, :cond_5

    if-eqz v1, :cond_5

    :try_start_3
    iget-object v6, v15, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v6, v13, v10}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v6

    move-object v5, v6

    if-eqz v5, :cond_4

    iget-object v6, v5, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    move-object v2, v6

    iget-object v6, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v10, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v17, v3

    :try_start_4
    iget v3, v2, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {v6, v7, v10, v1, v3}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    if-nez v12, :cond_2

    move/from16 v3, p4

    goto :goto_1

    :cond_2
    iget v3, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    :goto_1
    iget-object v6, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3, v6}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const/4 v4, 0x0

    move v10, v1

    move/from16 v27, v4

    move-object v7, v5

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    const/4 v2, 0x0

    move/from16 v10, p8

    move/from16 v27, v4

    move-object v7, v5

    goto :goto_2

    :catchall_1
    move-exception v0

    move/from16 v10, p4

    move/from16 v1, p8

    move-object v4, v0

    move-object/from16 v32, v11

    move-object v5, v14

    move/from16 v3, v17

    move-object v14, v13

    goto/16 :goto_2e

    :cond_4
    move/from16 v17, v3

    move/from16 v10, p8

    move/from16 v27, v4

    move-object v7, v5

    goto :goto_2

    :catchall_2
    move-exception v0

    move/from16 v17, v3

    move/from16 v10, p4

    move/from16 v1, p8

    move-object v4, v0

    move-object/from16 v32, v11

    move-object v5, v14

    move-object v14, v13

    goto/16 :goto_2e

    :cond_5
    move/from16 v17, v3

    move/from16 v10, p8

    move/from16 v27, v4

    move-object v7, v5

    :goto_2
    const/4 v1, 0x0

    if-eqz v7, :cond_8

    :try_start_5
    iget-object v3, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_8

    iget-object v3, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-nez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    :try_start_6
    iget-object v4, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "ContentProviderHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " was killed by AM but isn\'t really dead"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v1, v4

    move-object/from16 v28, v1

    move/from16 v29, v3

    goto :goto_4

    :cond_7
    move-object/from16 v28, v1

    move/from16 v29, v3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v4, v0

    move v1, v10

    move-object/from16 v32, v11

    move-object v5, v14

    move/from16 v10, p4

    move-object v14, v13

    goto/16 :goto_2e

    :catchall_4
    move-exception v0

    move-object v4, v0

    move v1, v10

    move-object/from16 v32, v11

    move-object v5, v14

    move/from16 v3, v17

    move/from16 v10, p4

    move-object v14, v13

    goto/16 :goto_2e

    :cond_8
    move-object/from16 v28, v1

    move/from16 v29, v17

    :goto_4
    const/4 v6, 0x0

    if-eqz v29, :cond_e

    :try_start_7
    iget-object v3, v7, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_13

    if-eqz v12, :cond_9

    :try_start_8
    invoke-virtual {v7, v12}, Lcom/android/server/am/ContentProviderRecord;->canRunHere(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v7, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, p0

    move-object v2, v12

    move/from16 v4, p4

    move v5, v10

    move-object v14, v6

    move/from16 v6, v27

    move-object v14, v7

    move-object/from16 v7, v16

    move-wide/from16 v30, v8

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/ContentProviderHelper;->checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v14, v2, v1}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v1

    iput-object v2, v1, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :cond_9
    move-object v14, v7

    move-wide/from16 v30, v8

    const/4 v1, 0x1

    :try_start_9
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    const/4 v9, 0x0

    :try_start_a
    invoke-interface {v2, v13, v9, v10}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v2
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-nez v2, :cond_a

    :try_start_b
    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v2, 0x0

    return-object v2

    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object/from16 v5, p1

    move-object v4, v0

    move-object v2, v3

    move v1, v10

    move-object/from16 v32, v11

    move-object v14, v13

    move/from16 v3, v29

    move/from16 v10, p4

    goto/16 :goto_2e

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_5
    :try_start_c
    iget-object v4, v14, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v16
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_12

    move-object/from16 v4, p0

    move-object v5, v12

    move-object v6, v3

    move/from16 v7, p4

    move v8, v10

    move/from16 v17, v9

    move/from16 v9, v27

    move v1, v10

    move-object/from16 v10, v16

    move-object/from16 v32, v11

    move-object/from16 v33, v12

    move-wide/from16 v11, v30

    :try_start_d
    invoke-direct/range {v4 .. v12}, Lcom/android/server/am/ContentProviderHelper;->checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_11

    move-wide v11, v4

    :try_start_e
    const-string v4, "getContentProviderImpl: incProviderCountLocked"
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_f

    move-wide/from16 v9, v30

    :try_start_f
    invoke-direct {v15, v9, v10, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    const/16 v21, 0x1

    iget-object v4, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    move-object v8, v13

    move-object/from16 v13, p0

    move-object v5, v2

    move-object v7, v14

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move-object/from16 v14, v33

    move-object/from16 p8, v3

    move-object v3, v15

    move-object v15, v7

    move-object/from16 v16, p3

    move/from16 v17, p4

    move-object/from16 v18, p5

    move-object/from16 v19, p6

    move/from16 v20, p7

    move-wide/from16 v22, v9

    move-object/from16 v24, v4

    :try_start_10
    invoke-direct/range {v13 .. v25}, Lcom/android/server/am/ContentProviderHelper;->incProviderCountLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZZJLcom/android/server/am/ProcessList;I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    move-object v14, v5

    move-object v5, v4

    :try_start_11
    const-string v4, "getContentProviderImpl: before updateOomAdj"

    invoke-direct {v3, v9, v10, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    iget-object v4, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getVerifiedAdj()I

    move-result v4

    move v13, v4

    iget-object v4, v3, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v6, "updateOomAdj_getProvider"

    invoke-virtual {v4, v15, v6}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    if-eqz v4, :cond_b

    :try_start_12
    iget-object v6, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v6

    if-eq v13, v6, :cond_b

    iget-object v6, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v3, v6}, Lcom/android/server/am/ContentProviderHelper;->isProcessAliveLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    if-nez v6, :cond_b

    const/4 v4, 0x0

    move v15, v4

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    move-object/from16 v26, v5

    move-wide/from16 v36, v9

    move-object/from16 v34, v33

    move-object v10, v7

    goto/16 :goto_8

    :cond_b
    move v15, v4

    :goto_6
    :try_start_13
    iget-object v4, v7, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    move-object/from16 v6, v33

    :try_start_14
    invoke-direct {v3, v6, v4, v8}, Lcom/android/server/am/ContentProviderHelper;->maybeUpdateProviderUsageStatsLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "getContentProviderImpl: after updateOomAdj"

    invoke-direct {v3, v9, v10, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-nez v15, :cond_d

    const-string v4, "ContentProviderHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Existing provider "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is crashing; detaching "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    const/4 v2, 0x0

    const/4 v14, 0x0

    move-object/from16 v4, p0

    move-object/from16 v34, v6

    move-object v6, v7

    move-object/from16 v35, v7

    move-object/from16 v7, p3

    move/from16 v8, p7

    move-wide/from16 v36, v9

    move v9, v2

    move v10, v14

    :try_start_15
    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/ContentProviderHelper;->decProviderCountLocked(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ZZZ)Z

    move-result v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    if-nez v2, :cond_c

    nop

    :try_start_16
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v32
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v4, 0x0

    return-object v4

    :catchall_7
    move-exception v0

    move-object/from16 v14, p2

    move/from16 v10, p4

    move-object/from16 v2, p8

    move-object v4, v0

    move-object v15, v3

    move-object/from16 v26, v5

    move/from16 v3, v29

    move-object/from16 v5, p1

    goto/16 :goto_2e

    :cond_c
    const/4 v4, 0x0

    const/16 v26, 0x0

    move-object/from16 v10, v35

    :try_start_17
    iget-object v5, v10, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    move-object v2, v5

    move-object/from16 v28, v2

    move/from16 v29, v4

    goto :goto_7

    :catchall_8
    move-exception v0

    move-object v2, v0

    move/from16 v29, v4

    goto/16 :goto_8

    :catchall_9
    move-exception v0

    move-object/from16 v10, v35

    move-object v2, v0

    move-object/from16 v26, v5

    goto/16 :goto_8

    :cond_d
    move-object/from16 v34, v6

    move-wide/from16 v36, v9

    move-object v10, v7

    :try_start_18
    iget-object v2, v10, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v4, v10, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessStateRecord;->setVerifiedAdj(I)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    move-object/from16 v26, v5

    :goto_7
    :try_start_19
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v14, p1

    move-object/from16 v2, p8

    move-object/from16 v13, v28

    move/from16 v15, v29

    goto/16 :goto_9

    :catchall_a
    move-exception v0

    move-object v2, v0

    move-object/from16 v26, v5

    goto :goto_8

    :catchall_b
    move-exception v0

    move-object/from16 v34, v6

    move-wide/from16 v36, v9

    move-object v10, v7

    move-object v2, v0

    move-object/from16 v26, v5

    goto :goto_8

    :catchall_c
    move-exception v0

    move-wide/from16 v36, v9

    move-object/from16 v34, v33

    move-object v10, v7

    move-object v2, v0

    move-object/from16 v26, v5

    goto :goto_8

    :catchall_d
    move-exception v0

    move-wide/from16 v36, v9

    move-object/from16 v34, v33

    move-object v10, v7

    move-object v2, v0

    goto :goto_8

    :catchall_e
    move-exception v0

    move-object/from16 p8, v3

    move-wide/from16 v36, v9

    move-object v10, v14

    move-object v3, v15

    move-object/from16 v34, v33

    move-object v2, v0

    goto :goto_8

    :catchall_f
    move-exception v0

    move-object/from16 p8, v3

    move-object v10, v14

    move-object v3, v15

    move-wide/from16 v36, v30

    move-object/from16 v34, v33

    move-object v2, v0

    :goto_8
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_10

    :catchall_10
    move-exception v0

    move-object/from16 v5, p1

    move-object/from16 v14, p2

    move/from16 v10, p4

    move-object/from16 v2, p8

    move-object v4, v0

    move-object v15, v3

    move/from16 v3, v29

    goto/16 :goto_2e

    :catchall_11
    move-exception v0

    move-object/from16 p8, v3

    move-object/from16 v5, p1

    move-object/from16 v14, p2

    move/from16 v10, p4

    move-object/from16 v2, p8

    move-object v4, v0

    move/from16 v3, v29

    goto/16 :goto_2e

    :catchall_12
    move-exception v0

    move-object/from16 p8, v3

    move v1, v10

    move-object/from16 v32, v11

    move-object/from16 v5, p1

    move-object/from16 v14, p2

    move/from16 v10, p4

    move-object/from16 v2, p8

    move-object v4, v0

    move/from16 v3, v29

    goto/16 :goto_2e

    :catchall_13
    move-exception v0

    move v1, v10

    move-object/from16 v32, v11

    move/from16 v10, p4

    move-object v4, v0

    move-object v5, v14

    move/from16 v3, v29

    move-object/from16 v14, p2

    goto/16 :goto_2e

    :cond_e
    move-wide/from16 v36, v8

    move v1, v10

    move-object/from16 v32, v11

    move-object/from16 v34, v12

    move-object v3, v15

    move-object v10, v7

    move-object/from16 v13, v28

    move/from16 v15, v29

    :goto_9
    if-nez v15, :cond_29

    :try_start_1a
    const-string v4, "getContentProviderImpl: before resolveContentProvider"
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_15

    move-wide/from16 v11, v36

    :try_start_1b
    invoke-direct {v3, v11, v12, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_3
    .catchall {:try_start_1b .. :try_end_1b} :catchall_15

    const/16 v5, 0xc00

    move-object/from16 v8, p2

    :try_start_1c
    invoke-interface {v4, v8, v5, v1}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    move-object v2, v4

    const-string v4, "getContentProviderImpl: after resolveContentProvider"

    invoke-direct {v3, v11, v12, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_2
    .catchall {:try_start_1c .. :try_end_1c} :catchall_14

    move-object v9, v2

    goto :goto_b

    :catchall_14
    move-exception v0

    move/from16 v10, p4

    move-object v4, v0

    move-object v5, v14

    move-object v14, v8

    move/from16 v44, v15

    move-object v15, v3

    move/from16 v3, v44

    goto/16 :goto_2e

    :catch_2
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v8, p2

    goto :goto_a

    :catchall_15
    move-exception v0

    move/from16 v10, p4

    move-object v4, v0

    move-object v5, v14

    move-object/from16 v14, p2

    move/from16 v44, v15

    move-object v15, v3

    move/from16 v3, v44

    goto/16 :goto_2e

    :catch_4
    move-exception v0

    move-object/from16 v8, p2

    move-wide/from16 v11, v36

    :goto_a
    move-object v9, v2

    :goto_b
    if-nez v9, :cond_f

    :try_start_1d
    monitor-exit v32
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v2, 0x0

    return-object v2

    :catchall_16
    move-exception v0

    move/from16 v10, p4

    move-object v4, v0

    move-object v2, v9

    move-object v5, v14

    move-object v14, v8

    move/from16 v44, v15

    move-object v15, v3

    move/from16 v3, v44

    goto/16 :goto_2e

    :cond_f
    :try_start_1e
    iget-object v2, v3, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v9, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v5, v9, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget v7, v9, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2e

    if-eqz v2, :cond_11

    :try_start_1f
    iget-object v2, v3, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v7, v34

    if-nez v7, :cond_10

    move/from16 v4, p4

    goto :goto_c

    :cond_10
    iget v4, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    :goto_c
    iget-object v5, v9, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_16

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    goto :goto_d

    :cond_11
    move-object/from16 v7, v34

    :cond_12
    const/4 v2, 0x0

    :goto_d
    move/from16 v16, v2

    if-eqz v16, :cond_13

    const/4 v1, 0x0

    move v6, v1

    goto :goto_e

    :cond_13
    move v6, v1

    :goto_e
    :try_start_20
    iget-object v1, v3, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v9, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2, v6}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v9, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v1, "getContentProviderImpl: got app info for user"

    invoke-direct {v3, v11, v12, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2d

    if-nez v16, :cond_14

    const/16 v18, 0x1

    goto :goto_f

    :cond_14
    const/16 v18, 0x0

    :goto_f
    move-object/from16 v1, p0

    move-object v2, v7

    move-object v5, v3

    move-object v3, v9

    move/from16 v4, p4

    move/from16 p8, v15

    move-object v15, v5

    move v5, v6

    move v14, v6

    move/from16 v6, v18

    move-object/from16 v35, v10

    move-object v10, v7

    move-object/from16 v7, p2

    move-object/from16 v33, v10

    move-object/from16 v18, v13

    move-object v13, v8

    move-object v10, v9

    move-wide v8, v11

    :try_start_21
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/ContentProviderHelper;->checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V

    iget-object v1, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2c

    if-nez v1, :cond_16

    :try_start_22
    iget-object v1, v10, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_10

    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Attempt to launch content provider before system ready"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_17

    :catchall_17
    move-exception v0

    move-object/from16 v5, p1

    move/from16 v3, p8

    move-object v4, v0

    move-object v2, v10

    move v1, v14

    move/from16 v10, p4

    move-object v14, v13

    goto/16 :goto_2e

    :cond_16
    :goto_10
    :try_start_23
    monitor-enter p0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_2c

    :try_start_24
    iget-boolean v1, v15, Lcom/android/server/am/ContentProviderHelper;->mSystemProvidersInstalled:Z
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_29

    if-nez v1, :cond_18

    :try_start_25
    iget-object v1, v10, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string/jumbo v1, "system"

    iget-object v2, v10, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_11

    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot access system provider: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' before system providers are installed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_18

    :catchall_18
    move-exception v0

    move-object v1, v0

    move-object/from16 v22, v10

    move-wide/from16 v30, v11

    move/from16 v28, v14

    move-object/from16 v24, v18

    move-object/from16 v29, v33

    move-object v14, v13

    goto/16 :goto_22

    :cond_18
    :goto_11
    :try_start_26
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_29

    :try_start_27
    iget-object v1, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v9, 0x0

    invoke-virtual {v1, v14, v9}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_2c

    if-nez v1, :cond_19

    :try_start_28
    const-string v1, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is stopped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v32
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v1, 0x0

    return-object v1

    :cond_19
    :try_start_29
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v10, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, v10, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    const-string v1, "getContentProviderImpl: before getProviderByClass"

    invoke-direct {v15, v11, v12, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    iget-object v1, v15, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v1, v2, v14}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v1

    const-string v3, "getContentProviderImpl: after getProviderByClass"

    invoke-direct {v15, v11, v12, v3}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_2c

    if-nez v1, :cond_1a

    const/4 v3, 0x1

    goto :goto_12

    :cond_1a
    move v3, v9

    :goto_12
    move/from16 v19, v3

    if-eqz v19, :cond_1d

    :try_start_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-wide/from16 v20, v3

    iget-object v3, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v8, v33

    invoke-direct {v15, v10, v8, v14, v3}, Lcom/android/server/am/ContentProviderHelper;->requestTargetProviderPermissionsReviewIfNeededLocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/am/ProcessRecord;ILandroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1b

    monitor-exit v32
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v3, 0x0

    return-object v3

    :cond_1b
    :try_start_2b
    const-string v3, "getContentProviderImpl: before getApplicationInfo"

    invoke-direct {v15, v11, v12, v3}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v4, v10, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x400

    invoke-interface {v3, v4, v5, v14}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    const-string v4, "getContentProviderImpl: after getApplicationInfo"

    invoke-direct {v15, v11, v12, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_7
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1b

    if-nez v3, :cond_1c

    :try_start_2c
    const-string v4, "ContentProviderHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No package info for content provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v10, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2c} :catch_5
    .catchall {:try_start_2c .. :try_end_2c} :catchall_19

    nop

    :try_start_2d
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v32
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v4, 0x0

    return-object v4

    :catchall_19
    move-exception v0

    move-object v3, v0

    move-object v9, v8

    goto :goto_14

    :catch_5
    move-exception v0

    move-object v9, v8

    goto :goto_13

    :cond_1c
    :try_start_2e
    iget-object v4, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v3, v14}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    new-instance v22, Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2e} :catch_7
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1b

    move-object/from16 v3, v22

    move-object v5, v10

    move-object v7, v2

    move-object v9, v8

    move/from16 v8, v16

    :try_start_2f
    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/ContentProviderRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Z)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_2f} :catch_6
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1a

    move-object/from16 v1, v22

    :goto_13
    :try_start_30
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_15

    :catchall_1a
    move-exception v0

    move-object v3, v0

    goto :goto_14

    :catch_6
    move-exception v0

    goto :goto_13

    :catchall_1b
    move-exception v0

    move-object v9, v8

    move-object v3, v0

    :goto_14
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v3
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_17

    :catch_7
    move-exception v0

    move-object v9, v8

    goto :goto_13

    :goto_15
    nop

    move-object v7, v1

    move-object/from16 v8, v18

    goto :goto_16

    :cond_1d
    move-object/from16 v9, v33

    :try_start_31
    iget-object v3, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_2c

    move-object/from16 v8, v18

    if-ne v8, v3, :cond_1e

    if-eqz v8, :cond_1e

    :try_start_32
    new-instance v3, Lcom/android/server/am/ContentProviderRecord;

    invoke-direct {v3, v1}, Lcom/android/server/am/ContentProviderRecord;-><init>(Lcom/android/server/am/ContentProviderRecord;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_17

    move-object v1, v3

    const/16 v19, 0x1

    move-object v7, v1

    goto :goto_16

    :cond_1e
    move-object v7, v1

    :goto_16
    :try_start_33
    const-string v1, "getContentProviderImpl: now have ContentProviderRecord"

    invoke-direct {v15, v11, v12, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_2c

    if-eqz v9, :cond_1f

    :try_start_34
    invoke-virtual {v7, v9}, Lcom/android/server/am/ContentProviderRecord;->canRunHere(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-virtual {v7, v1, v6}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v1

    monitor-exit v32
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :cond_1f
    const/4 v6, 0x1

    :try_start_35
    iget-object v1, v15, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_2c

    move v5, v1

    const/4 v1, 0x0

    move v4, v1

    :goto_17
    if-ge v4, v5, :cond_21

    :try_start_36
    iget-object v1, v15, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_17

    if-ne v1, v7, :cond_20

    goto :goto_18

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_21
    :goto_18
    if-lt v4, v5, :cond_26

    :try_start_37
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_25

    :try_start_38
    iget-object v1, v7, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v3, p5

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_24

    if-nez v1, :cond_22

    :try_start_39
    iget-object v1, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v6, v7, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x1f

    invoke-virtual {v1, v6, v14, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1c

    :cond_22
    :try_start_3a
    const-string v1, "getContentProviderImpl: before set stopped state"
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3a} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_3a} :catch_a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1c

    :try_start_3b
    invoke-direct {v15, v11, v12, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v3, v7, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3b} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_3b} :catch_a
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1c

    const/4 v6, 0x0

    :try_start_3c
    invoke-interface {v1, v3, v6, v14}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V

    const-string v1, "getContentProviderImpl: after set stopped state"

    invoke-direct {v15, v11, v12, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3c} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_3c} :catch_8
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1c

    move/from16 v18, v4

    goto :goto_1b

    :catch_8
    move-exception v0

    goto :goto_19

    :catch_9
    move-exception v0

    move/from16 v18, v4

    goto :goto_1a

    :catchall_1c
    move-exception v0

    move-object v1, v0

    move/from16 v18, v4

    move/from16 v23, v5

    move-object/from16 v24, v8

    move-object/from16 v33, v9

    move/from16 v28, v14

    goto/16 :goto_1e

    :catch_a
    move-exception v0

    const/4 v6, 0x0

    :goto_19
    move-object v1, v0

    :try_start_3d
    const-string v3, "ContentProviderHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1e

    move/from16 v18, v4

    :try_start_3e
    const-string v4, "Failed trying to unstop package "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_1d

    goto :goto_1b

    :catchall_1d
    move-exception v0

    move-object v1, v0

    move/from16 v23, v5

    move-object/from16 v24, v8

    move-object/from16 v33, v9

    move/from16 v28, v14

    goto/16 :goto_1e

    :catchall_1e
    move-exception v0

    move/from16 v18, v4

    move-object v1, v0

    move/from16 v23, v5

    move-object/from16 v24, v8

    move-object/from16 v33, v9

    move/from16 v28, v14

    goto/16 :goto_1e

    :catch_b
    move-exception v0

    move/from16 v18, v4

    :goto_1a
    nop

    :goto_1b
    :try_start_3f
    const-string v1, "getContentProviderImpl: looking for process record"

    invoke-direct {v15, v11, v12, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    iget-object v1, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v10, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_23

    if-eqz v1, :cond_24

    :try_start_40
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_24

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v3

    if-nez v3, :cond_24

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-object v6, v10, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/android/server/am/ProcessProviderRecord;->hasProvider(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_23

    const-string v6, "getContentProviderImpl: scheduling install"

    invoke-direct {v15, v11, v12, v6}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    iget-object v6, v10, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/android/server/am/ProcessProviderRecord;->installProvider(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_1d

    :try_start_41
    invoke-interface {v4, v10}, Landroid/app/IApplicationThread;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_41} :catch_c
    .catchall {:try_start_41 .. :try_end_41} :catchall_1d

    goto :goto_1c

    :catch_c
    move-exception v0

    :cond_23
    :goto_1c
    move/from16 v23, v5

    move-object/from16 v24, v8

    move-object/from16 v33, v9

    move/from16 v28, v14

    goto/16 :goto_1d

    :cond_24
    :try_start_42
    const-string v3, "getContentProviderImpl: before start process"

    invoke-direct {v15, v11, v12, v3}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    iget-object v3, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v10, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v6, v7, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v22, v1

    new-instance v1, Lcom/android/server/am/HostingRecord;
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_23

    move/from16 v23, v5

    :try_start_43
    const-string v5, "content provider"
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_22

    move-object/from16 v24, v8

    :try_start_44
    new-instance v8, Landroid/content/ComponentName;
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_21

    move/from16 v28, v14

    :try_start_45
    iget-object v14, v10, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_20

    move-object/from16 v33, v9

    :try_start_46
    iget-object v9, v10, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v14, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v5, v8}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v35, v3

    move-object/from16 v36, v4

    move-object/from16 v37, v6

    move-object/from16 v40, v1

    invoke-virtual/range {v35 .. v43}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    const-string v3, "getContentProviderImpl: after start process"

    invoke-direct {v15, v11, v12, v3}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-nez v1, :cond_25

    const-string v3, "ContentProviderHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": process is bad"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_1f

    nop

    :try_start_47
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v32
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_26

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v3, 0x0

    return-object v3

    :cond_25
    :goto_1d
    :try_start_48
    iput-object v1, v7, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v15, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_1f

    :try_start_49
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1f

    :catchall_1f
    move-exception v0

    move-object v1, v0

    goto :goto_1e

    :catchall_20
    move-exception v0

    move-object/from16 v33, v9

    move-object v1, v0

    goto :goto_1e

    :catchall_21
    move-exception v0

    move-object/from16 v33, v9

    move/from16 v28, v14

    move-object v1, v0

    goto :goto_1e

    :catchall_22
    move-exception v0

    move-object/from16 v24, v8

    move-object/from16 v33, v9

    move/from16 v28, v14

    move-object v1, v0

    goto :goto_1e

    :catchall_23
    move-exception v0

    move/from16 v23, v5

    move-object/from16 v24, v8

    move-object/from16 v33, v9

    move/from16 v28, v14

    move-object v1, v0

    goto :goto_1e

    :catchall_24
    move-exception v0

    move/from16 v18, v4

    move/from16 v23, v5

    move-object/from16 v24, v8

    move-object/from16 v33, v9

    move/from16 v28, v14

    move-object v1, v0

    :goto_1e
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v1
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_26

    :catchall_25
    move-exception v0

    move/from16 v28, v14

    move-object/from16 v5, p1

    move/from16 v3, p8

    move-object v4, v0

    move-object v2, v10

    move-object v14, v13

    move/from16 v1, v28

    move/from16 v10, p4

    goto/16 :goto_2e

    :cond_26
    move/from16 v18, v4

    move/from16 v23, v5

    move-object/from16 v24, v8

    move-object/from16 v33, v9

    move/from16 v28, v14

    :goto_1f
    :try_start_4a
    const-string v1, "getContentProviderImpl: updating data structures"

    invoke-direct {v15, v11, v12, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_28

    if-eqz v19, :cond_27

    :try_start_4b
    iget-object v1, v15, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v1, v2, v7}, Lcom/android/server/am/ProviderMap;->putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_26

    goto :goto_20

    :catchall_26
    move-exception v0

    move-object/from16 v5, p1

    move/from16 v3, p8

    move-object v4, v0

    move-object v2, v10

    move-object v14, v13

    move/from16 v1, v28

    move/from16 v10, p4

    goto/16 :goto_2e

    :cond_27
    :goto_20
    :try_start_4c
    iget-object v1, v15, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v1, v13, v7}, Lcom/android/server/am/ProviderMap;->putProviderByName(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V

    const/4 v9, 0x0

    iget-object v1, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_28

    move-object/from16 v1, p0

    move-object/from16 v20, v2

    move-object/from16 v2, v33

    move-object v3, v7

    move-object/from16 v4, p3

    move/from16 v21, v23

    move/from16 v5, p4

    const/4 v8, 0x1

    const/16 v22, 0x0

    move-object/from16 v6, p5

    move-object/from16 v23, v7

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v22, v33

    move-wide/from16 v30, v11

    move-object/from16 v29, v22

    move-object/from16 v22, v10

    move-wide/from16 v10, v30

    move-object v12, v14

    move-object v14, v13

    move/from16 v13, v25

    :try_start_4d
    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ContentProviderHelper;->incProviderCountLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZZJLcom/android/server/am/ProcessList;I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v1
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_2a

    if-eqz v1, :cond_28

    const/4 v3, 0x1

    :try_start_4e
    iput-boolean v3, v1, Lcom/android/server/am/ContentProviderConnection;->waiting:Z
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_27

    goto :goto_21

    :catchall_27
    move-exception v0

    move-object/from16 v5, p1

    move/from16 v10, p4

    move/from16 v3, p8

    move-object v4, v0

    move-object/from16 v26, v1

    move-object/from16 v2, v22

    move/from16 v1, v28

    goto/16 :goto_2e

    :cond_28
    const/4 v3, 0x1

    :goto_21
    move-object v4, v1

    move-object/from16 v2, v22

    move-object/from16 v7, v23

    move/from16 v1, v28

    goto/16 :goto_23

    :catchall_28
    move-exception v0

    move-object/from16 v22, v10

    move-object v14, v13

    move-object/from16 v5, p1

    move/from16 v10, p4

    move/from16 v3, p8

    move-object v4, v0

    move-object/from16 v2, v22

    move/from16 v1, v28

    goto/16 :goto_2e

    :catchall_29
    move-exception v0

    move-object/from16 v22, v10

    move-wide/from16 v30, v11

    move/from16 v28, v14

    move-object/from16 v24, v18

    move-object/from16 v29, v33

    move-object v14, v13

    move-object v1, v0

    :goto_22
    :try_start_4f
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_2b

    :try_start_50
    throw v1
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_2a

    :catchall_2a
    move-exception v0

    move-object/from16 v5, p1

    move/from16 v10, p4

    move/from16 v3, p8

    move-object v4, v0

    move-object/from16 v2, v22

    move/from16 v1, v28

    goto/16 :goto_2e

    :catchall_2b
    move-exception v0

    move-object v1, v0

    goto :goto_22

    :catchall_2c
    move-exception v0

    move-object/from16 v22, v10

    move/from16 v28, v14

    move-object v14, v13

    move-object/from16 v5, p1

    move/from16 v10, p4

    move/from16 v3, p8

    move-object v4, v0

    move-object/from16 v2, v22

    move/from16 v1, v28

    goto/16 :goto_2e

    :catchall_2d
    move-exception v0

    move/from16 v28, v6

    move-object v14, v8

    move-object/from16 v22, v9

    move/from16 p8, v15

    move-object v15, v3

    move-object/from16 v5, p1

    move/from16 v10, p4

    move/from16 v3, p8

    move-object v4, v0

    move-object/from16 v2, v22

    move/from16 v1, v28

    goto/16 :goto_2e

    :catchall_2e
    move-exception v0

    move-object v14, v8

    move-object/from16 v22, v9

    move/from16 p8, v15

    move-object v15, v3

    move-object/from16 v5, p1

    move/from16 v10, p4

    move/from16 v3, p8

    move-object v4, v0

    move-object/from16 v2, v22

    goto/16 :goto_2e

    :cond_29
    move-object/from16 v14, p2

    move-object/from16 v35, v10

    move-object/from16 v24, v13

    move/from16 p8, v15

    move-object/from16 v29, v34

    move-wide/from16 v30, v36

    move-object v15, v3

    const/4 v3, 0x1

    move-object/from16 v4, v26

    move-object/from16 v7, v35

    :goto_23
    :try_start_51
    const-string v5, "getContentProviderImpl: done!"

    move-wide/from16 v8, v30

    invoke-direct {v15, v8, v9, v5}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    iget-object v5, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_3e

    move/from16 v10, p4

    const/4 v11, 0x0

    :try_start_52
    invoke-virtual {v5, v1, v11, v10, v6}, Lcom/android/server/am/ActivityManagerService;->grantImplicitAccess(ILandroid/content/Intent;II)V
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_3d

    move-object/from16 v5, p1

    if-eqz v5, :cond_2d

    :try_start_53
    monitor-enter v7
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_30

    :try_start_54
    iget-object v6, v7, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-nez v6, :cond_2c

    iget-object v6, v7, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-nez v6, :cond_2a

    const-string v3, "ContentProviderHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to launch app "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " for provider "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": launching app became null"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v6, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v11, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v6, v11, v14}, Lcom/android/server/am/EventLogTags;->writeAmProviderLostProcess(ILjava/lang/String;ILjava/lang/String;)V

    monitor-exit v7
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_2f

    :try_start_55
    monitor-exit v32
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_30

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v3, 0x0

    return-object v3

    :cond_2a
    if-eqz v4, :cond_2b

    :try_start_56
    iput-boolean v3, v4, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    :cond_2b
    iget-object v3, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v6, 0x49

    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput-object v7, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    sget v11, Landroid/content/ContentResolver;->CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

    int-to-long v11, v11

    invoke-virtual {v6, v3, v11, v12}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2c
    monitor-exit v7
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_2f

    const/4 v6, 0x0

    :try_start_57
    invoke-virtual {v7, v4, v6}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v3

    monitor-exit v32
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_30

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    :catchall_2f
    move-exception v0

    move-object v3, v0

    :try_start_58
    monitor-exit v7
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_2f

    :try_start_59
    throw v3
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_30

    :catchall_30
    move-exception v0

    move/from16 v3, p8

    move-object/from16 v26, v4

    move-object v4, v0

    goto/16 :goto_2e

    :cond_2d
    const/4 v6, 0x0

    :try_start_5a
    monitor-exit v32
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_3c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sget v11, Landroid/content/ContentResolver;->CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

    int-to-long v11, v11

    add-long/2addr v8, v11

    const/4 v11, 0x0

    monitor-enter v7

    :goto_24
    :try_start_5b
    iget-object v12, v7, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_3a

    if-nez v12, :cond_33

    :try_start_5c
    iget-object v12, v7, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_37

    if-nez v12, :cond_2e

    :try_start_5d
    const-string v3, "ContentProviderHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to launch app "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " for provider "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": launching app became null"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v6, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v6, v12, v14}, Lcom/android/server/am/EventLogTags;->writeAmProviderLostProcess(ILjava/lang/String;ILjava/lang/String;)V

    monitor-exit v7
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_31

    const/4 v3, 0x0

    return-object v3

    :catchall_31
    move-exception v0

    move/from16 v13, p8

    move/from16 v16, v1

    move-object v12, v7

    move-object v1, v0

    goto/16 :goto_2c

    :cond_2e
    const-wide/16 v12, 0x0

    :try_start_5e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18
    :try_end_5e
    .catch Ljava/lang/InterruptedException; {:try_start_5e .. :try_end_5e} :catch_10
    .catchall {:try_start_5e .. :try_end_5e} :catchall_35

    move-object/from16 v16, v7

    sub-long v6, v8, v18

    :try_start_5f
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_5f .. :try_end_5f} :catch_f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_34

    if-eqz v4, :cond_2f

    :try_start_60
    iput-boolean v3, v4, Lcom/android/server/am/ContentProviderConnection;->waiting:Z
    :try_end_60
    .catch Ljava/lang/InterruptedException; {:try_start_60 .. :try_end_60} :catch_d
    .catchall {:try_start_60 .. :try_end_60} :catchall_32

    goto :goto_25

    :catchall_32
    move-exception v0

    move-object v3, v0

    move-object/from16 v12, v16

    goto :goto_26

    :catch_d
    move-exception v0

    move-object/from16 v12, v16

    goto :goto_27

    :cond_2f
    :goto_25
    move-object/from16 v12, v16

    :try_start_61
    invoke-virtual {v12, v6, v7}, Ljava/lang/Object;->wait(J)V

    iget-object v13, v12, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;
    :try_end_61
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_61} :catch_e
    .catchall {:try_start_61 .. :try_end_61} :catchall_33

    if-nez v13, :cond_30

    const/4 v11, 0x1

    if-eqz v4, :cond_34

    const/4 v3, 0x0

    :try_start_62
    iput-boolean v3, v4, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    goto :goto_2a

    :cond_30
    if-eqz v4, :cond_32

    goto :goto_28

    :catchall_33
    move-exception v0

    move-object v3, v0

    goto :goto_26

    :catch_e
    move-exception v0

    goto :goto_27

    :catchall_34
    move-exception v0

    move-object/from16 v12, v16

    move-object v3, v0

    goto :goto_26

    :catch_f
    move-exception v0

    move-object/from16 v12, v16

    goto :goto_27

    :catchall_35
    move-exception v0

    move-object v12, v7

    move-object v3, v0

    :goto_26
    if-eqz v4, :cond_31

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    :cond_31
    nop

    throw v3

    :catch_10
    move-exception v0

    move-object v12, v7

    :goto_27
    if-eqz v4, :cond_32

    :goto_28
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/server/am/ContentProviderConnection;->waiting:Z
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_36

    goto :goto_29

    :catchall_36
    move-exception v0

    move/from16 v13, p8

    move/from16 v16, v1

    move-object v1, v0

    goto/16 :goto_2c

    :cond_32
    :goto_29
    move-object v7, v12

    const/4 v6, 0x0

    goto/16 :goto_24

    :catchall_37
    move-exception v0

    move-object v12, v7

    move/from16 v13, p8

    move/from16 v16, v1

    move-object v1, v0

    goto/16 :goto_2c

    :cond_33
    move-object v12, v7

    :cond_34
    :goto_2a
    :try_start_63
    monitor-exit v12
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_39

    if-eqz v11, :cond_37

    const-string/jumbo v3, "unknown"

    if-eqz v5, :cond_36

    iget-object v6, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v6

    :try_start_64
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    iget-object v7, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v7, v5}, Lcom/android/server/am/ProcessList;->getLRURecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v7

    if-eqz v7, :cond_35

    iget-object v13, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v3, v13

    :cond_35
    monitor-exit v6
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_38

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_2b

    :catchall_38
    move-exception v0

    move-object v7, v0

    :try_start_65
    monitor-exit v6
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_38

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v7

    :cond_36
    :goto_2b
    const-string v6, "ContentProviderHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Timeout waiting for provider "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " for provider "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " providerRunning="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p8

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v16, v1

    const-string v1, " caller="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_37
    move/from16 v16, v1

    const/4 v1, 0x0

    invoke-virtual {v12, v4, v1}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v1

    return-object v1

    :catchall_39
    move-exception v0

    move/from16 v13, p8

    move/from16 v16, v1

    move-object v1, v0

    goto :goto_2c

    :catchall_3a
    move-exception v0

    move/from16 v13, p8

    move/from16 v16, v1

    move-object v12, v7

    move-object v1, v0

    :goto_2c
    :try_start_66
    monitor-exit v12
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_3b

    throw v1

    :catchall_3b
    move-exception v0

    move-object v1, v0

    goto :goto_2c

    :catchall_3c
    move-exception v0

    goto :goto_2d

    :catchall_3d
    move-exception v0

    move-object/from16 v5, p1

    goto :goto_2d

    :catchall_3e
    move-exception v0

    move-object/from16 v5, p1

    move/from16 v10, p4

    :goto_2d
    move/from16 v13, p8

    move/from16 v16, v1

    move-object/from16 v26, v4

    move v3, v13

    move-object v4, v0

    goto :goto_2e

    :catchall_3f
    move-exception v0

    move/from16 v10, p4

    move/from16 v17, v3

    move-object/from16 v32, v11

    move-object v5, v14

    move-object v14, v13

    move/from16 v1, p8

    move-object v4, v0

    :goto_2e
    :try_start_67
    monitor-exit v32
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_40

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    :catchall_40
    move-exception v0

    move-object v4, v0

    goto :goto_2e
.end method

.method private handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v1, :cond_3

    invoke-virtual {p1, p2}, Lcom/android/server/am/ContentProviderConnection;->decrementCount(Z)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ContentProviderConnection;->stopAssociation()V

    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ProcessProviderRecord;->removeProviderConnection(Lcom/android/server/am/ContentProviderConnection;)Z

    iget-object v2, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v2

    const/16 v3, 0xf

    if-ge v2, v3, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ProcessProviderRecord;->setLastProviderTime(J)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v6, v1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v6, v6, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v8, v1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iget-object v9, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;IJLandroid/content/ComponentName;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v4, "updateOomAdj_removeProvider"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_3
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private incProviderCountLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZZJLcom/android/server/am/ProcessList;I)Lcom/android/server/am/ContentProviderConnection;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p7

    move-wide/from16 v4, p9

    const/4 v6, 0x0

    if-nez v1, :cond_0

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    invoke-virtual {v2, v7, v8, v9}, Lcom/android/server/am/ContentProviderRecord;->addExternalProcessHandleLocked(Landroid/os/IBinder;ILjava/lang/String;)V

    return-object v6

    :cond_0
    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    const/4 v11, 0x0

    invoke-virtual {v10}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v12

    :goto_0
    if-ge v11, v12, :cond_2

    invoke-virtual {v10, v11}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v13

    iget-object v14, v13, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-ne v14, v2, :cond_1

    invoke-virtual {v13, v3}, Lcom/android/server/am/ContentProviderConnection;->incrementCount(Z)I

    return-object v13

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    new-instance v11, Lcom/android/server/am/ContentProviderConnection;

    move-object/from16 v12, p5

    move/from16 v13, p12

    invoke-direct {v11, v2, v1, v12, v13}, Lcom/android/server/am/ContentProviderConnection;-><init>(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V

    invoke-virtual {v11}, Lcom/android/server/am/ContentProviderConnection;->startAssociationIfNeeded()V

    invoke-virtual {v11, v3}, Lcom/android/server/am/ContentProviderConnection;->initializeCount(Z)V

    iget-object v14, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v11}, Lcom/android/server/am/ProcessProviderRecord;->addProviderConnection(Lcom/android/server/am/ContentProviderConnection;)V

    iget-object v15, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v14, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v18

    iget v3, v2, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v7, v2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v7, v7, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v24, v10

    iget-object v10, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v10, v10, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move/from16 v16, v14

    move-object/from16 v17, v6

    move/from16 v19, v3

    move-wide/from16 v20, v7

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    invoke-virtual/range {v15 .. v23}, Lcom/android/server/am/ActivityManagerService;->startAssociationLocked(ILjava/lang/String;IIJLandroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/am/ActivityManagerService$Association;

    if-eqz p8, :cond_4

    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    const/16 v6, 0xfa

    if-gt v3, v6, :cond_3

    const-string v3, "getContentProviderImpl: before updateLruProcess"

    invoke-direct {v0, v4, v5, v3}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    move-object/from16 v7, p11

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v6, v8}, Lcom/android/server/am/ProcessList;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    const-string v3, "getContentProviderImpl: after updateLruProcess"

    invoke-direct {v0, v4, v5, v3}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object/from16 v7, p11

    goto :goto_1

    :cond_4
    move-object/from16 v7, p11

    :goto_1
    return-object v11
.end method

.method private isProcessAliveLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 7

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/stat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mProcessStateStatsLongs:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    sget-object v4, Lcom/android/server/am/ContentProviderHelper;->PROCESS_STATE_STATS_FORMAT:[I

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v3, v5}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mProcessStateStatsLongs:[J

    aget-wide v3, v3, v1

    const-wide/16 v5, 0x5a

    cmp-long v5, v3, v5

    if-eqz v5, :cond_3

    const-wide/16 v5, 0x58

    cmp-long v5, v3, v5

    if-eqz v5, :cond_3

    const-wide/16 v5, 0x78

    cmp-long v5, v3, v5

    if-eqz v5, :cond_3

    const-wide/16 v5, 0x4b

    cmp-long v5, v3, v5

    if-eqz v5, :cond_3

    invoke-static {v0}, Landroid/os/Process;->getUidForPid(I)I

    move-result v5

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v5, v6, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    return v1
.end method

.method private maybeUpdateProviderUsageStatsLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/am/UserState;->mProviderLastReportedFg:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    sub-long v6, v1, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v4, p3, p2, v5}, Landroid/app/usage/UsageStatsManagerInternal;->reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    iget-object v4, v0, Lcom/android/server/am/UserState;->mProviderLastReportedFg:Landroid/util/ArrayMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, p3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method private requestTargetProviderPermissionsReviewIfNeededLocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/am/ProcessRecord;ILandroid/content/Context;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    if-nez v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Instantiating a provider in package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " requires a permissions review"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContentProviderHelper"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const-string v4, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p3}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v4, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v5, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;

    invoke-direct {v5, p4, v2, v3}, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    return v0
.end method


# virtual methods
.method appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.REMOVE_TASKS"

    const-string v2, "appNotRespondingViaProvider()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    const-string v1, "ContentProviderHelper"

    if-nez v0, :cond_0

    const-string v2, "ContentProviderConnection is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    nop

    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    const-wide/16 v3, 0x40

    const-string v5, "appNotRespondingViaProvider: "

    invoke-static {v3, v4, v5, v2}, Lcom/android/server/am/ActivityManagerService;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_2

    const-string v5, "Failed to find hosting ProcessRecord"

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    const-string v5, "ContentProvider not responding"

    invoke-virtual {v1, v2, v5}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v1
.end method

.method checkAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-ne v3, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "ContentProviderHelper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const v2, 0xc0e00

    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    move-object v7, v0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v7, v0

    :goto_0
    if-nez v7, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to find provider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; expected to find a valid ContentProvider for this authority"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, v8}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    move-object v9, v1

    if-nez v9, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find PID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_2
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v6

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v7

    move v2, v8

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderPermission(Landroid/content/pm/ProviderInfo;IIIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method checkContentProviderUriPermission(Landroid/net/Uri;III)I
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    iget-object v0, v7, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    const-string v11, "ContentProviderHelper"

    const/4 v12, -0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to check Uri permission because caller is holding WM lock; assuming permission denied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v12

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    :try_start_0
    const-string v5, "*checkContentProviderUriPermission*"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object/from16 v1, p0

    move-object v2, v13

    move/from16 v4, p3

    move-object v12, v6

    move/from16 v6, p2

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object v1, v0

    if-eqz v1, :cond_4

    :try_start_2
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    move-object v2, v0

    nop

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v3, v0

    if-nez v3, :cond_2

    nop

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v7, v13, v12, v9}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_1
    :goto_0
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v4, -0x1

    return v4

    :cond_2
    :try_start_4
    new-instance v0, Landroid/content/AttributionSource;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v10, v4, v12}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    iget-object v0, v1, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move/from16 v5, p4

    :try_start_5
    invoke-interface {v0, v4, v8, v10, v5}, Landroid/content/IContentProvider;->checkUriPermission(Landroid/content/AttributionSource;Landroid/net/Uri;II)I

    move-result v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v7, v13, v12, v9}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v6, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :cond_3
    :goto_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move/from16 v5, p4

    :goto_2
    move-object/from16 v16, v1

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move/from16 v5, p4

    :goto_3
    move-object/from16 v16, v1

    goto :goto_6

    :catch_3
    move-exception v0

    move/from16 v5, p4

    :goto_4
    move-object/from16 v16, v1

    goto :goto_8

    :cond_4
    move/from16 v5, p4

    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v7, v13, v12, v9}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v2, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_5
    :goto_5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    nop

    const/4 v2, -0x1

    return v2

    :catchall_5
    move-exception v0

    move/from16 v5, p4

    goto/16 :goto_a

    :catch_4
    move-exception v0

    move/from16 v5, p4

    goto :goto_6

    :catch_5
    move-exception v0

    move/from16 v5, p4

    goto :goto_8

    :catchall_6
    move-exception v0

    move/from16 v5, p4

    move-object v12, v6

    goto :goto_a

    :catch_6
    move-exception v0

    move/from16 v5, p4

    move-object v12, v6

    :goto_6
    move-object v1, v0

    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while determining type of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    nop

    if-eqz v16, :cond_6

    :try_start_9
    invoke-virtual {v7, v13, v12, v9}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception v0

    move-object v2, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_6
    :goto_7
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v2, -0x1

    return v2

    :catch_7
    move-exception v0

    move/from16 v5, p4

    move-object v12, v6

    :goto_8
    move-object v1, v0

    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content provider dead retrieving "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    nop

    if-eqz v16, :cond_7

    :try_start_b
    invoke-virtual {v7, v13, v12, v9}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception v0

    move-object v2, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_7
    :goto_9
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v2, -0x1

    return v2

    :catchall_9
    move-exception v0

    :goto_a
    if-eqz v16, :cond_8

    :try_start_c
    invoke-virtual {v7, v13, v12, v9}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    goto :goto_b

    :catchall_a
    move-exception v0

    move-object v1, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_8
    :goto_b
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v0
.end method

.method cleanupAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;Z)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-eq v4, p1, :cond_0

    goto :goto_1

    :cond_0
    iget v4, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-nez p2, :cond_2

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessErrorStateRecord;->isBad()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/ContentProviderRecord;->hasConnectionOrHandle()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/am/ContentProviderHelper;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method cleanupLaunchingProvidersLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected dumpProvider(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProviderMap;->dumpProvider(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method protected dumpProviderProto(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/ProviderMap;->dumpProviderProto(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method dumpProvidersLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V
    .locals 7

    new-instance v0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v0}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    invoke-virtual {v0, p3, p4}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build([Ljava/lang/String;I)I

    const-string v1, "ACTIVITY MANAGER CONTENT PROVIDERS (dumpsys activity providers)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v1, p2, p5, p6}, Lcom/android/server/am/ProviderMap;->dumpProvidersLocked(Ljava/io/PrintWriter;ZLjava/lang/String;)Z

    move-result v1

    move v2, v1

    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_3

    iget-object v5, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ContentProviderRecord;

    if-eqz p6, :cond_0

    iget-object v6, v5, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p6, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    if-nez v3, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_1
    const/4 v1, 0x1

    const-string v6, "  Launching content providers:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v2, 0x1

    :cond_2
    const-string v6, "  Launching #"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ": "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    const-string v3, "  (nothing)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method generateApplicationProvidersLocked(Lcom/android/server/am/ProcessRecord;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    const v6, 0x10000c00

    invoke-interface {v0, v4, v5, v6, v3}, Landroid/content/pm/IPackageManager;->queryContentProviders(Ljava/lang/String;IILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviders()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessProviderRecord;->ensureProviderCapacity(I)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_8

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ProviderInfo;

    iget-object v8, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v7, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v7, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget v12, v7, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v14

    const/4 v15, 0x1

    if-eqz v14, :cond_1

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eqz v8, :cond_1

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_4

    :cond_1
    iget-object v8, v7, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v16

    iget-object v8, v7, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v7, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iget-object v9, v7, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v8, v15

    :goto_2
    move/from16 v17, v8

    if-eqz v16, :cond_4

    if-nez v17, :cond_4

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_4
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v8

    iget-object v8, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    iget v9, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v8, v13, v9}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v18

    if-nez v18, :cond_5

    new-instance v19, Lcom/android/server/am/ContentProviderRecord;

    iget-object v9, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v8, v19

    move-object v10, v7

    move-object v12, v13

    move-object v3, v13

    move v13, v14

    invoke-direct/range {v8 .. v13}, Lcom/android/server/am/ContentProviderRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Z)V

    iget-object v9, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v9, v3, v8}, Lcom/android/server/am/ProviderMap;->putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V

    goto :goto_3

    :cond_5
    move-object v3, v13

    move-object/from16 v8, v18

    :goto_3
    iget-object v9, v7, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v9, v8}, Lcom/android/server/am/ProcessProviderRecord;->installProvider(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V

    iget-boolean v9, v7, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-eqz v9, :cond_6

    iget-object v9, v7, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const-string v10, "android"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    :cond_6
    iget-object v9, v7, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v10, v10, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v12, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2, v9, v10, v11, v12}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    :cond_7
    iget-object v9, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v7, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x4

    invoke-virtual {v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    :goto_4
    add-int/2addr v6, v15

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    goto :goto_5

    :cond_9
    move-object v3, v0

    :goto_5
    return-object v3

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    return-object v3
.end method

.method getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;
    .locals 12

    move-object v9, p0

    move-object v10, p2

    iget-object v0, v9, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "getContentProvider"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    if-eqz v10, :cond_1

    iget-object v0, v9, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v0, v11, p2}, Lcom/android/server/appop/AppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given calling package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not match caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v4, v11

    move-object v5, p2

    move/from16 v7, p5

    move/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZI)Landroid/app/ContentProviderHolder;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "null IApplicationThread when getting content provider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ContentProviderHelper"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Landroid/app/ContentProviderHolder;
    .locals 15

    move-object v6, p0

    iget-object v0, v6, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.ACCESS_CONTENT_PROVIDERS_EXTERNALLY"

    const-string v2, "Do not have permission in call getContentProviderExternal()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x2

    const-string v13, "getContentProvider"

    const/4 v14, 0x0

    move/from16 v10, p2

    invoke-virtual/range {v7 .. v14}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-eqz p4, :cond_0

    move-object/from16 v4, p4

    goto :goto_0

    :cond_0
    const-string v0, "*external*"

    move-object v4, v0

    :goto_0
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;

    move-result-object v0

    return-object v0
.end method

.method getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;
    .locals 9

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZI)Landroid/app/ContentProviderHolder;

    move-result-object v0

    return-object v0
.end method

.method getProviderInfoLocked(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    or-int/lit16 v2, p3, 0x800

    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    return-object v2
.end method

.method getProviderMap()Lcom/android/server/am/ProviderMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    return-object v0
.end method

.method getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v9, "ContentProviderHelper"

    iget-object v0, v7, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "getProviderMimeType"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, v7, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move/from16 v4, p2

    invoke-virtual {v3, v4}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUser(I)I

    move-result v13

    invoke-direct {v7, v12, v11, v13}, Lcom/android/server/am/ContentProviderHelper;->canClearIdentity(III)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v14, v0

    move/from16 v16, v2

    goto :goto_0

    :cond_0
    move-wide v14, v0

    move/from16 v16, v2

    :goto_0
    const/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    :try_start_0
    const-string v5, "*getmimetype*"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object/from16 v1, p0

    move-object v2, v10

    move v4, v11

    move/from16 v18, v11

    move-object v11, v6

    move v6, v13

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object v1, v0

    if-eqz v1, :cond_3

    :try_start_2
    iget-object v0, v1, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    move-object v2, v0

    iget-object v0, v1, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v0}, Landroid/content/pm/ProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    move-object v3, v0

    new-instance v0, Lcom/android/server/am/ContentProviderHelper$1;

    invoke-direct {v0, v7, v3, v2}, Lcom/android/server/am/ContentProviderHelper$1;-><init>(Lcom/android/server/am/ContentProviderHelper;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    move-object v4, v0

    iget-object v0, v7, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v0, v1, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    invoke-interface {v0, v8}, Landroid/content/IContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v5, v7, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v16, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    :cond_1
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v7, v10, v11, v13}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v5, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_2
    :goto_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-object v0

    :catchall_1
    move-exception v0

    :try_start_6
    iget-object v5, v7, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    nop

    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    move-object/from16 v17, v1

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_5

    :cond_3
    if-nez v16, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    :cond_4
    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v7, v10, v11, v13}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_5
    :goto_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    nop

    return-object v11

    :catchall_4
    move-exception v0

    goto/16 :goto_7

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_5

    :catchall_5
    move-exception v0

    move/from16 v18, v11

    move-object v11, v6

    goto :goto_7

    :catch_4
    move-exception v0

    move/from16 v18, v11

    move-object v11, v6

    :goto_3
    move-object v1, v0

    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while determining type of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    nop

    if-nez v16, :cond_6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    :cond_6
    if-eqz v17, :cond_7

    :try_start_9
    invoke-virtual {v7, v10, v11, v13}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object v2, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_7
    :goto_4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-object v11

    :catch_5
    move-exception v0

    move/from16 v18, v11

    move-object v11, v6

    :goto_5
    move-object v1, v0

    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content provider dead retrieving "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    nop

    if-nez v16, :cond_8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    :cond_8
    if-eqz v17, :cond_9

    :try_start_b
    invoke-virtual {v7, v10, v11, v13}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception v0

    move-object v2, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_9
    :goto_6
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-object v11

    :goto_7
    if-nez v16, :cond_a

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    :cond_a
    if-eqz v17, :cond_b

    :try_start_c
    invoke-virtual {v7, v10, v11, v13}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_8

    :catchall_8
    move-exception v0

    move-object v1, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_b
    :goto_8
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v0
.end method

.method getProviderMimeTypeAsync(Landroid/net/Uri;ILandroid/os/RemoteCallback;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "getProviderMimeTypeAsync"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v2, p2}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUser(I)I

    move-result v9

    invoke-direct {p0, v8, v1, p2}, Lcom/android/server/am/ContentProviderHelper;->canClearIdentity(III)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    move-wide v10, v2

    const/4 v4, 0x0

    :try_start_0
    const-string v6, "*getmimetype*"

    move-object v2, p0

    move-object v3, v0

    move v5, v1

    move v7, v9

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Landroid/app/ContentProviderHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    new-instance v4, Landroid/os/RemoteCallback;

    new-instance v5, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v0, v9, p3}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ContentProviderHelper;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    invoke-direct {v4, v5}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v3, p1, v4}, Landroid/content/IContentProvider;->getTypeAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    goto :goto_1

    :cond_1
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p3, v3}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "ContentProviderHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content provider dead retrieving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p3, v3}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method installEncryptionUnawareProviders(I)V
    .locals 11

    const v0, 0x40008

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    :goto_1
    if-ge v6, v7, :cond_2

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    iget v9, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v9, p1, :cond_1

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isUnlocked()Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v9

    new-instance v10, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda2;

    invoke-direct {v10, p0, v8}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v9, v10}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v2
.end method

.method public final installSystemProviders()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v1

    const-string/jumbo v2, "system"

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ContentProviderHelper;->generateApplicationProvidersLocked(Lcom/android/server/am/ProcessRecord;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_0
    if-ltz v4, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ProviderInfo;

    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v3

    if-nez v6, :cond_0

    const-string v6, "ContentProviderHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not installing system proc provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": not system .apk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread;->installSystemProviders(Ljava/util/List;)V

    :cond_2
    monitor-enter p0

    :try_start_1
    iput-boolean v3, p0, Lcom/android/server/am/ContentProviderHelper;->mSystemProvidersInstalled:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerConstants;->start(Landroid/content/ContentResolver;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v1, Lcom/android/server/am/CoreSettingsObserver;

    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v1, v3}, Lcom/android/server/am/CoreSettingsObserver;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mCoreSettingsObserver:Lcom/android/server/am/CoreSettingsObserver;

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->installSystemProviders()V

    new-instance v0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;-><init>(Lcom/android/server/am/ContentProviderHelper;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->start(Landroid/content/ContentResolver;)Lcom/android/server/am/SettingsToPropertiesMapper;

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjuster;->initSettings()V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/RescueParty;->onSettingsProviderPublished(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$checkContentProviderAssociation$3$ContentProviderHelper(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, p3, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic lambda$decProviderCountLocked$2$ContentProviderHelper(Lcom/android/server/am/ContentProviderConnection;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ContentProviderHelper;->handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V

    return-void
.end method

.method public synthetic lambda$getProviderMimeTypeAsync$0$ContentProviderHelper(Ljava/lang/String;ILandroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-virtual {p3, p4}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public synthetic lambda$installEncryptionUnawareProviders$1$ContentProviderHelper(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p1

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v2, 0x40008

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->userId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v4, p2

    :try_start_1
    invoke-interface {v0, v4, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-eqz v0, :cond_9

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v5, v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_8

    aget-object v8, v3, v7

    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-nez v9, :cond_1

    iget-boolean v9, v8, Landroid/content/pm/ProviderInfo;->multiprocess:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    move v9, v10

    :goto_2
    move-object/from16 v11, p0

    :try_start_2
    iget-object v12, v11, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v8, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v14, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v8, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget v6, v8, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {v12, v13, v14, v15, v6}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    move v6, v10

    :goto_4
    iget-object v12, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v12

    iget-object v13, v8, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v13, :cond_5

    iget-object v13, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iget-object v14, v8, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v13, :cond_4

    goto :goto_5

    :cond_4
    const/4 v10, 0x0

    goto :goto_6

    :cond_5
    :goto_5
    nop

    :goto_6
    const-string v13, "ContentProviderHelper"

    if-eqz v9, :cond_7

    if-eqz v6, :cond_7

    if-eqz v12, :cond_6

    if-eqz v10, :cond_7

    :cond_6
    :try_start_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Installing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v8}, Landroid/app/IApplicationThread;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    goto :goto_7

    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_9

    :cond_8
    move-object/from16 v11, p0

    goto :goto_8

    :cond_9
    move-object/from16 v11, p0

    :goto_8
    goto :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v11, p0

    move-object/from16 v4, p2

    :goto_9
    return-void
.end method

.method processContentProviderPublishTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ContentProviderHelper;->cleanupAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;Z)Z

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x7

    const/4 v6, 0x0

    const-string/jumbo v7, "timeout publishing content providers"

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    return-void
.end method

.method publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/IApplicationThread;",
            "Ljava/util/List<",
            "Landroid/app/ContentProviderHolder;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "publishContentProviders"

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    move-object v5, v0

    if-eqz v5, :cond_c

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const/4 v0, 0x0

    const/4 v8, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    :goto_0
    if-ge v8, v9, :cond_8

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ContentProviderHolder;

    if-eqz v10, :cond_7

    iget-object v11, v10, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v11, :cond_7

    iget-object v11, v10, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v11, :cond_1

    move/from16 v16, v9

    goto/16 :goto_3

    :cond_1
    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-object v12, v10, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v12, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/android/server/am/ProcessProviderRecord;->getProvider(Ljava/lang/String;)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v11

    if-nez v11, :cond_2

    move/from16 v16, v9

    goto/16 :goto_3

    :cond_2
    const/4 v12, 0x1

    new-instance v0, Landroid/content/ComponentName;

    iget-object v13, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v13, v13, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v14, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v14, v14, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v0

    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v0, v13, v11}, Lcom/android/server/am/ProviderMap;->putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V

    iget-object v0, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v14, ";"

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    const/4 v0, 0x0

    :goto_1
    array-length v15, v14

    if-ge v0, v15, :cond_3

    iget-object v15, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    move/from16 v16, v9

    aget-object v9, v14, v0

    invoke-virtual {v15, v9, v11}, Lcom/android/server/am/ProviderMap;->putProviderByName(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v9, v16

    goto :goto_1

    :cond_3
    move/from16 v16, v9

    const/4 v0, 0x0

    const/4 v9, 0x0

    iget-object v15, v1, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    move/from16 v19, v9

    move v9, v0

    move/from16 v0, v19

    :goto_2
    move/from16 v17, v12

    if-ge v0, v15, :cond_5

    iget-object v12, v1, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v11, :cond_4

    iget-object v12, v1, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v9, 0x1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v15, v15, -0x1

    :cond_4
    const/4 v12, 0x1

    add-int/2addr v0, v12

    move/from16 v12, v17

    goto :goto_2

    :cond_5
    if-eqz v9, :cond_6

    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v12, 0x49

    invoke-virtual {v0, v12, v11}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v12, 0x39

    invoke-virtual {v0, v12, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    :cond_6
    iget-object v0, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v12, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v15, v13

    iget-wide v12, v12, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    move/from16 v18, v9

    iget-object v9, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5, v0, v12, v13, v9}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v10, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    iput-object v0, v11, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    invoke-virtual {v11, v5}, Lcom/android/server/am/ContentProviderRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Lcom/android/server/am/ContentProviderRecord;->onProviderPublishStatusLocked(Z)V

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    iput v0, v11, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v0, v17

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_7
    move/from16 v16, v9

    :goto_3
    add-int/lit8 v8, v8, 0x1

    move/from16 v9, v16

    goto/16 :goto_0

    :cond_8
    move/from16 v16, v9

    if-eqz v0, :cond_b

    iget-object v8, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v9, "updateOomAdj_getProvider"

    invoke-virtual {v8, v5, v9}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    const/4 v8, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    :goto_4
    if-ge v8, v9, :cond_b

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ContentProviderHolder;

    if-eqz v10, :cond_a

    iget-object v11, v10, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v11, :cond_a

    iget-object v11, v10, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v11, :cond_9

    goto :goto_5

    :cond_9
    iget-object v11, v10, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v12, v10, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v12, v12, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-direct {v1, v5, v11, v12}, Lcom/android/server/am/ContentProviderHelper;->maybeUpdateProviderUsageStatsLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_c
    :try_start_5
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find app for caller "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") when publishing content providers"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method refContentProvider(Landroid/os/IBinder;II)Z
    .locals 5

    const-string/jumbo v0, "refContentProvider: "

    :try_start_0
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/ContentProviderConnection;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-eqz v1, :cond_1

    nop

    iget-object v2, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v0, v2}, Lcom/android/server/am/ActivityManagerService;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/ContentProviderConnection;->adjustCounts(II)V

    iget-boolean v0, v1, Lcom/android/server/am/ContentProviderConnection;->dead:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "connection is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not a ContentProviderConnection"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ContentProviderHelper"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method removeContentProvider(Landroid/os/IBinder;Z)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "removeContentProvider"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    move-object v2, p1

    check-cast v2, Lcom/android/server/am/ContentProviderConnection;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    nop

    if-eqz v2, :cond_1

    :try_start_1
    const-string/jumbo v3, "removeContentProvider: "

    iget-object v4, v2, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, v4, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, v4, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    const-wide/16 v10, 0x40

    invoke-static {v10, v11, v3, v4}, Lcom/android/server/am/ActivityManagerService;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v12, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, v2

    move v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/ContentProviderHelper;->decProviderCountLocked(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ZZZ)Z

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_8
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    nop

    throw v3

    :cond_1
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "connection is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_2
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeContentProvider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not a ContentProviderConnection"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ContentProviderHelper"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.ACCESS_CONTENT_PROVIDERS_EXTERNALLY"

    const-string v2, "Do not have permission in call removeContentProviderExternal()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method removeContentProviderExternalUnchecked(Ljava/lang/String;Landroid/os/IBinder;I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v3, v2, p3}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, p2}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleLocked(Landroid/os/IBinder;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v6, "updateOomAdj_removeProvider"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const-string v4, "ContentProviderHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to remove content provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " with no external reference for token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v4, "ContentProviderHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to remove content provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " with no external references."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    if-nez p3, :cond_0

    iget v0, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    add-int/2addr v0, v5

    iput v0, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    const/4 v6, 0x3

    if-le v0, v6, :cond_0

    const/4 v0, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    move/from16 v6, p3

    :goto_0
    const/4 v7, 0x0

    if-eqz v4, :cond_1

    if-eqz v6, :cond_4

    :cond_1
    monitor-enter p2

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->notifyAll()V

    invoke-virtual {v3, v7}, Lcom/android/server/am/ContentProviderRecord;->onProviderPublishStatusLocked(Z)V

    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x49

    invoke-virtual {v0, v8, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, v3, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v8, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    iget-object v9, v3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v8, v9, v0}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v8

    if-ne v8, v3, :cond_2

    iget-object v8, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    iget-object v9, v3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v8, v9, v0}, Lcom/android/server/am/ProviderMap;->removeProviderByClass(Landroid/content/ComponentName;I)V

    :cond_2
    iget-object v8, v3, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    :goto_1
    array-length v10, v8

    if-ge v9, v10, :cond_4

    iget-object v10, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    aget-object v11, v8, v9

    invoke-virtual {v10, v11, v0}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v10

    if-ne v10, v3, :cond_3

    iget-object v10, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    aget-object v11, v8, v9

    invoke-virtual {v10, v11, v0}, Lcom/android/server/am/ProviderMap;->removeProviderByName(Ljava/lang/String;I)V

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    move v8, v0

    :goto_2
    if-ltz v8, :cond_c

    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/am/ContentProviderConnection;

    iget-boolean v0, v9, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    if-nez v6, :cond_5

    move/from16 p3, v6

    goto/16 :goto_6

    :cond_5
    iget-object v10, v9, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v11

    iput-boolean v5, v9, Lcom/android/server/am/ContentProviderConnection;->dead:Z

    invoke-virtual {v9}, Lcom/android/server/am/ContentProviderConnection;->stableCount()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v12

    if-nez v12, :cond_8

    if-eqz v11, :cond_8

    if-eqz v0, :cond_8

    sget v12, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v12, :cond_8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "depends on provider "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " in dying proc "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_6

    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_3

    :cond_6
    const-string v13, "??"

    :goto_3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " (adj "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_7

    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_4

    :cond_7
    const-string v13, "??"

    :goto_4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xc

    invoke-virtual {v10, v12, v13, v7, v5}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    :cond_8
    move/from16 p3, v6

    goto :goto_6

    :cond_9
    if-eqz v11, :cond_b

    iget-object v0, v9, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-eqz v0, :cond_b

    :try_start_1
    iget-object v0, v9, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    invoke-interface {v0}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v11, v0}, Landroid/app/IApplicationThread;->unstableProviderDied(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    :goto_5
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, v9, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v0, v9}, Lcom/android/server/am/ProcessProviderRecord;->removeProviderConnection(Lcom/android/server/am/ContentProviderConnection;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v12, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v13, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v14, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v15, v3, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 p3, v6

    iget-wide v5, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iget-object v7, v3, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-wide/from16 v16, v5

    move-object/from16 v18, v0

    move-object/from16 v19, v7

    invoke-virtual/range {v12 .. v19}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;IJLandroid/content/ComponentName;Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    move/from16 p3, v6

    goto :goto_6

    :cond_b
    move/from16 p3, v6

    :goto_6
    add-int/lit8 v8, v8, -0x1

    move/from16 v6, p3

    const/4 v5, 0x1

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_c
    move/from16 p3, v6

    if-eqz v4, :cond_d

    if-eqz p3, :cond_d

    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    iput v5, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    const/4 v4, 0x0

    :cond_d
    return v4

    :catchall_0
    move-exception v0

    move/from16 p3, v6

    :goto_7
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_7
.end method

.method unstableProviderDied(Landroid/os/IBinder;)V
    .locals 10

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-eqz v0, :cond_6

    const-string/jumbo v1, "unstableProviderDied: "

    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v1, v2}, Lcom/android/server/am/ActivityManagerService;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-nez v2, :cond_1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_1
    :try_start_4
    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-string v5, "ContentProviderHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unstableProviderDied: caller "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " says "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " died, but we don\'t agree"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v5

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v5, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v5, v5, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-eq v5, v2, :cond_3

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_3
    :try_start_9
    iget-object v5, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v5, v5, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v7, "ContentProviderHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Process "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " (pid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") early provider death"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    iget-object v8, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v9, "unstable content provider"

    invoke-virtual {v8, v5, v9}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_1
    move-exception v8

    :try_start_d
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v8

    :cond_5
    :goto_1
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_2
    move-exception v5

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :catchall_3
    move-exception v2

    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :catchall_4
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v1

    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "connection is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refContentProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not a ContentProviderConnection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContentProviderHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
