.class final Lcom/android/server/uri/UriGrantsManagerService$LocalService;
.super Ljava/lang/Object;
.source "UriGrantsManagerService.java"

# interfaces
.implements Lcom/android/server/uri/UriGrantsManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/uri/UriGrantsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/uri/UriGrantsManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/uri/UriGrantsManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriGrantsManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;)V

    return-void
.end method


# virtual methods
.method public checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->access$1400(Lcom/android/server/uri/UriGrantsManagerService;ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    .locals 8

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    const-string v1, "checkGrantUriPermission"

    invoke-static {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->access$800(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->access$900(Lcom/android/server/uri/UriGrantsManagerService;ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v0

    return v0
.end method

.method public checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    const/4 v6, 0x0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move v7, p4

    invoke-static/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->access$1000(Lcom/android/server/uri/UriGrantsManagerService;ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0

    return-object v0
.end method

.method public checkUriPermission(Lcom/android/server/uri/GrantUri;II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->access$700(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/GrantUri;II)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v3}, Lcom/android/server/uri/UriGrantsManagerService;->access$1500(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_6

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-eqz p3, :cond_0

    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    iget-object v5, v5, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/high16 v6, 0x400000

    const/4 v7, 0x0

    invoke-virtual {v5, p3, v6, v7}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v5

    move v4, v5

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v6}, Lcom/android/server/uri/UriGrantsManagerService;->access$1500(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v6}, Lcom/android/server/uri/UriGrantsManagerService;->access$1500(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    const/4 v7, -0x1

    if-lt v4, v7, :cond_1

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    if-eq v7, v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v7, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v7}, Lcom/android/server/uri/UriGrantsManagerService;->access$1500(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    if-nez v3, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_2
    const/4 v1, 0x1

    const-string v8, "  Granted Uri Permissions:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v2, 0x1

    :cond_3
    const-string v8, "  * UID "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, " holds:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/uri/UriPermission;

    const-string v10, "    "

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p2, :cond_4

    const-string v10, "      "

    invoke-virtual {v9, p1, v10}, Lcom/android/server/uri/UriPermission;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_4
    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    if-nez v2, :cond_7

    const-string v3, "  (nothing)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/uri/UriGrantsManagerService;->access$1100(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    return-void
.end method

.method public newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    const-string v1, "newUriPermissionOwner"

    invoke-static {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->access$800(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/uri/UriPermissionOwner;

    invoke-direct {v0, p0, p1}, Lcom/android/server/uri/UriPermissionOwner;-><init>(Lcom/android/server/uri/UriGrantsManagerInternal;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/server/uri/UriPermissionOwner;->getExternalToken()Landroid/os/Binder;

    move-result-object v1

    return-object v1
.end method

.method public onSystemReady()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v1}, Lcom/android/server/uri/UriGrantsManagerService;->access$1200(Lcom/android/server/uri/UriGrantsManagerService;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v1, p1}, Lcom/android/server/uri/UriGrantsManagerService;->access$500(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriPermission;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeUriPermissionsForPackage(Ljava/lang/String;IZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->access$1300(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;IZZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->access$600(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V

    return-void
.end method

.method public revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;IILjava/lang/String;I)V

    return-void
.end method

.method public revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;IILjava/lang/String;I)V
    .locals 4

    invoke-static {p1}, Lcom/android/server/uri/UriPermissionOwner;->fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/uri/GrantUri;

    invoke-direct {v1, p4, p2, p3}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    :goto_0
    invoke-virtual {v0, v1, p3, p5, p6}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermission(Lcom/android/server/uri/GrantUri;ILjava/lang/String;I)V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown owner: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
