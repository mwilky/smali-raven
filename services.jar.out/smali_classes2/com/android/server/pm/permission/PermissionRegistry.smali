.class public Lcom/android/server/pm/permission/PermissionRegistry;
.super Ljava/lang/Object;
.source "PermissionRegistry.java"


# instance fields
.field private final mAppOpPermissionPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPermissionGroups:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermissionTrees:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionGroups:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public addAppOpPermissionPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPermission(Lcom/android/server/pm/permission/Permission;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addPermissionGroup(Landroid/content/pm/parsing/component/ParsedPermissionGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addPermissionTree(Lcom/android/server/pm/permission/Permission;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/Permission;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/Permission;->enforcePermissionTree(Ljava/util/Collection;Ljava/lang/String;I)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getAllAppOpPermissionPackages()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/Permission;

    return-object v0
.end method

.method public getPermissionGroup(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    return-object v0
.end method

.method public getPermissionGroups()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/content/pm/parsing/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionTree(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/Permission;

    return-object v0
.end method

.method public getPermissionTrees()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/Permission;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPermissions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/Permission;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public removeAppOpPermissionPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public transferPermissions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    :goto_1
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/Permission;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/pm/permission/Permission;->transfer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
