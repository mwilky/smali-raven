.class public final synthetic Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/window/TransitionFilter;

.field public final synthetic f$1:Landroid/window/RemoteTransition;


# direct methods
.method public synthetic constructor <init>(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda1;->f$0:Landroid/window/TransitionFilter;

    iput-object p2, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda1;->f$1:Landroid/window/RemoteTransition;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda1;->f$0:Landroid/window/TransitionFilter;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda1;->f$1:Landroid/window/RemoteTransition;

    check-cast p1, Lcom/android/wm/shell/transition/Transitions;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->$r8$lambda$vEdvWF-vkIrcXu4E5XECdMx0VRY(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions;)V

    return-void
.end method
