.class public Lcom/android/server/location/injector/SystemUserInfoHelper;
.super Lcom/android/server/location/injector/UserInfoHelper;
.source "SystemUserInfoHelper.java"


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/injector/UserInfoHelper;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getRunningUserIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "running users: u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getCurrentProfileIds()[I

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current users: u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget v6, v2, v5

    nop

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    const-string/jumbo v8, "no_share_location"

    invoke-virtual {v3, v8, v7}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "u"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " restricted"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected final getActivityManager()Landroid/app/IActivityManager;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mActivityManager:Landroid/app/IActivityManager;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mActivityManager:Landroid/app/IActivityManager;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCurrentUserId()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    const/16 v1, -0x2710

    return v1
.end method

.method protected getProfileIds(I)[I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getRunningUserIds()[I
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [I

    return-object v1
.end method

.method protected final getUserManager()Landroid/os/UserManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mUserManager:Landroid/os/UserManager;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mUserManager:Landroid/os/UserManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isCurrentUserId(I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->isCurrentProfile(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
