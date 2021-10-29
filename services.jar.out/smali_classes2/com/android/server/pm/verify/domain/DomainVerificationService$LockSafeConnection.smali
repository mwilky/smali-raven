.class Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;
.super Ljava/lang/Object;
.source "DomainVerificationService.java"

# interfaces
.implements Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/verify/domain/DomainVerificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockSafeConnection"
.end annotation


# instance fields
.field private final mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

.field final synthetic this$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->this$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;Lcom/android/server/pm/verify/domain/DomainVerificationService$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;)V

    return-void
.end method

.method private enforceLocking()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->this$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-static {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->access$100(Lcom/android/server/pm/verify/domain/DomainVerificationService;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DomainVerificationService"

    const-string v1, "Method should not hold DVS lock when accessing package data"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public doesUserExist(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->doesUserExist(I)Z

    move-result v0

    return v0
.end method

.method public filterAppAccess(Ljava/lang/String;II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public getAllUserIds()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getAllUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getCallingUid()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public getCallingUserId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->getCallingUserId()I

    move-result v0

    return v0
.end method

.method public schedule(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->schedule(ILjava/lang/Object;)V

    return-void
.end method

.method public scheduleWriteSettings()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->scheduleWriteSettings()V

    return-void
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

    invoke-direct {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->enforceLocking()V

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshot(Ljava/util/function/Consumer;)V

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

    invoke-direct {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->enforceLocking()V

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshotReturning(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Ljava/lang/Object;

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

    invoke-direct {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->enforceLocking()V

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshotReturningThrowing(Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;)Ljava/lang/Object;

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

    invoke-direct {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->enforceLocking()V

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshotThrowing(Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedConsumer;)V

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

    invoke-direct {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->enforceLocking()V

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$LockSafeConnection;->mConnection:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;

    invoke-interface {v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;->withPackageSettingsSnapshotThrowing2(Lcom/android/internal/util/FunctionalUtils$ThrowingChecked2Consumer;)V

    return-void
.end method
