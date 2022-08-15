.class public final Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;
.super Lcom/android/server/pm/HandlerParams;
.source "VerificationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/VerificationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultiPackageVerificationParams"
.end annotation


# instance fields
.field public final mChildParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/VerificationParams;",
            ">;"
        }
    .end annotation
.end field

.field public final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field public final mVerificationState:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/pm/VerificationParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/VerificationParams;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/VerificationParams;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/VerificationParams;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/pm/HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/pm/HandlerParams;-><init>(Landroid/os/UserHandle;Lcom/android/server/pm/PackageManagerService;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_1

    iput-object p2, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mChildParams:Ljava/util/List;

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/VerificationParams;

    iput-object p0, v0, Lcom/android/server/pm/VerificationParams;->mParentVerificationParams:Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/util/ArraySet;

    iget-object p3, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mChildParams:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Landroid/util/ArraySet;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mVerificationState:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/server/pm/VerificationParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    iput-object p1, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    return-void

    :cond_1
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "No child sessions found!"

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public handleReturnCode()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mChildParams:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/VerificationParams;

    invoke-virtual {v0}, Lcom/android/server/pm/VerificationParams;->handleReturnCode()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handleStartCopy()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mChildParams:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/VerificationParams;

    invoke-virtual {v0}, Lcom/android/server/pm/VerificationParams;->handleStartCopy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public trySendVerificationCompleteNotification(Lcom/android/server/pm/VerificationParams;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mVerificationState:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mVerificationState:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mChildParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mVerificationState:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/VerificationParams;

    invoke-static {v0}, Lcom/android/server/pm/VerificationParams;->-$$Nest$fgetmRet(Lcom/android/server/pm/VerificationParams;)I

    move-result v3

    if-eq v3, v2, :cond_1

    invoke-static {v0}, Lcom/android/server/pm/VerificationParams;->-$$Nest$fgetmErrorMessage(Lcom/android/server/pm/VerificationParams;)Ljava/lang/String;

    move-result-object p1

    move v2, v3

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p0, v1, v2, p1, v0}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "PackageManager"

    const-string p1, "Observer no longer exists."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
