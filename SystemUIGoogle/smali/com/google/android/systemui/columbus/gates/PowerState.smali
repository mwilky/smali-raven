.class public final Lcom/google/android/systemui/columbus/gates/PowerState;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "PowerState.kt"


# instance fields
.field public final powerManager:Landroid/os/PowerManager;

.field public final wakefulnessLifecycle:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field public final wakefulnessLifecycleObserver:Lcom/google/android/systemui/columbus/gates/PowerState$wakefulnessLifecycleObserver$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/PowerState;->wakefulnessLifecycle:Ldagger/Lazy;

    const-string/jumbo p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/PowerState;->powerManager:Landroid/os/PowerManager;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/PowerState$wakefulnessLifecycleObserver$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/PowerState$wakefulnessLifecycleObserver$1;-><init>(Lcom/google/android/systemui/columbus/gates/PowerState;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/PowerState;->wakefulnessLifecycleObserver:Lcom/google/android/systemui/columbus/gates/PowerState$wakefulnessLifecycleObserver$1;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/PowerState;->wakefulnessLifecycle:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/PowerState;->wakefulnessLifecycleObserver:Lcom/google/android/systemui/columbus/gates/PowerState$wakefulnessLifecycleObserver$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/PowerState;->updateBlocking()V

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/PowerState;->wakefulnessLifecycle:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/PowerState;->wakefulnessLifecycleObserver:Lcom/google/android/systemui/columbus/gates/PowerState$wakefulnessLifecycleObserver$1;

    iget-object v0, v0, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateBlocking()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/PowerState;->powerManager:Landroid/os/PowerManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method
