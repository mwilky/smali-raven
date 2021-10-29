.class Lcom/android/server/am/ActivityManagerService$PermissionController;
.super Landroid/os/IPermissionController$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PermissionController"
.end annotation


# instance fields
.field mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/IPermissionController$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/lang/String;II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPackageUid(Ljava/lang/String;I)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRuntimePermission(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v0, v3

    :cond_0
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public noteOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v8, 0x0

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v0

    return v0
.end method
