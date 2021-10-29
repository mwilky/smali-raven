.class final Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;
.super Landroid/permission/IPermissionChecker$Stub;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionCheckerService"
.end annotation


# static fields
.field private static final sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/permission/IPermissionChecker$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-void
.end method

.method static synthetic access$4200(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V

    return-void
.end method

.method private static checkAppOpPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I
    .locals 25

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v16

    const/16 v17, 0x2

    if-gez v16, :cond_0

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->access$4100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Appop permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with no app op defined!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v17

    :cond_0
    move-object/from16 v0, p3

    const/4 v1, 0x0

    move-object v11, v0

    :goto_0
    const/4 v0, 0x1

    const/16 v18, 0x0

    if-nez p6, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v2, v18

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v0

    :goto_2
    move/from16 v19, v2

    invoke-virtual {v11}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v20

    if-eqz p6, :cond_3

    invoke-virtual {v11, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    if-eqz v20, :cond_4

    invoke-virtual {v11, v13}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    return v17

    :cond_4
    if-eqz p6, :cond_5

    invoke-virtual {v11, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v20, :cond_5

    invoke-virtual/range {v20 .. v20}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v0

    goto :goto_3

    :cond_5
    move/from16 v1, v18

    :goto_3
    move/from16 v21, v1

    if-nez v21, :cond_7

    if-nez v20, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v7, v18

    goto :goto_5

    :cond_7
    :goto_4
    move v7, v0

    :goto_5
    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object v2, v11

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v6, v19

    move/from16 v8, v21

    move-object/from16 v24, v11

    move/from16 v11, v22

    move/from16 v12, v23

    invoke-static/range {v0 .. v12}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    if-nez v19, :cond_8

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-static {v13, v14, v15, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_8

    return v17

    :cond_8
    if-eqz v20, :cond_9

    invoke-virtual/range {v20 .. v20}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual/range {v20 .. v20}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-static {v13, v14, v15, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_9

    return v17

    :pswitch_1
    return v17

    :cond_9
    :goto_6
    if-eqz v20, :cond_b

    invoke-virtual/range {v20 .. v20}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_7

    :cond_a
    move-object/from16 v11, v20

    move-object/from16 v12, p3

    move-object/from16 v1, v20

    goto/16 :goto_0

    :cond_b
    :goto_7
    return v18

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static checkOp(Landroid/content/Context;ILcom/android/server/pm/permission/PermissionManagerServiceInternal;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I
    .locals 27

    move-object/from16 v13, p0

    move-object/from16 v12, p3

    const/16 v20, 0x2

    if-ltz p1, :cond_e

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    nop

    move/from16 v9, p6

    invoke-static {v9, v12}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->getAttributionChainId(ZLandroid/content/AttributionSource;)I

    move-result v8

    const/4 v0, -0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    if-eq v8, v0, :cond_1

    move/from16 v0, v21

    goto :goto_0

    :cond_1
    move/from16 v0, v22

    :goto_0
    move/from16 v23, v0

    move-object/from16 v0, p3

    const/4 v1, 0x0

    if-eqz v23, :cond_3

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v3

    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    move-object/from16 v7, p2

    invoke-static {v13, v7, v4, v2, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v2, v22

    goto :goto_2

    :cond_3
    move-object/from16 v7, p2

    :goto_1
    move/from16 v2, v21

    :goto_2
    move/from16 v24, v2

    move-object v6, v0

    :goto_3
    if-eqz v1, :cond_4

    move/from16 v0, v21

    goto :goto_4

    :cond_4
    move/from16 v0, v22

    :goto_4
    move/from16 v25, v0

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v6, v13}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    return v20

    :cond_5
    if-nez v11, :cond_6

    move/from16 v18, v21

    goto :goto_5

    :cond_6
    move/from16 v18, v22

    :goto_5
    if-eqz v24, :cond_9

    invoke-virtual {v6, v13}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v6, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    if-eqz v11, :cond_8

    invoke-virtual {v11, v13}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move/from16 v19, v21

    goto :goto_6

    :cond_9
    move/from16 v19, v22

    :goto_6
    if-nez v25, :cond_a

    if-eqz v23, :cond_a

    const/16 v16, 0x0

    move-object/from16 v14, p3

    move-object v15, v6

    move/from16 v17, p6

    invoke-static/range {v14 .. v19}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxyAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v0

    move v10, v0

    goto :goto_7

    :cond_a
    move/from16 v10, v22

    :goto_7
    nop

    if-eqz v23, :cond_b

    const/4 v2, 0x0

    move-object/from16 v0, p3

    move-object v1, v11

    move/from16 v3, p6

    move/from16 v4, v18

    move/from16 v5, v19

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxiedAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v0

    goto :goto_8

    :cond_b
    move/from16 v0, v22

    :goto_8
    move-object v14, v11

    move v11, v0

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v6

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v17, v6

    move/from16 v6, v25

    move/from16 v7, v18

    move/from16 v26, v8

    move v8, v15

    move/from16 v9, v16

    move/from16 v12, v26

    invoke-static/range {v0 .. v12}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    if-eqz v14, :cond_d

    invoke-virtual {v14}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_9

    :pswitch_0
    return v20

    :pswitch_1
    return v21

    :cond_c
    move-object v6, v14

    move-object/from16 v7, p2

    move-object/from16 v12, p3

    move/from16 v9, p6

    move-object v1, v14

    move/from16 v8, v26

    goto/16 :goto_3

    :cond_d
    :goto_9
    return v22

    :cond_e
    :goto_a
    return v20

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I
    .locals 13

    move-object v10, p2

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PermissionInfo;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    move-object v1, v4

    const-string v4, "android"

    iget-object v5, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    return v2

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->isAppOp()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkAppOpPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I

    move-result v1

    return v1

    :cond_2
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static/range {p0 .. p8}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkRuntimePermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v1

    return v1

    :cond_3
    if-nez p7, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v4

    move-object v11, p0

    move-object v12, p1

    invoke-static {p0, p1, p2, v1, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_4
    move-object v11, p0

    move-object v12, p1

    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-eqz v1, :cond_6

    nop

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v4

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v1

    return v1

    :cond_6
    return v3
.end method

.method private static checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, p2, v0, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_3

    invoke-static {p3}, Landroid/os/Process;->isIsolated(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "android.permission.RECORD_AUDIO"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    nop

    invoke-interface {p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getHotwordDetectionServiceProvider()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;->getUid()I

    move-result v5

    if-ne p3, v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    move v1, v2

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {p4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "android.permission.RENOUNCE_PERMISSIONS"

    invoke-virtual {p0, v2, v0, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_4

    return v3

    :cond_4
    return v1
.end method

.method private static checkRuntimePermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I
    .locals 29

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    move/from16 v9, p6

    move/from16 v8, p7

    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v7

    nop

    invoke-static {v9, v12}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->getAttributionChainId(ZLandroid/content/AttributionSource;)I

    move-result v6

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/4 v0, -0x1

    if-eq v6, v0, :cond_0

    move/from16 v0, v22

    goto :goto_0

    :cond_0
    move/from16 v0, v23

    :goto_0
    move/from16 v24, v0

    move-object/from16 v0, p3

    const/4 v1, 0x0

    if-eqz v24, :cond_2

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v3

    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {v13, v14, v4, v2, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v2, v23

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v2, v22

    :goto_2
    move/from16 v25, v2

    move-object v11, v0

    :goto_3
    if-nez v8, :cond_4

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_3
    move/from16 v0, v23

    goto :goto_5

    :cond_4
    :goto_4
    move/from16 v0, v22

    :goto_5
    move/from16 v26, v0

    invoke-virtual {v11}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v5

    const/16 v27, 0x2

    if-eqz v8, :cond_5

    invoke-virtual {v11, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v11, v13}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    return v27

    :cond_6
    if-nez v26, :cond_7

    invoke-virtual {v11}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual {v11}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-static {v13, v14, v15, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_7

    return v27

    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual {v5}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-static {v13, v14, v15, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;ILjava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_8

    return v27

    :cond_8
    if-gez v7, :cond_b

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v15}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->access$4100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Platform runtime permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with no app op defined!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-nez v5, :cond_a

    return v23

    :cond_a
    move-object v11, v5

    move-object v1, v5

    goto :goto_3

    :cond_b
    if-eqz v8, :cond_c

    invoke-virtual {v11, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-nez v0, :cond_c

    move/from16 v0, v22

    goto :goto_6

    :cond_c
    move/from16 v0, v23

    :goto_6
    move/from16 v28, v0

    if-nez v28, :cond_e

    if-nez v5, :cond_d

    goto :goto_7

    :cond_d
    move/from16 v20, v23

    goto :goto_8

    :cond_e
    :goto_7
    move/from16 v20, v22

    :goto_8
    if-eqz v25, :cond_11

    invoke-virtual {v11, v13}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v11, v12}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    if-eqz v5, :cond_10

    invoke-virtual {v5, v13}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    move/from16 v21, v22

    goto :goto_9

    :cond_11
    move/from16 v21, v23

    :goto_9
    if-nez v26, :cond_12

    if-eqz v24, :cond_12

    move-object/from16 v16, p3

    move-object/from16 v17, v11

    move/from16 v18, p7

    move/from16 v19, p6

    invoke-static/range {v16 .. v21}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxyAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v0

    move v10, v0

    goto :goto_a

    :cond_12
    move/from16 v10, v23

    :goto_a
    nop

    if-eqz v24, :cond_13

    move-object/from16 v0, p3

    move-object v1, v5

    move/from16 v2, p7

    move/from16 v3, p6

    move/from16 v4, v20

    move-object/from16 v16, v5

    move/from16 v5, v21

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxiedAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v0

    goto :goto_b

    :cond_13
    move-object/from16 v16, v5

    move/from16 v0, v23

    :goto_b
    move-object v5, v11

    move v11, v0

    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v5

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object v14, v5

    move/from16 v5, p6

    move/from16 v17, v6

    move/from16 v6, v26

    move v15, v7

    move/from16 v7, v20

    move v13, v8

    move/from16 v8, v28

    move/from16 v9, p8

    move/from16 v12, v17

    invoke-static/range {v0 .. v12}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    if-eqz p6, :cond_14

    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    move-object/from16 v2, p0

    move v3, v13

    invoke-direct {v1, v2, v15, v14, v3}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;-><init>(Landroid/content/Context;ILandroid/content/AttributionSource;Z)V

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->access$4000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v14}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :pswitch_0
    return v27

    :pswitch_1
    return v22

    :cond_14
    move-object/from16 v2, p0

    move v3, v13

    :goto_c
    if-eqz v16, :cond_16

    invoke-virtual/range {v16 .. v16}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-nez v1, :cond_15

    goto :goto_d

    :cond_15
    move-object/from16 v11, v16

    move-object/from16 v14, p1

    move-object/from16 v12, p3

    move/from16 v9, p6

    move-object v13, v2

    move v8, v3

    move v7, v15

    move-object/from16 v1, v16

    move/from16 v6, v17

    move-object/from16 v15, p2

    goto/16 :goto_3

    :cond_16
    :goto_d
    return v23

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    const/4 v3, -0x1

    move/from16 v9, p1

    if-ne v9, v3, :cond_0

    return-void

    :cond_0
    new-instance v3, Landroid/content/AttributionSource;

    invoke-direct {v3, v1}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    const/4 v4, 0x0

    move-object v10, v3

    :goto_0
    const/4 v3, 0x0

    const/4 v5, 0x1

    if-nez p3, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v6, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v5

    :goto_2
    move v11, v6

    invoke-virtual {v10}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v12

    if-eqz p3, :cond_3

    invoke-virtual {v10}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v4

    if-eq v4, v1, :cond_4

    :cond_3
    if-eqz v12, :cond_4

    invoke-virtual {v10, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    return-void

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {v10}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v4

    if-ne v4, v1, :cond_5

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v5

    goto :goto_3

    :cond_5
    move v4, v3

    :goto_3
    move v13, v4

    if-nez v13, :cond_6

    if-nez v12, :cond_7

    :cond_6
    move v3, v5

    :cond_7
    move v14, v3

    if-nez v13, :cond_8

    move-object v3, v10

    goto :goto_4

    :cond_8
    move-object v3, v12

    :goto_4
    move-object v15, v3

    if-eqz v14, :cond_a

    invoke-static {v0, v15}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_9

    return-void

    :cond_9
    invoke-virtual {v15}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v15}, Landroid/content/AttributionSource;->getUid()I

    move-result v6

    invoke-virtual {v15}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    move/from16 v5, p1

    move-object/from16 v7, v16

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->finishOp(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    nop

    invoke-static {v0, v15}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    return-void

    :cond_b
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3, v11}, Landroid/app/AppOpsManager;->finishProxyOp(Ljava/lang/String;Landroid/content/AttributionSource;Z)V

    :goto_5
    if-eqz v12, :cond_e

    invoke-virtual {v12}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v3

    if-nez v3, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->access$4000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v10}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->unregister()Z

    :cond_d
    move-object v10, v12

    move-object v4, v12

    goto/16 :goto_0

    :cond_e
    :goto_6
    return-void
.end method

.method private static getAttributionChainId(ZLandroid/content/AttributionSource;)I
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    if-gez v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private static performOpTransaction(Landroid/content/Context;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I
    .locals 24

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v11, p2

    move-object/from16 v10, p3

    move/from16 v9, p6

    move/from16 v8, p9

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/AppOpsManager;

    if-nez p8, :cond_0

    move-object v0, v11

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    :goto_0
    move-object v6, v0

    const/4 v0, 0x2

    if-nez p4, :cond_4

    invoke-static {v1, v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    nop

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getUid()I

    move-result v4

    invoke-virtual {v7, v2, v4, v3}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v4

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v5

    if-nez p7, :cond_3

    if-nez v4, :cond_3

    if-eqz v5, :cond_3

    invoke-static {v1, v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_2

    return v0

    :cond_2
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual {v7, v2, v0, v12}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0

    :cond_3
    return v4

    :cond_4
    const-string v5, "android.permission.UPDATE_APP_OPS_STATS"

    const-string v4, " while not having "

    const-string v3, " protecting data with platform defined runtime permission "

    const-string v15, "Datasource "

    const/4 v12, -0x1

    if-eqz p5, :cond_9

    invoke-static {v1, v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_5

    return v0

    :cond_5
    move/from16 v13, p1

    const/4 v14, 0x0

    if-eq v8, v12, :cond_7

    if-eq v8, v2, :cond_7

    nop

    invoke-virtual/range {v22 .. v22}, Landroid/content/AttributionSource;->getUid()I

    move-result v12

    invoke-virtual/range {v22 .. v22}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v2, v12, v0}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v14

    const/4 v0, 0x2

    if-ne v14, v0, :cond_6

    return v14

    :cond_6
    move/from16 v13, p9

    move/from16 v23, v13

    goto :goto_1

    :cond_7
    move/from16 v23, v13

    :goto_1
    if-eqz p7, :cond_8

    nop

    :try_start_0
    invoke-virtual/range {v22 .. v22}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual/range {v22 .. v22}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v18
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v12, v7

    move v2, v14

    move/from16 v14, v23

    move-object v9, v15

    move v15, v0

    move-object/from16 v19, p3

    move/from16 v20, p10

    move/from16 v21, p12

    :try_start_1
    invoke-virtual/range {v12 .. v21}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;II)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v12, p6

    move-object v13, v6

    move-object v14, v7

    move v15, v8

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move v2, v14

    move-object v9, v15

    :goto_2
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->access$4100()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v7

    move/from16 v4, p9

    move-object/from16 v5, p2

    move-object v13, v6

    move-object/from16 v6, p3

    move-object v14, v7

    move/from16 v7, p6

    move v15, v8

    move/from16 v8, p10

    move/from16 v12, p6

    move/from16 v9, p11

    move/from16 v10, p12

    invoke-virtual/range {v3 .. v10}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result v0

    goto :goto_3

    :cond_8
    move-object v13, v6

    move v15, v8

    move v12, v9

    move v2, v14

    move-object v14, v7

    move-object v3, v14

    move/from16 v4, v23

    move-object/from16 v5, v22

    move-object/from16 v6, p3

    move/from16 v7, p6

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    invoke-virtual/range {v3 .. v10}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result v0

    :goto_3
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3

    :cond_9
    move-object v13, v6

    move-object v14, v7

    move v2, v9

    move-object v9, v15

    move v15, v8

    invoke-static {v1, v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x2

    return v0

    :cond_a
    move/from16 v0, p1

    const/4 v6, 0x0

    if-eq v15, v12, :cond_c

    move/from16 v12, p1

    if-eq v15, v12, :cond_d

    nop

    invoke-virtual {v10}, Landroid/content/AttributionSource;->getUid()I

    move-result v7

    invoke-virtual {v10}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v12, v7, v8}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b

    return v6

    :cond_b
    move/from16 v0, p9

    move v8, v0

    move v7, v6

    goto :goto_4

    :cond_c
    move/from16 v12, p1

    :cond_d
    move v8, v0

    move v7, v6

    :goto_4
    if-eqz p7, :cond_e

    nop

    :try_start_2
    invoke-virtual {v10}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual {v10}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v16
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v1, v3

    move-object v3, v14

    move-object v12, v4

    move v4, v8

    move-object/from16 v17, v13

    move-object v13, v5

    move v5, v0

    move v15, v7

    move-object/from16 v7, v16

    move/from16 v16, v15

    move v15, v8

    move-object/from16 v8, p3

    :try_start_3
    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v1, p3

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v1, v3

    move-object v12, v4

    move/from16 v16, v7

    move v15, v8

    move-object/from16 v17, v13

    move-object v13, v5

    :goto_5
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->access$4100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p3

    invoke-virtual {v14, v15, v11, v1, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    goto :goto_6

    :cond_e
    move-object/from16 v1, p3

    move/from16 v16, v7

    move v15, v8

    move-object/from16 v17, v13

    invoke-virtual {v14, v15, v10, v1, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    :goto_6
    move/from16 v6, v16

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method

.method private static resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p5, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz p6, :cond_3

    if-eqz p4, :cond_2

    or-int/lit8 v0, v1, 0x1

    return v0

    :cond_2
    if-nez p2, :cond_6

    invoke-virtual {p1, p0}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    or-int/lit8 v0, v1, 0x1

    return v0

    :cond_3
    if-eqz p4, :cond_4

    or-int/lit8 v0, v1, 0x4

    return v0

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    or-int/lit8 v0, v1, 0x1

    return v0

    :cond_5
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    if-nez v2, :cond_6

    or-int/lit8 v0, v1, 0x4

    return v0

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p1, p0}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    return v0

    :cond_7
    or-int/lit8 v0, v1, 0x2

    return v0

    :cond_8
    :goto_1
    return v0
.end method

.method private static resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;
    .locals 1

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v0

    return-object v0
.end method

.method private static resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static resolveProxiedAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I

    move-result v0

    return v0
.end method

.method private static resolveProxyAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I

    move-result v0

    return v0
.end method


# virtual methods
.method public checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    new-instance v3, Landroid/content/AttributionSource;

    invoke-direct {v3, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    move v1, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkOp(Landroid/content/Context;ILcom/android/server/pm/permission/PermissionManagerServiceInternal;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    :cond_0
    return v0
.end method

.method public checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I
    .locals 13

    move-object v0, p0

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/content/AttributionSource;

    move-object v12, p2

    invoke-direct {v4, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-object v3, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v1

    if-eqz p5, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, -0x1

    if-ne v11, v2, :cond_0

    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v10}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v2

    invoke-virtual {p0, v11, v2, v10}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    :cond_1
    :goto_0
    return v1
.end method

.method public finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V

    return-void
.end method
