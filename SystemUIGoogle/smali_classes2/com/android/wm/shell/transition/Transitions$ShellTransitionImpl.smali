.class Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;
.super Ljava/lang/Object;
.source "Transitions.java"

# interfaces
.implements Lcom/android/wm/shell/transition/ShellTransitions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/transition/Transitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShellTransitionImpl"
.end annotation


# instance fields
.field private mIShellTransitions:Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;

.field final synthetic this$0:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public static synthetic $r8$lambda$1h9KcxcWuDlZmm1naJ4gd2T5rrc(Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;->lambda$registerRemote$0(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/wm/shell/transition/Transitions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;->this$0:Lcom/android/wm/shell/transition/Transitions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;-><init>(Lcom/android/wm/shell/transition/Transitions;)V

    return-void
.end method

.method private synthetic lambda$registerRemote$0(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;->this$0:Lcom/android/wm/shell/transition/Transitions;

    invoke-static {p0}, Lcom/android/wm/shell/transition/Transitions;->access$400(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->addFiltered(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V

    return-void
.end method


# virtual methods
.method public createExternalInterface()Lcom/android/wm/shell/transition/IShellTransitions;
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;->mIShellTransitions:Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->invalidate()V

    :cond_0
    new-instance v0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;->this$0:Lcom/android/wm/shell/transition/Transitions;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;-><init>(Lcom/android/wm/shell/transition/Transitions;)V

    iput-object v0, p0, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;->mIShellTransitions:Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;

    return-object v0
.end method

.method public registerRemote(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;->this$0:Lcom/android/wm/shell/transition/Transitions;

    invoke-static {v0}, Lcom/android/wm/shell/transition/Transitions;->access$300(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
