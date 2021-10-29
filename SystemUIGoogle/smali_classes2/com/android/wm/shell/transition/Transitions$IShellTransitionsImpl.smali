.class Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;
.super Lcom/android/wm/shell/transition/IShellTransitions$Stub;
.source "Transitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/transition/Transitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IShellTransitionsImpl"
.end annotation


# instance fields
.field private mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public static synthetic $r8$lambda$3EVM_WT6Pt7jr3a8zr3vx48gruc(Landroid/window/TransitionFilter;Landroid/window/IRemoteTransition;Lcom/android/wm/shell/transition/Transitions;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->lambda$registerRemote$0(Landroid/window/TransitionFilter;Landroid/window/IRemoteTransition;Lcom/android/wm/shell/transition/Transitions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ER4HsSDcfhpoFuHO1aCFHfmK87Q(Landroid/window/IRemoteTransition;Lcom/android/wm/shell/transition/Transitions;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->lambda$unregisterRemote$1(Landroid/window/IRemoteTransition;Lcom/android/wm/shell/transition/Transitions;)V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/transition/Transitions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/transition/IShellTransitions$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    return-void
.end method

.method private static synthetic lambda$registerRemote$0(Landroid/window/TransitionFilter;Landroid/window/IRemoteTransition;Lcom/android/wm/shell/transition/Transitions;)V
    .locals 0

    invoke-static {p2}, Lcom/android/wm/shell/transition/Transitions;->access$400(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->addFiltered(Landroid/window/TransitionFilter;Landroid/window/IRemoteTransition;)V

    return-void
.end method

.method private static synthetic lambda$unregisterRemote$1(Landroid/window/IRemoteTransition;Lcom/android/wm/shell/transition/Transitions;)V
    .locals 0

    invoke-static {p1}, Lcom/android/wm/shell/transition/Transitions;->access$400(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->removeFiltered(Landroid/window/IRemoteTransition;)V

    return-void
.end method


# virtual methods
.method invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    return-void
.end method

.method public registerRemote(Landroid/window/TransitionFilter;Landroid/window/IRemoteTransition;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    new-instance v0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda1;-><init>(Landroid/window/TransitionFilter;Landroid/window/IRemoteTransition;)V

    const-string p1, "registerRemote"

    invoke-static {p0, p1, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public unregisterRemote(Landroid/window/IRemoteTransition;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    new-instance v0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda0;-><init>(Landroid/window/IRemoteTransition;)V

    const-string p1, "unregisterRemote"

    invoke-static {p0, p1, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method
