.class public Lcom/google/android/systemui/columbus/gates/PowerState;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "PowerState.kt"


# instance fields
.field private final powerManager:Landroid/os/PowerManager;

.field private final wakefulnessLifecycle:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private final wakefulnessLifecycleObserver:Lcom/google/android/systemui/columbus/gates/PowerState$wakefulnessLifecycleObserver$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wakefulnessLifecycle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;Landroid/os/Handler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/PowerState;->wakefulnessLifecycle:Ldagger/Lazy;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/PowerState;->powerManager:Landroid/os/PowerManager;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/PowerState$wakefulnessLifecycleObserver$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/PowerState$wakefulnessLifecycleObserver$1;-><init>(Lcom/google/android/systemui/columbus/gates/PowerState;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/PowerState;->wakefulnessLifecycleObserver:Lcom/google/android/systemui/columbus/gates/PowerState$wakefulnessLifecycleObserver$1;

    return-void
.end method

.method public static final synthetic access$updateBlocking(Lcom/google/android/systemui/columbus/gates/PowerState;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/PowerState;->updateBlocking()V

    return-void
.end method

.method private final updateBlocking()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/PowerState;->powerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method


# virtual methods
.method protected onActivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/PowerState;->wakefulnessLifecycle:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/PowerState;->wakefulnessLifecycleObserver:Lcom/google/android/systemui/columbus/gates/PowerState$wakefulnessLifecycleObserver$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/PowerState;->updateBlocking()V

    return-void
.end method

.method protected onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/PowerState;->wakefulnessLifecycle:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/PowerState;->wakefulnessLifecycleObserver:Lcom/google/android/systemui/columbus/gates/PowerState$wakefulnessLifecycleObserver$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method
