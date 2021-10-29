.class final Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
.super Ljava/lang/Object;
.source "OverlayManagerService.java"

# interfaces
.implements Lcom/android/server/om/PackageManagerHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageManagerHelperImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;
    }
.end annotation


# static fields
.field private static final TAB1:Ljava/lang/String; = "    "


# instance fields
.field private final mCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mInitializedUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mInitializedUsers:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-void
.end method

.method private addPackageUser(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 3

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;-><init>(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/om/OverlayManagerService$1;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->access$1202(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    :goto_0
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->access$1100(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->access$1200(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    return-object v1
.end method

.method private addPackageUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 4

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android package for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' could not be found; continuing as if package was never added"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "OverlayManager"

    invoke-static {v3, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    return-object v1
.end method

.method private removePackageUser(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;I)V
    .locals 2

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->access$1100(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->access$1100(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->access$1200(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private removePackageUser(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->removePackageUser(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;I)V

    return-void
.end method


# virtual methods
.method public doesTargetDefineOverlayable(Ljava/lang/String;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v2

    move-object v1, v2

    invoke-virtual {v1}, Landroid/content/res/ApkAssets;->definesOverlayable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/ApkAssets;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_0
    :goto_0
    return v2

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/ApkAssets;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v3

    :cond_1
    :goto_1
    throw v2

    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to get target package"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V
    .locals 7

    const-string v0, "AndroidPackage cache"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->isVerbose()Z

    move-result v0

    const-string v1, "    "

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " package(s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "    <empty>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->access$1200(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " users="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->access$1100(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Ljava/util/Set;

    move-result-object v5

    const-string v6, ", "

    invoke-static {v6, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public enforcePermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public forgetAllPackageInfos(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;

    invoke-direct {p0, v1, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->removePackageUser(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getConfigSignaturePackage()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    aget-object v1, v0, v2

    :goto_0
    return-object v1
.end method

.method public getNamedActors()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getNamedActors()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayableForTarget(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/om/OverlayableInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v2

    move-object v1, v2

    invoke-virtual {v1, p2}, Landroid/content/res/ApkAssets;->getOverlayableInfo(Ljava/lang/String;)Landroid/content/om/OverlayableInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/ApkAssets;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_0
    :goto_0
    return-object v2

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/ApkAssets;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v3

    :cond_1
    :goto_1
    throw v2

    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to get target package"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 5

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->access$1100(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->access$1200(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    nop

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to check availability of package \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OverlayManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public initializeForUser(I)Landroid/util/ArrayMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mInitializedUsers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mInitializedUsers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    new-instance v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;I)V

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->access$1100(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Ljava/util/Set;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;->access$1200(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$AndroidPackageUsers;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public isInstantApp(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$initializeForUser$0$OverlayManagerService$PackageManagerHelperImpl(ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    return-object v0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->removePackageUser(Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageUpdated(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    return-object v0
.end method

.method public signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method
