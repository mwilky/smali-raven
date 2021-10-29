.class public final Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;
.super Ljava/lang/Object;
.source "PermissionManagerServiceInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAllowlistedRestrictedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoRevokePermissionsMode:I

.field private mGrantedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->mGrantedPermissions:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->mAutoRevokePermissionsMode:I

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;
    .locals 5

    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->mGrantedPermissions:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    iget v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->mAutoRevokePermissionsMode:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;-><init>(Ljava/util/List;Ljava/util/List;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$1;)V

    return-object v0
.end method

.method public setAllowlistedRestrictedPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->mGrantedPermissions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    return-void
.end method

.method public setAutoRevokePermissionsMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->mAutoRevokePermissionsMode:I

    return-void
.end method

.method public setGrantedPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->mGrantedPermissions:Ljava/util/List;

    return-void
.end method
