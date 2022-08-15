.class public final Lcom/android/server/BootUserInitializer;
.super Ljava/lang/Object;
.source "BootUserInitializer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BootUserInitializer"


# instance fields
.field public final mAms:Lcom/android/server/am/ActivityManagerService;

.field public final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/BootUserInitializer;->mAms:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/BootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public init(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 10

    sget-object v0, Lcom/android/server/BootUserInitializer;->TAG:Ljava/lang/String;

    const-string v1, "init())"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/BootUserInitializer;->provisionHeadlessSystemUser()V

    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    const-string v1, "get-existing-users"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x0

    aput-object v5, v4, v8

    const-string v5, "%d existing users"

    invoke-static {v0, v5, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v8

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, -0x2710

    if-ge v0, v4, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    sget-object v6, Lcom/android/server/BootUserInitializer;->TAG:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v1

    const-string v9, "User at position %d: %s"

    invoke-static {v6, v9, v7}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v7

    if-eqz v7, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    iget v3, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v8

    const-string v3, "Found initial user: %d"

    invoke-static {v6, v3, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, v4, Landroid/content/pm/UserInfo;->id:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_1
    if-ne v0, v5, :cond_2

    sget-object v0, Lcom/android/server/BootUserInitializer;->TAG:Ljava/lang/String;

    const-string v3, "Creating initial user"

    invoke-static {v0, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "create-initial-user"

    invoke-virtual {p1, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_0
    const-string v3, "Real User"

    const-string v4, "android.os.usertype.full.SECONDARY"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/UserManagerInternal;->createUserEvenWhenDisallowed(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object v2

    const-string v3, "Created initial user: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    invoke-static {v0, v3, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    sget-object v0, Lcom/android/server/BootUserInitializer;->TAG:Ljava/lang/String;

    const-string v1, "failed to created initial user"

    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :goto_2
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    throw p0

    :cond_2
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/server/BootUserInitializer;->unlockSystemUser(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    invoke-virtual {p0, v0}, Lcom/android/server/BootUserInitializer;->switchToInitialUser(I)V

    return-void
.end method

.method public final isDeviceProvisioned()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/BootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "device_provisioned"

    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/android/server/BootUserInitializer;->TAG:Ljava/lang/String;

    const-string v2, "DEVICE_PROVISIONED setting not found."

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public final provisionHeadlessSystemUser()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/BootUserInitializer;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/server/BootUserInitializer;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "provisionHeadlessSystemUser(): already provisioned"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/BootUserInitializer;->TAG:Ljava/lang/String;

    const-string v1, "Marking USER_SETUP_COMPLETE for system user"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/BootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "Marking DEVICE_PROVISIONED for system user"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/BootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "device_provisioned"

    invoke-static {p0, v0, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final switchToInitialUser(I)V
    .locals 5

    sget-object v0, Lcom/android/server/BootUserInitializer;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Switching to initial user %d"

    invoke-static {v0, v3, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/BootUserInitializer;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ActivityManagerService;->startUserInForegroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result p0

    if-nez p0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v4

    const-string p1, "Failed to start user %d in foreground"

    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final unlockSystemUser(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 4

    sget-object v0, Lcom/android/server/BootUserInitializer;->TAG:Ljava/lang/String;

    const-string v1, "Unlocking system user"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "unlock-system-user"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "am.startUser"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/BootUserInitializer;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v1, :cond_0

    const-string v1, "could not restart system user in background; trying unlock instead"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "am.unlockUser"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/BootUserInitializer;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v2, v3, v3, v3}, Lcom/android/server/am/ActivityManagerService;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result p0

    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez p0, :cond_0

    const-string p0, "could not unlock system user either"

    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    throw p0
.end method
