.class public final Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source "KeyguardVisibility.java"


# instance fields
.field public final mKeyguardMonitorCallback:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility$1;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility$1;-><init>(Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;->mKeyguardMonitorCallback:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility$1;

    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-void
.end method


# virtual methods
.method public final isBlocked()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result p0

    return p0
.end method

.method public final onActivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;->mKeyguardMonitorCallback:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility$1;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;->mKeyguardMonitorCallback:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility$1;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method
