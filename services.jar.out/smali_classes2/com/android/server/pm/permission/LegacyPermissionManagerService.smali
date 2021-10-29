.class public Lcom/android/server/pm/permission/LegacyPermissionManagerService;
.super Landroid/permission/ILegacyPermissionManager$Stub;
.source "LegacyPermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;,
        Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

.field private final mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;)V

    const-class v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;Lcom/android/server/pm/permission/LegacyPermissionManagerService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string v0, "legacy_permission"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;)V
    .locals 1

    invoke-direct {p0}, Landroid/permission/ILegacyPermissionManager$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-direct {v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    return-object v0
.end method

.method private checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 7

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v0, p2, p6, p7}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    move-object v1, v0

    move-object v2, p3

    move v3, p7

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;
    .locals 2

    const-class v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    invoke-direct {v1, p0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    :cond_0
    return-object v0
.end method

.method private verifyCallerCanCheckAccess(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getCallingPid()I

    move-result v1

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_1

    if-ne v0, p4, :cond_0

    if-ne v1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    const-string v3, "Calling uid %d, pid %d cannot access for package %s (uid=%d, pid=%d): %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p2

    invoke-direct {v1, v8, v11, v9, v10}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->verifyCallerCanCheckAccess(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    const/4 v0, 0x0

    const/16 v2, 0x3e8

    if-eq v12, v2, :cond_4

    if-nez v12, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v3, v9, v10}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    if-eqz v8, :cond_3

    iget-object v2, v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->clearCallingIdentity()J

    move-result-wide v13

    iget-object v2, v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    const-string v3, "appops"

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/app/AppOpsManager;

    :try_start_0
    const-string v3, "android:read_device_identifiers"

    move-object v2, v15

    move/from16 v4, p5

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    nop

    iget-object v2, v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v2, v13, v14}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->restoreCallingIdentity(J)V

    return v0

    :cond_2
    iget-object v2, v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v2, v13, v14}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->restoreCallingIdentity(J)V

    nop

    iget-object v2, v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v8, v9, v10}, Landroid/app/admin/DevicePolicyManager;->hasDeviceIdentifierAccess(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_3

    return v0

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v2, v13, v14}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->restoreCallingIdentity(J)V

    throw v0

    :cond_3
    const/4 v0, -0x1

    return v0

    :cond_4
    :goto_0
    return v0
.end method

.method public checkPhoneNumberAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p2

    invoke-direct {v9, v10, v13, v11, v12}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->verifyCallerCanCheckAccess(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v0, v9, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1, v11, v12}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v14, 0x0

    if-nez v0, :cond_0

    return v14

    :cond_0
    if-nez v10, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    const/4 v1, 0x0

    const/4 v15, -0x1

    :try_start_0
    iget-object v0, v9, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v0, v10, v12}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x1d

    if-gt v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v14

    :goto_0
    move v1, v2

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    const-string v3, "android.permission.READ_PHONE_STATE"

    const-string v4, "android:read_phone_state"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v15

    if-nez v15, :cond_3

    return v15

    :cond_3
    const/4 v3, 0x0

    const-string v4, "android:write_sms"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_4

    return v14

    :cond_4
    const-string v3, "android.permission.READ_PHONE_NUMBERS"

    const-string v4, "android:read_phone_numbers"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_5

    return v14

    :cond_5
    const-string v3, "android.permission.READ_SMS"

    const-string v4, "android:read_sms"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_6

    return v14

    :cond_6
    return v15
.end method

.method public grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "grantDefaultPermissionsToActiveLuiApp"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;Ljava/lang/String;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "grantPermissionsToEnabledCarrierApps"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "grantDefaultPermissionsToEnabledImsServices"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "grantDefaultPermissionsToEnabledTelephonyDataServices"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public synthetic lambda$grantDefaultPermissionsToActiveLuiApp$0$LegacyPermissionManagerService(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$grantDefaultPermissionsToEnabledCarrierApps$5$LegacyPermissionManagerService([Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$grantDefaultPermissionsToEnabledImsServices$2$LegacyPermissionManagerService([Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$grantDefaultPermissionsToEnabledTelephonyDataServices$3$LegacyPermissionManagerService([Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$revokeDefaultPermissionsFromDisabledTelephonyDataServices$4$LegacyPermissionManagerService([Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$revokeDefaultPermissionsFromLuiApps$1$LegacyPermissionManagerService([Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V

    return-void
.end method

.method public revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "revokeDefaultPermissionsFromDisabledTelephonyDataServices"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "revokeDefaultPermissionsFromLuiApps"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
