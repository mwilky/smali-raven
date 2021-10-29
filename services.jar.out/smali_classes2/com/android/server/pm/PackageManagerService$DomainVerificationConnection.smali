.class Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;
.implements Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;
.implements Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DomainVerificationConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method


# virtual methods
.method public doesUserExist(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    return v0
.end method

.method public filterAppAccess(Ljava/lang/String;II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public getAllUserIds()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getCallingUid()I
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public getCallingUserId()I
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    return v0
.end method

.method public getDeviceIdleInternal()Lcom/android/server/DeviceIdleInternal;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$Injector;

    move-result-object v0

    const-class v1, Lcom/android/server/DeviceIdleInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$Injector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    return-object v0
.end method

.method public getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    return-object v0
.end method

.method public getPowerSaveTempWhitelistAppDuration()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$200(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isCallerPackage(ILjava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, v0}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public schedule(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scheduleWriteSettings()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public withPackageSettingsSnapshot(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->withPackageSettingsSnapshot(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public withPackageSettingsSnapshotReturning(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Output:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;TOutput;>;)TOutput;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->withPackageSettingsSnapshotReturning(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public withPackageSettingsSnapshotReturningThrowing(Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Output:",
            "Ljava/lang/Object;",
            "ExceptionType:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction<",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;TOutput;TExceptionType;>;)TOutput;^TExceptionType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->withPackageSettingsSnapshotReturningThrowing(Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public withPackageSettingsSnapshotThrowing(Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ExceptionType:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedConsumer<",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;TExceptionType;>;)V^TExceptionType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->withPackageSettingsSnapshotThrowing(Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedConsumer;)V

    return-void
.end method

.method public withPackageSettingsSnapshotThrowing2(Lcom/android/internal/util/FunctionalUtils$ThrowingChecked2Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ExceptionOne:",
            "Ljava/lang/Exception;",
            "ExceptionTwo:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingChecked2Consumer<",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;TExceptionOne;TExceptionTwo;>;)V^TExceptionOne;^TExceptionTwo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DomainVerificationConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->withPackageSettingsSnapshotThrowing2(Lcom/android/internal/util/FunctionalUtils$ThrowingChecked2Consumer;)V

    return-void
.end method
