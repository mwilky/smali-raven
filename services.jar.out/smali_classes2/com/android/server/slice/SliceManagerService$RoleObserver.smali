.class Lcom/android/server/slice/SliceManagerService$RoleObserver;
.super Ljava/lang/Object;
.source "SliceManagerService.java"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/SliceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RoleObserver"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mRm:Landroid/app/role/RoleManager;

.field final synthetic this$0:Lcom/android/server/slice/SliceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/slice/SliceManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService$RoleObserver;->this$0:Lcom/android/server/slice/SliceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/server/slice/SliceManagerService;->access$000(Lcom/android/server/slice/SliceManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService$RoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0}, Lcom/android/server/slice/SliceManagerService$RoleObserver;->register()V

    return-void
.end method


# virtual methods
.method public onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    const-string v0, "android.app.role.HOME"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$RoleObserver;->this$0:Lcom/android/server/slice/SliceManagerService;

    invoke-virtual {v0}, Lcom/android/server/slice/SliceManagerService;->invalidateCachedDefaultHome()V

    :cond_0
    return-void
.end method

.method public register()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$RoleObserver;->this$0:Lcom/android/server/slice/SliceManagerService;

    invoke-static {v0}, Lcom/android/server/slice/SliceManagerService;->access$000(Lcom/android/server/slice/SliceManagerService;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService$RoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p0, v2}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$RoleObserver;->this$0:Lcom/android/server/slice/SliceManagerService;

    invoke-virtual {v0}, Lcom/android/server/slice/SliceManagerService;->invalidateCachedDefaultHome()V

    :cond_0
    return-void
.end method
