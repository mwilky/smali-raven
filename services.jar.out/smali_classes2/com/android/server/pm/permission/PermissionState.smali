.class public final Lcom/android/server/pm/permission/PermissionState;
.super Ljava/lang/Object;
.source "PermissionState.java"


# instance fields
.field private mFlags:I

.field private mGranted:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPermission:Lcom/android/server/pm/permission/Permission;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/Permission;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/PermissionState;)V
    .locals 1

    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionState;-><init>(Lcom/android/server/pm/permission/Permission;)V

    iget-boolean v0, p1, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    iput-boolean v0, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    iget v0, p1, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    iput v0, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    return-void
.end method


# virtual methods
.method public computeGids(I)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/Permission;->computeGids(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getFlags()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPermission()Lcom/android/server/pm/permission/Permission;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    return-object v0
.end method

.method public grant()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    invoke-static {}, Lcom/android/server/pm/permission/UidPermissionState;->invalidateCache()V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDefault()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

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

.method public isGranted()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public revoke()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    invoke-static {}, Lcom/android/server/pm/permission/UidPermissionState;->invalidateCache()V

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateFlags(II)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    and-int v1, p2, p1

    :try_start_0
    invoke-static {}, Lcom/android/server/pm/permission/UidPermissionState;->invalidateCache()V

    iget v2, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    move v3, v2

    not-int v4, p1

    and-int/2addr v2, v4

    or-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
