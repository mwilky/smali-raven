.class public Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "KeyguardVisibility.kt"


# instance fields
.field private final keyguardMonitorCallback:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility$keyguardMonitorCallback$1;

.field private final keyguardStateController:Ldagger/Lazy;
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardStateController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;Landroid/os/Handler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->keyguardStateController:Ldagger/Lazy;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility$keyguardMonitorCallback$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility$keyguardMonitorCallback$1;-><init>(Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->keyguardMonitorCallback:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility$keyguardMonitorCallback$1;

    return-void
.end method

.method public static final synthetic access$updateBlocking(Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->updateBlocking()V

    return-void
.end method

.method private final updateBlocking()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->isKeyguardShowing()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method


# virtual methods
.method public final isKeyguardOccluded()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->keyguardStateController:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isOccluded()Z

    move-result p0

    return p0
.end method

.method public final isKeyguardSecure()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->keyguardStateController:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result p0

    return p0
.end method

.method public final isKeyguardShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->keyguardStateController:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result p0

    return p0
.end method

.method protected onActivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->keyguardMonitorCallback:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility$keyguardMonitorCallback$1;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility$keyguardMonitorCallback$1;->onKeyguardShowingChanged()V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->keyguardStateController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->keyguardMonitorCallback:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility$keyguardMonitorCallback$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->updateBlocking()V

    return-void
.end method

.method protected onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->keyguardStateController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->keyguardMonitorCallback:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility$keyguardMonitorCallback$1;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method
