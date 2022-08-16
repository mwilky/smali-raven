.class Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;
.super Ljava/lang/Object;
.source "ShellCommandHandlerImpl.java"

# interfaces
.implements Lcom/android/wm/shell/ShellCommandHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/ShellCommandHandlerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/ShellCommandHandlerImpl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/ShellCommandHandlerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;->this$0:Lcom/android/wm/shell/ShellCommandHandlerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;->this$0:Lcom/android/wm/shell/ShellCommandHandlerImpl;

    iget-object v0, v0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;Ljava/io/PrintWriter;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to dump the Shell in 2s"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final handleCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Z

    iget-object v1, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;->this$0:Lcom/android/wm/shell/ShellCommandHandlerImpl;

    iget-object v1, v1, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v2, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;[Z[Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-interface {v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    aget-boolean p0, v0, p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to handle Shell command in 2s"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
