.class Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildStatusIntentReceiver"
.end annotation


# instance fields
.field private final mChildSessionsRemaining:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalSender:Landroid/content/IIntentSender$Stub;

.field private final mStatusReceiver:Landroid/content/IntentSender;

.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/util/SparseArray;Landroid/content/IntentSender;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;",
            "Landroid/content/IntentSender;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver$1;-><init>(Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mChildSessionsRemaining:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mStatusReceiver:Landroid/content/IntentSender;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/util/SparseArray;Landroid/content/IntentSender;Lcom/android/server/pm/PackageInstallerSession$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/util/SparseArray;Landroid/content/IntentSender;)V

    return-void
.end method


# virtual methods
.method public getIntentSender()Landroid/content/IntentSender;
    .locals 2

    new-instance v0, Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    invoke-direct {v0, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v0
.end method

.method public synthetic lambda$statusUpdate$0$PackageInstallerSession$ChildStatusIntentReceiver(Landroid/content/Intent;)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mChildSessionsRemaining:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$000(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->access$200(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v0, "android.content.pm.extra.SESSION_ID"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.content.pm.extra.STATUS"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mChildSessionsRemaining:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    const-string v5, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v2, :cond_2

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mChildSessionsRemaining:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->removeAt(I)V

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mChildSessionsRemaining:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v7}, Lcom/android/server/pm/PackageInstallerSession;->access$1500(Lcom/android/server/pm/PackageInstallerSession;)V

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const-string v8, "Session installed"

    invoke-static {v7, v3, v8, v6}, Lcom/android/server/pm/PackageInstallerSession;->access$1600(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    if-ne v3, v2, :cond_3

    :try_start_1
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mStatusReceiver:Landroid/content/IntentSender;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerSession;->access$2100(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v10, p1

    invoke-virtual/range {v7 .. v12}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    goto :goto_1

    :cond_3
    const-string v3, "android.content.pm.extra.SESSION_ID"

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v7, v7, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mChildSessionsRemaining:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerSession;->access$1500(Lcom/android/server/pm/PackageInstallerSession;)V

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const/16 v7, -0x6e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Child session "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v7, v8, v6}, Lcom/android/server/pm/PackageInstallerSession;->access$1600(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public statusUpdate(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$2600(Lcom/android/server/pm/PackageInstallerSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
