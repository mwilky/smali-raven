.class Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$1;
.super Ljava/lang/Object;
.source "StartingWindowController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;


# direct methods
.method public static synthetic $r8$lambda$va2dsL18gIZUd3F4K-5r0X6s7qM(Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$1;Lcom/android/wm/shell/startingsurface/StartingWindowController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$1;->lambda$binderDied$0(Lcom/android/wm/shell/startingsurface/StartingWindowController;)V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$1;->this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$binderDied$0(Lcom/android/wm/shell/startingsurface/StartingWindowController;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$1;->this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->access$402(Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;Lcom/android/wm/shell/startingsurface/IStartingWindowListener;)Lcom/android/wm/shell/startingsurface/IStartingWindowListener;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->setStartingWindowListener(Lcom/android/internal/util/function/TriConsumer;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$1;->this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->access$300(Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;)Lcom/android/wm/shell/startingsurface/StartingWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$1;Lcom/android/wm/shell/startingsurface/StartingWindowController;)V

    invoke-interface {v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
