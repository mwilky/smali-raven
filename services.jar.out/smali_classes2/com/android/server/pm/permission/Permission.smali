.class public final Lcom/android/server/pm/permission/Permission;
.super Ljava/lang/Object;
.source "Permission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/Permission$ProtectionLevel;,
        Lcom/android/server/pm/permission/Permission$PermissionType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Permission"

.field public static final TYPE_CONFIG:I = 0x1

.field public static final TYPE_DYNAMIC:I = 0x2

.field public static final TYPE_MANIFEST:I


# instance fields
.field private mDefinitionChanged:Z

.field private mGids:[I

.field private mGidsPerUser:Z

.field private mPermissionInfo:Landroid/content/pm/PermissionInfo;

.field private mReconciled:Z

.field private final mType:I

.field private mUid:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PermissionInfo;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    iput-object p1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iput p2, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iput-object p1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iput-object p2, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    const/4 v1, 0x2

    iput v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput p3, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    return-void
.end method

.method private static comparePermissionInfos(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)Z
    .locals 3

    iget v0, p0, Landroid/content/pm/PermissionInfo;->icon:I

    iget v1, p1, Landroid/content/pm/PermissionInfo;->icon:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Landroid/content/pm/PermissionInfo;->logo:I

    iget v1, p1, Landroid/content/pm/PermissionInfo;->logo:I

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    iget v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iget v1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public static createOrUpdate(Lcom/android/server/pm/permission/Permission;Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/Permission;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/Permission;",
            "Landroid/content/pm/PermissionInfo;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/Permission;",
            ">;Z)",
            "Lcom/android/server/pm/permission/Permission;"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const-string v2, "Permission"

    const/4 v3, 0x1

    if-eqz p0, :cond_1

    iget-object v4, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    if-ne v4, v3, :cond_0

    iget-boolean v4, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    if-nez v4, :cond_0

    iget v4, p1, Landroid/content/pm/PermissionInfo;->flags:I

    or-int/2addr v4, v1

    iput v4, p1, Landroid/content/pm/PermissionInfo;->flags:I

    iput-object p1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iput-boolean v3, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v4

    iput v4, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New decl "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " of permission  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is system; overriding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 p0, 0x0

    :cond_1
    :goto_0
    const/4 v4, 0x0

    if-eqz p0, :cond_2

    iget v5, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    if-eq v5, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    if-nez p0, :cond_3

    new-instance v6, Lcom/android/server/pm/permission/Permission;

    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v8, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v4}, Lcom/android/server/pm/permission/Permission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object p0, v6

    :cond_3
    const/4 v4, 0x0

    iget-boolean v6, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const-string v7, " from package "

    const-string v8, "Permission "

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v9, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ignored: original from "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    :goto_2
    iget-object v6, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {p3, v6}, Lcom/android/server/pm/permission/Permission;->findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v9, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v10, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ignored: base tree "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is from package "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    :goto_3
    iget v2, p1, Landroid/content/pm/PermissionInfo;->flags:I

    or-int/2addr v1, v2

    iput v1, p1, Landroid/content/pm/PermissionInfo;->flags:I

    iput-object p1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iput-boolean v3, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez v0, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez v0, :cond_a

    if-eqz v5, :cond_b

    :cond_a
    iput-boolean v3, p0, Lcom/android/server/pm/permission/Permission;->mDefinitionChanged:Z

    :cond_b
    return-object p0
.end method

.method public static enforcePermissionTree(Ljava/util/Collection;Ljava/lang/String;I)Lcom/android/server/pm/permission/Permission;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/Permission;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/android/server/pm/permission/Permission;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {p0, p1}, Lcom/android/server/pm/permission/Permission;->findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->getUid()I

    move-result v1

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not allowed to add to permission tree "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " owned by uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No permission tree found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/Permission;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/pm/permission/Permission;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/Permission;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isOverridingSystemPermission(Lcom/android/server/pm/permission/Permission;Landroid/content/pm/PermissionInfo;Landroid/content/pm/PackageManagerInternal;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    iget v2, p3, Lcom/android/server/pm/permission/Permission;->mUid:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-static {v0, p2}, Lcom/android/server/pm/permission/Permission;->comparePermissionInfos(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    new-instance v2, Landroid/content/pm/PermissionInfo;

    invoke-direct {v2, p2}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    iput-object v2, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v3, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iput p1, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput-boolean v1, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    iget v1, p3, Lcom/android/server/pm/permission/Permission;->mUid:I

    iput v1, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    return v0
.end method

.method public areGidsPerUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    return v0
.end method

.method public calculateFootprint(Lcom/android/server/pm/permission/Permission;)I
    .locals 2

    iget v0, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    iget v1, p1, Lcom/android/server/pm/permission/Permission;->mUid:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public computeGids(I)[I
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget v2, v2, v1

    invoke-static {p1, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    array-length v1, v0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :cond_2
    return-object v0
.end method

.method public generatePermissionInfo(I)Landroid/content/pm/PermissionInfo;
    .locals 1

    const/16 v0, 0x2710

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0
.end method

.method public generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/pm/PermissionInfo;

    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    and-int/lit16 v1, p1, 0x80

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :cond_1
    :goto_0
    const/16 v1, 0x1a

    if-lt p2, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v2, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    goto :goto_1

    :cond_3
    iput v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    :goto_1
    return-object v0
.end method

.method public getBackgroundPermission()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getKnownCerts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionInfo()Landroid/content/pm/PermissionInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    return-object v0
.end method

.method public getProtection()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getProtectionFlags()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const v1, 0xfff0

    and-int/2addr v0, v1

    return v0
.end method

.method public getProtectionLevel()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    return v0
.end method

.method public getRawGids()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    return v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    return v0
.end method

.method public hasGids()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAppOp()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAppPredictor()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCompanion()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConfigurator()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDefinitionChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/permission/Permission;->mDefinitionChanged:Z

    return v0
.end method

.method public isDevelopment()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDocumenter()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDynamic()Z
    .locals 2

    iget v0, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHardOrSoftRestricted()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHardRestricted()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isImmutablyRestricted()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIncidentReportApprover()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInstalled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInstaller()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInstant()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInternal()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isKnownSigner()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNormal()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOem()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPermission(Landroid/content/pm/parsing/component/ParsedPermission;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public isPre23()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreInstalled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrivileged()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecents()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRemoved()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRetailDemo()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRole()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRuntime()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRuntimeOnly()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetup()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSignature()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSoftRestricted()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSystemTextClassifier()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVendorPrivileged()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVerifier()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDefinitionChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/permission/Permission;->mDefinitionChanged:Z

    return-void
.end method

.method public setGids([IZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    iput-boolean p2, p0, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    return-void
.end method

.method public setPermissionInfo(Landroid/content/pm/PermissionInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    return-void
.end method

.method public transfer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iput-object p2, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    iput v1, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    iput-object v2, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    iput-boolean v1, p0, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    return-void
.end method

.method public updateDynamicPermission(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/Permission;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/pm/permission/Permission;->findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    iget v1, v0, Lcom/android/server/pm/permission/Permission;->mUid:I

    iput v1, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    :cond_0
    return-void
.end method
