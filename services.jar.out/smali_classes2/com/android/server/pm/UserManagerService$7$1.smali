.class Lcom/android/server/pm/UserManagerService$7$1;
.super Ljava/lang/Thread;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService$7;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/UserManagerService$7;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService$7;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$7$1;->this$1:Lcom/android/server/pm/UserManagerService$7;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$7$1;->this$1:Lcom/android/server/pm/UserManagerService$7;

    iget v1, v1, Lcom/android/server/pm/UserManagerService$7;->val$userId:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->onUserRemoved(I)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$7$1;->this$1:Lcom/android/server/pm/UserManagerService$7;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$7;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$7$1;->this$1:Lcom/android/server/pm/UserManagerService$7;

    iget v1, v1, Lcom/android/server/pm/UserManagerService$7;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/server/pm/UserManagerService;->access$1200(Lcom/android/server/pm/UserManagerService;I)V

    return-void
.end method
