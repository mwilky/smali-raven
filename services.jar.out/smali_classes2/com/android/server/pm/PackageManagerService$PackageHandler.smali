.class Lcom/android/server/pm/PackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    const/16 v4, 0xe

    const/16 v5, 0xa

    const/16 v6, -0x16

    const/4 v7, 0x0

    const-wide/32 v8, 0x40000

    const/4 v10, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_d

    :pswitch_1
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$000()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    goto/16 :goto_d

    :pswitch_2
    iget v0, v2, Landroid/os/Message;->arg1:I

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$2300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->runMessage(ILjava/lang/Object;)Z

    goto/16 :goto_d

    :pswitch_3
    iget v0, v2, Landroid/os/Message;->arg1:I

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isIntegrityVerificationComplete()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->getVerificationParams()Lcom/android/server/pm/PackageManagerService$VerificationParams;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService$VerificationParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string v7, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Integrity verification timed out for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService;->access$4600(Lcom/android/server/pm/PackageManagerService;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/server/pm/PackageVerificationState;->setIntegrityVerificationResult(I)V

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService;->access$4600(Lcom/android/server/pm/PackageManagerService;)I

    move-result v7

    if-ne v7, v10, :cond_0

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Integrity check times out, continuing with "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v6}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->setReturnCode(I)V

    :goto_0
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    const-string v6, "integrity_verification"

    invoke-static {v8, v9, v6, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->handleIntegrityVerificationFinished()V

    goto/16 :goto_d

    :pswitch_4
    iget v0, v2, Landroid/os/Message;->arg1:I

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    if-nez v3, :cond_2

    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Integrity verification with id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not found. It may be invalid or overridden by verifier"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_2
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->getVerificationParams()Lcom/android/server/pm/PackageManagerService$VerificationParams;

    move-result-object v5

    iget-object v7, v5, Lcom/android/server/pm/PackageManagerService$VerificationParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageVerificationState;->setIntegrityVerificationResult(I)V

    if-ne v4, v10, :cond_3

    const-string v6, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Integrity check passed for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->setReturnCode(I)V

    :goto_1
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_4
    const-string v6, "integrity_verification"

    invoke-static {v8, v9, v6, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->handleIntegrityVerificationFinished()V

    goto/16 :goto_d

    :pswitch_5
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->access$4100(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    :cond_5
    goto/16 :goto_d

    :pswitch_6
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v10}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    :cond_6
    monitor-exit v3

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_7
    iget v0, v2, Landroid/os/Message;->arg1:I

    iget v3, v2, Landroid/os/Message;->arg2:I

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageManagerService$VerificationParams;

    if-eqz v4, :cond_1a

    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService$VerificationParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Enable rollback timed out for "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->remove(I)V

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Continuing with installation of "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "enable_rollback"

    invoke-static {v8, v9, v6, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->handleRollbackEnabled()V

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.CANCEL_ENABLE_ROLLBACK"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v7, 0x4000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v9, "android.permission.PACKAGE_ROLLBACK_AGENT"

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_d

    :pswitch_8
    iget v0, v2, Landroid/os/Message;->arg1:I

    iget v3, v2, Landroid/os/Message;->arg2:I

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageManagerService$VerificationParams;

    if-nez v4, :cond_7

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid rollback enabled token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " received"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_7
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->remove(I)V

    if-eq v3, v10, :cond_8

    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService$VerificationParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to enable rollback for "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Continuing with installation of "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v5, "enable_rollback"

    invoke-static {v8, v9, v5, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->handleRollbackEnabled()V

    goto/16 :goto_d

    :pswitch_9
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/InstantAppRequest;

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->access$1200(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/pm/InstantAppResolver;->doInstantAppResolutionPhaseTwo(Landroid/content/Context;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;Landroid/content/pm/ActivityInfo;Landroid/os/Handler;)V

    goto/16 :goto_d

    :pswitch_a
    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v4

    const/16 v0, 0x13

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_d

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :pswitch_b
    iget v0, v2, Landroid/os/Message;->arg1:I

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageVerificationState;

    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->getVerificationParams()Lcom/android/server/pm/PackageManagerService$VerificationParams;

    move-result-object v5

    iget-object v7, v5, Lcom/android/server/pm/PackageManagerService$VerificationParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Verification timed out for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->getUser()Landroid/os/UserHandle;

    move-result-object v15

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v11, v15}, Lcom/android/server/pm/PackageManagerService;->access$4400(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)I

    move-result v11

    if-ne v11, v10, :cond_9

    const-string v3, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Continuing with installation of "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v6, 0x2

    invoke-virtual {v4, v3, v6}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v13, 0x1

    const/4 v14, 0x0

    iget v3, v5, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mDataLoaderType:I

    move v11, v0

    move-object v12, v7

    move-object/from16 v17, v15

    move v15, v3

    move-object/from16 v16, v17

    invoke-static/range {v10 .. v16}, Lcom/android/server/pm/PackageManagerService;->access$4500(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_2

    :cond_9
    move-object/from16 v17, v15

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v13, -0x1

    const/4 v14, 0x0

    iget v15, v5, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mDataLoaderType:I

    move v11, v0

    move-object v12, v7

    move-object/from16 v16, v17

    invoke-static/range {v10 .. v16}, Lcom/android/server/pm/PackageManagerService;->access$4500(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;)V

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->setReturnCode(I)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6, v3}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    :goto_2
    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_a
    const-string v3, "verification"

    invoke-static {v8, v9, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->handleVerificationFinished()V

    goto/16 :goto_d

    :pswitch_c
    iget v0, v2, Landroid/os/Message;->arg1:I

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    if-nez v3, :cond_b

    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Verification with id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not found. It may be invalid or overridden by integrity verification"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_b
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageVerificationResponse;

    iget v5, v4, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    iget v7, v4, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual {v3, v5, v7}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->getVerificationParams()Lcom/android/server/pm/PackageManagerService$VerificationParams;

    move-result-object v5

    iget-object v7, v5, Lcom/android/server/pm/PackageManagerService$VerificationParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v13, v4, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    const/4 v14, 0x0

    iget v15, v5, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mDataLoaderType:I

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->getUser()Landroid/os/UserHandle;

    move-result-object v16

    move v11, v0

    move-object v12, v7

    invoke-static/range {v10 .. v16}, Lcom/android/server/pm/PackageManagerService;->access$4500(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_3

    :cond_c
    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->setReturnCode(I)V

    :goto_3
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_d
    const-string v6, "verification"

    invoke-static {v8, v9, v6, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->handleVerificationFinished()V

    goto/16 :goto_d

    :pswitch_d
    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3

    :try_start_3
    invoke-virtual {v1, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$4300(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_4

    :cond_e
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$4300(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_d

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :pswitch_e
    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3

    const/16 v0, 0xd

    :try_start_5
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    invoke-virtual {v1, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$4200(Lcom/android/server/pm/PackageManagerService;)V

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$4300(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_d

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :pswitch_f
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    iget v3, v2, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_f

    move v15, v10

    goto :goto_5

    :cond_f
    move v15, v7

    :goto_5
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    if-eqz v0, :cond_10

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    if-eqz v3, :cond_10

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V

    :cond_10
    if-eqz v0, :cond_11

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->mPostInstallRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_11

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->mPostInstallRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_8

    :cond_11
    if-eqz v0, :cond_14

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v3, :cond_14

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget v5, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v5, v5, 0x1000

    if-nez v5, :cond_12

    move v13, v10

    goto :goto_6

    :cond_12
    move v13, v7

    :goto_6
    iget v5, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    const/high16 v6, 0x10000

    and-int/2addr v5, v6

    if-eqz v5, :cond_13

    move v14, v10

    goto :goto_7

    :cond_13
    move v14, v7

    :goto_7
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v5, v5, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mDataLoaderType:I

    move-object v12, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    invoke-static/range {v11 .. v18}, Lcom/android/server/pm/PackageManagerService;->access$4000(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;ZZZLjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;I)V

    iget-object v5, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    if-eqz v5, :cond_14

    iget-object v5, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceCookie:I

    invoke-static {v8, v9, v5, v6}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_14
    :goto_8
    const-string v3, "postInstall"

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-static {v8, v9, v3, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto/16 :goto_d

    :pswitch_10
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    if-eqz v0, :cond_1a

    const-string v3, "queueInstall"

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v8, v9, v3, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const-string v3, "startCopy"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->startCopy()V

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_d

    :pswitch_11
    const/4 v4, 0x0

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v6

    :try_start_7
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->size()I

    move-result v0

    move v4, v0

    if-gtz v4, :cond_15

    monitor-exit v6

    return-void

    :cond_15
    new-array v0, v4, [Ljava/lang/String;

    new-array v7, v4, [Ljava/util/ArrayList;

    new-array v8, v4, [I

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_9
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdCount()I

    move-result v11

    if-ge v10, v11, :cond_18

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v11, v10}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdAt(I)I

    move-result v11

    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v12, v11}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->packagesForUserId(I)Landroid/util/ArrayMap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_a
    if-ge v9, v4, :cond_17

    if-ge v14, v13, :cond_17

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    aput-object v15, v0, v9

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    aput-object v15, v7, v9

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    aget-object v3, v0, v9

    invoke-virtual {v15, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    if-eqz v3, :cond_16

    iget v15, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v11, v15}, Landroid/os/UserHandle;->getUid(II)I

    move-result v15

    goto :goto_b

    :cond_16
    const/4 v15, -0x1

    :goto_b
    aput v15, v8, v9

    nop

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v14, v14, 0x1

    const/4 v3, -0x1

    goto :goto_a

    :cond_17
    add-int/lit8 v10, v10, 0x1

    const/4 v3, -0x1

    goto :goto_9

    :cond_18
    move v4, v9

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->clear()V

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v4, :cond_19

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    aget-object v10, v0, v3

    const/4 v11, 0x1

    aget-object v12, v7, v3

    aget v13, v8, v3

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/android/server/pm/PackageManagerService;->access$3900(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_19
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_d

    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    :cond_1a
    :goto_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    throw v1
.end method
