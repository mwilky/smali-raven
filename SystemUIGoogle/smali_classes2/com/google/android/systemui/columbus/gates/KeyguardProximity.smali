.class public final Lcom/google/android/systemui/columbus/gates/KeyguardProximity;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "KeyguardProximity.kt"


# instance fields
.field private isListening:Z

.field private final keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

.field private final keyguardListener:Lcom/google/android/systemui/columbus/gates/KeyguardProximity$keyguardListener$1;

.field private final proximity:Lcom/google/android/systemui/columbus/gates/Proximity;

.field private final proximityListener:Lcom/google/android/systemui/columbus/gates/KeyguardProximity$proximityListener$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/google/android/systemui/columbus/gates/Proximity;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardGate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proximity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;Landroid/os/Handler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->proximity:Lcom/google/android/systemui/columbus/gates/Proximity;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/KeyguardProximity$keyguardListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/KeyguardProximity$keyguardListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/KeyguardProximity;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->keyguardListener:Lcom/google/android/systemui/columbus/gates/KeyguardProximity$keyguardListener$1;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/KeyguardProximity$proximityListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/KeyguardProximity$proximityListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/KeyguardProximity;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->proximityListener:Lcom/google/android/systemui/columbus/gates/KeyguardProximity$proximityListener$1;

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->updateProximityListener()V

    return-void
.end method

.method public static final synthetic access$updateBlocking(Lcom/google/android/systemui/columbus/gates/KeyguardProximity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->updateBlocking()V

    return-void
.end method

.method public static final synthetic access$updateProximityListener(Lcom/google/android/systemui/columbus/gates/KeyguardProximity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->updateProximityListener()V

    return-void
.end method

.method private final updateBlocking()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->isListening:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->proximity:Lcom/google/android/systemui/columbus/gates/Proximity;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method

.method private final updateProximityListener()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->getActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->isKeyguardOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->isListening:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->proximity:Lcom/google/android/systemui/columbus/gates/Proximity;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->proximityListener:Lcom/google/android/systemui/columbus/gates/KeyguardProximity$proximityListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->isListening:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->isListening:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->proximity:Lcom/google/android/systemui/columbus/gates/Proximity;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->proximityListener:Lcom/google/android/systemui/columbus/gates/KeyguardProximity$proximityListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->unregisterListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->isListening:Z

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->updateBlocking()V

    return-void
.end method


# virtual methods
.method protected onActivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->keyguardListener:Lcom/google/android/systemui/columbus/gates/KeyguardProximity$keyguardListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->updateProximityListener()V

    return-void
.end method

.method protected onDeactivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->keyguardListener:Lcom/google/android/systemui/columbus/gates/KeyguardProximity$keyguardListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->unregisterListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;->updateProximityListener()V

    return-void
.end method

.method public toString()Ljava/lang/String;
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
