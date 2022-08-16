.class Lcom/android/wm/shell/ShellInitImpl$InitImpl;
.super Ljava/lang/Object;
.source "ShellInitImpl.java"

# interfaces
.implements Lcom/android/wm/shell/ShellInit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/ShellInitImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InitImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/ShellInitImpl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/ShellInitImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/ShellInitImpl$InitImpl;->this$0:Lcom/android/wm/shell/ShellInitImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl$InitImpl;->this$0:Lcom/android/wm/shell/ShellInitImpl;

    iget-object v0, v0, Lcom/android/wm/shell/ShellInitImpl;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/ShellInitImpl$InitImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/ShellInitImpl$InitImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/ShellInitImpl$InitImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to initialize the Shell in 2s"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
