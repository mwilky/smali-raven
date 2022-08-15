.class public Lcom/android/server/am/ActivityManagerService$6;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic val$appInfo:Landroid/content/pm/ApplicationInfo;

.field public final synthetic val$isInstantApp:Z

.field public final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field public final synthetic val$pid:I

.field public final synthetic val$resolvedUserId:I

.field public final synthetic val$uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;IZIILandroid/content/pm/IPackageDataObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$6;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$6;->val$resolvedUserId:I

    iput-boolean p4, p0, Lcom/android/server/am/ActivityManagerService$6;->val$isInstantApp:Z

    iput p5, p0, Lcom/android/server/am/ActivityManagerService$6;->val$uid:I

    iput p6, p0, Lcom/android/server/am/ActivityManagerService$6;->val$pid:I

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$6;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$6;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$6;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v1, v4}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mfinishForceStopPackageLocked(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;I)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_0
    :goto_0
    new-instance v9, Landroid/content/Intent;

    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    const-string/jumbo v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v9, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x1000000

    invoke-virtual {v9, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.extra.UID"

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$6;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    :goto_1
    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.intent.extra.user_handle"

    iget v3, v0, Lcom/android/server/am/ActivityManagerService$6;->val$resolvedUserId:I

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget v3, v0, Lcom/android/server/am/ActivityManagerService$6;->val$resolvedUserId:I

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getVisibilityAllowList(Ljava/lang/String;I)[I

    move-result-object v22

    iget-boolean v2, v0, Lcom/android/server/am/ActivityManagerService$6;->val$isInstantApp:Z

    if-eqz v2, :cond_2

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v9, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android"

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    iget v7, v0, Lcom/android/server/am/ActivityManagerService$6;->val$uid:I

    iget v8, v0, Lcom/android/server/am/ActivityManagerService$6;->val$pid:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "android.permission.ACCESS_INSTANT_APPS"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget v2, v0, Lcom/android/server/am/ActivityManagerService$6;->val$resolvedUserId:I

    move/from16 v19, v2

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v3 .. v22}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZLandroid/os/IBinder;[I)I

    goto :goto_2

    :cond_2
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android"

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    iget v7, v0, Lcom/android/server/am/ActivityManagerService$6;->val$uid:I

    iget v8, v0, Lcom/android/server/am/ActivityManagerService$6;->val$pid:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget v2, v0, Lcom/android/server/am/ActivityManagerService$6;->val$resolvedUserId:I

    move/from16 v19, v2

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v3 .. v22}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZLandroid/os/IBinder;[I)I

    :goto_2
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$6;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v0, :cond_3

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method
