.class Lcom/android/server/pm/PackageManagerService$ComputerTracker;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageManagerService$Computer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComputerTracker"
.end annotation


# instance fields
.field private final mReusedLive:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mReusedSnapshot:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mService:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->mReusedSnapshot:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->mReusedLive:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->mService:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method

.method private live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    .locals 2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3300()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    iget v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mRefCount:I

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->acquire()V

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->mReusedLive:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$3400(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$Computer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->acquire(Lcom/android/server/pm/PackageManagerService$Computer;)V

    :goto_0
    return-object v0
.end method

.method private snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;
    .locals 2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3300()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    iget v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mRefCount:I

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->acquire()V

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->mReusedSnapshot:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$3500(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$Computer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->acquire(Lcom/android/server/pm/PackageManagerService$Computer;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "ZIZI",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v1

    :try_start_0
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/android/server/pm/PackageManagerService$Computer;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v0
.end method

.method public final canViewInstantApps(II)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$Computer;->canViewInstantApps(II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final checkUidPermission(Ljava/lang/String;I)I
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService$Computer;->enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final enforceCrossUserPermission(IIZZLjava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService$Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$Computer;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final filterAppAccess(Ljava/lang/String;II)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final filterSharedLibPackageLPr(Lcom/android/server/pm/PackageSetting;III)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$Computer;->filterSharedLibPackageLPr(Lcom/android/server/pm/PackageSetting;III)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final generateApplicationInfoFromSettingsLPw(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$Computer;->generateApplicationInfoFromSettingsLPw(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final generatePackageInfo(Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->generatePackageInfo(Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final getActivityInfoInternal(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$Computer;->getActivityInfoInternal(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final getApplicationInfoInternal(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$Computer;->getApplicationInfoInternal(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;III)Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
    .locals 7

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService$Computer;->getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;III)Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final getDefaultHomeActivity(I)Landroid/content/ComponentName;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1}, Lcom/android/server/pm/PackageManagerService$Computer;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$Computer;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final getHomeIntent()Landroid/content/Intent;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerService$Computer;->getHomeIntent()Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$Computer;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final getInstantAppPackageName(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1}, Lcom/android/server/pm/PackageManagerService$Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1}, Lcom/android/server/pm/PackageManagerService$Computer;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1}, Lcom/android/server/pm/PackageManagerService$Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final getPackageInfoInternal(Ljava/lang/String;JIII)Landroid/content/pm/PackageInfo;
    .locals 8

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$Computer;->getPackageInfoInternal(Ljava/lang/String;JIII)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1}, Lcom/android/server/pm/PackageManagerService$Computer;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final getPackageSettingInternal(Ljava/lang/String;I)Lcom/android/server/pm/PackageSetting;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$Computer;->getPackageSettingInternal(Ljava/lang/String;I)Lcom/android/server/pm/PackageSetting;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final getPackageUidInternal(Ljava/lang/String;III)I
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$Computer;->getPackageUidInternal(Ljava/lang/String;III)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final getPackagesForUid(I)[Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1}, Lcom/android/server/pm/PackageManagerService$Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1}, Lcom/android/server/pm/PackageManagerService$Computer;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final getSharedLibraryInfoLPr(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->getSharedLibraryInfoLPr(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1}, Lcom/android/server/pm/PackageManagerService$Computer;->getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final getSigningDetails(Ljava/lang/String;)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1}, Lcom/android/server/pm/PackageManagerService$Computer;->getSigningDetails(Ljava/lang/String;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final isCallerSameApp(Ljava/lang/String;I)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$Computer;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final isComponentVisibleToInstantApp(Landroid/content/ComponentName;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1}, Lcom/android/server/pm/PackageManagerService$Computer;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$Computer;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final isImplicitImageCaptureIntentAndNotSetByDpcLocked(Landroid/content/Intent;ILjava/lang/String;I)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$Computer;->isImplicitImageCaptureIntentAndNotSetByDpcLocked(Landroid/content/Intent;ILjava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final isInstantApp(Ljava/lang/String;I)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$Computer;->isInstantApp(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final isInstantAppInternal(Ljava/lang/String;II)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final isSameProfileGroup(II)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$Computer;->isSameProfileGroup(II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;IIIIZZ)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "IIIIZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v1

    :try_start_0
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/android/server/pm/PackageManagerService$Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;IIIIZZ)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v0
.end method

.method public final queryIntentActivitiesInternalBody(Landroid/content/Intent;Ljava/lang/String;IIIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;
    .locals 12

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v1

    :try_start_0
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lcom/android/server/pm/PackageManagerService$Computer;->queryIntentActivitiesInternalBody(Landroid/content/Intent;Ljava/lang/String;IIIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v0
.end method

.method public final queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;IIIZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "IIIZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->snapshot()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;IIIZ)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final resolveExternalPackageNameLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1}, Lcom/android/server/pm/PackageManagerService$Computer;->resolveExternalPackageNameLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final resolveInternalPackageNameLPr(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->resolveInternalPackageNameLPr(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;ILandroid/content/ComponentName;II)Z
    .locals 7

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService$Computer;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;ILandroid/content/ComponentName;II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final shouldFilterApplicationLocked(Lcom/android/server/pm/SharedUserSetting;II)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$Computer;->shouldFilterApplicationLocked(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final updateFlagsForApplication(II)I
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$Computer;->updateFlagsForApplication(II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final updateFlagsForComponent(II)I
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$Computer;->updateFlagsForComponent(II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final updateFlagsForPackage(II)I
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService$Computer;->updateFlagsForPackage(II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final updateFlagsForResolve(IIIZZ)I
    .locals 7

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService$Computer;->updateFlagsForResolve(IIIZZ)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method

.method public final updateFlagsForResolve(IIIZZZ)I
    .locals 8

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ComputerTracker;->live()Lcom/android/server/pm/PackageManagerService$ThreadComputer;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$Computer;->updateFlagsForResolve(IIIZZZ)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->release()V

    throw v1
.end method
