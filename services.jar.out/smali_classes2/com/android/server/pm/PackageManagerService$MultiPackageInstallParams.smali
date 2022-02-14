.class Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiPackageInstallParams"
.end annotation


# instance fields
.field private final mChildParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageManagerService$InstallParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/pm/PackageManagerService$InstallArgs;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService$InstallParams;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageManagerService$InstallParams;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mChildParams:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$InstallParams;

    iput-object p0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mParentInstallParams:Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mChildParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mChildParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$InstallParams;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleReturnCode()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method handleStartCopy()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mChildParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$InstallParams;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleStartCopy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method tryProcessInstallRequest(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mChildParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v5, Lcom/android/server/pm/PackageManagerService$InstallRequest;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v7, v0}, Lcom/android/server/pm/PackageManagerService;->access$5500(Lcom/android/server/pm/PackageManagerService;I)Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService$InstallRequest;-><init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;Lcom/android/server/pm/PackageManagerService$1;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    if-ne v0, v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-static {v2, v3, v1}, Lcom/android/server/pm/PackageManagerService;->access$5700(Lcom/android/server/pm/PackageManagerService;ZLjava/util/List;)V

    return-void
.end method
