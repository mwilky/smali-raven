.class Lcom/android/server/pm/permission/PermissionManagerService$1;
.super Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCallback;-><init>(Lcom/android/server/pm/permission/PermissionManagerService$1;)V

    return-void
.end method

.method static synthetic lambda$onGidsChanged$0(II)V
    .locals 1

    const-string v0, "permission grant or revoke changed gids"

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onPermissionRevoked$1(II)V
    .locals 1

    const-string v0, "permissions revoked"

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onPermissionRevoked$2(IILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGidsChanged(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$100(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService$1$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInstallPermissionGranted()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$300(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    return-void
.end method

.method public onInstallPermissionRevoked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$300(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    return-void
.end method

.method public onInstallPermissionUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$300(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    return-void
.end method

.method public onInstallPermissionUpdatedNotifyListener(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerService$1;->onInstallPermissionUpdated()V

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    return-void
.end method

.method public onPermissionGranted(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$300(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    return-void
.end method

.method public onPermissionRemoved()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$300(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$300(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$100(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerService$1$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$100(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$1$$ExternalSyntheticLambda2;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onPermissionUpdated([IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$300(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    return-void
.end method

.method public onPermissionUpdatedNotifyListener([IZI)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService$1;->onPermissionUpdated([IZ)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
