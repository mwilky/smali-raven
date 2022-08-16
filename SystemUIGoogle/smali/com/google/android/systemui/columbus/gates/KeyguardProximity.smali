.class public final Lcom/google/android/systemui/columbus/gates/KeyguardProximity;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "KeyguardProximity.kt"


# instance fields
.field public isListening:Z

.field public final keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

.field public final keyguardListener:Lcom/google/android/systemui/columbus/gates/KeyguardProximity$keyguardListener$1;

.field public final proximity:Lcom/google/android/systemui/columbus/gates/Proximity;

.field public final proximityListener:Lcom/google/android/systemui/columbus/gates/KeyguardProximity$proximityListener$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/google/android/systemui/columbus/gates/Proximity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->proximity:Lcom/google/android/systemui/columbus/gates/Proximity;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/KeyguardProximity$keyguardListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/KeyguardProximity$keyguardListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/KeyguardProximity;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->keyguardListener:Lcom/google/android/systemui/columbus/gates/KeyguardProximity$keyguardListener$1;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/KeyguardProximity$proximityListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/KeyguardProximity$proximityListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/KeyguardProximity;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->proximityListener:Lcom/google/android/systemui/columbus/gates/KeyguardProximity$proximityListener$1;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->updateProximityListener()V

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->keyguardListener:Lcom/google/android/systemui/columbus/gates/KeyguardProximity$keyguardListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->updateProximityListener()V

    return-void
.end method

.method public final onDeactivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->keyguardListener:Lcom/google/android/systemui/columbus/gates/KeyguardProximity$keyguardListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->unregisterListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->updateProximityListener()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [isListening -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->isListening:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; proximityBlocked -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->proximity:Lcom/google/android/systemui/columbus/gates/Proximity;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateProximityListener()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/Gate;->active:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->keyguardStateController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->keyguardStateController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->isListening:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->proximity:Lcom/google/android/systemui/columbus/gates/Proximity;

    iget-object v3, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->proximityListener:Lcom/google/android/systemui/columbus/gates/KeyguardProximity$proximityListener$1;

    invoke-virtual {v0, v3}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    iput-boolean v1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->isListening:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->isListening:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->proximity:Lcom/google/android/systemui/columbus/gates/Proximity;

    iget-object v3, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->proximityListener:Lcom/google/android/systemui/columbus/gates/KeyguardProximity$proximityListener$1;

    invoke-virtual {v0, v3}, Lcom/google/android/systemui/columbus/gates/Gate;->unregisterListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    iput-boolean v2, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->isListening:Z

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->isListening:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->proximity:Lcom/google/android/systemui/columbus/gates/Proximity;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method
