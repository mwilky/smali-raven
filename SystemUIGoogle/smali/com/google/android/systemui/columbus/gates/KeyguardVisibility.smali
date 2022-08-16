.class public final Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "KeyguardVisibility.kt"


# instance fields
.field public final keyguardMonitorCallback:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility$keyguardMonitorCallback$1;

.field public final keyguardStateController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->keyguardStateController:Ldagger/Lazy;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility$keyguardMonitorCallback$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility$keyguardMonitorCallback$1;-><init>(Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->keyguardMonitorCallback:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility$keyguardMonitorCallback$1;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->keyguardMonitorCallback:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility$keyguardMonitorCallback$1;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility$keyguardMonitorCallback$1;->onKeyguardShowingChanged()V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->keyguardStateController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->keyguardMonitorCallback:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility$keyguardMonitorCallback$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->keyguardStateController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->keyguardStateController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->keyguardMonitorCallback:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility$keyguardMonitorCallback$1;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method
