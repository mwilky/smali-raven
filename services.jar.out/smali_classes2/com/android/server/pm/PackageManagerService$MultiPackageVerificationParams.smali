.class Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiPackageVerificationParams"
.end annotation


# instance fields
.field private final mChildParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageManagerService$VerificationParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field private final mVerificationState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/pm/PackageManagerService$VerificationParams;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$VerificationParams;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService$VerificationParams;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageManagerService$VerificationParams;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;->mChildParams:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$VerificationParams;

    iput-object p0, v1, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mParentVerificationParams:Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;->mChildParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;->mVerificationState:Ljava/util/Map;

    iget-object v0, p2, Lcom/android/server/pm/PackageManagerService$VerificationParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    return-void

    :cond_1
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "No child sessions found!"

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method handleReturnCode()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;->mChildParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$VerificationParams;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->handleReturnCode()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method handleStartCopy()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;->mChildParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$VerificationParams;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->handleStartCopy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method trySendVerificationCompleteNotification(Lcom/android/server/pm/PackageManagerService$VerificationParams;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;->mVerificationState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;->mVerificationState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;->mChildParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;->mVerificationState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    const/4 v2, 0x0

    const-string v3, "Package Verification Result"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "PackageManager"

    const-string v3, "Observer no longer exists."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
