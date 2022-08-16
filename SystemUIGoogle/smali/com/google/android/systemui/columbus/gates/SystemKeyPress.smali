.class public final Lcom/google/android/systemui/columbus/gates/SystemKeyPress;
.super Lcom/google/android/systemui/columbus/gates/TransientGate;
.source "SystemKeyPress.kt"


# instance fields
.field public final blockingKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final commandQueueCallbacks:Lcom/google/android/systemui/columbus/gates/SystemKeyPress$commandQueueCallbacks$1;

.field public final gateDuration:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/CommandQueue;JLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "J",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/columbus/gates/TransientGate;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/google/android/systemui/columbus/gates/SystemKeyPress;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-wide p4, p0, Lcom/google/android/systemui/columbus/gates/SystemKeyPress;->gateDuration:J

    iput-object p6, p0, Lcom/google/android/systemui/columbus/gates/SystemKeyPress;->blockingKeys:Ljava/util/Set;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/SystemKeyPress$commandQueueCallbacks$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/SystemKeyPress$commandQueueCallbacks$1;-><init>(Lcom/google/android/systemui/columbus/gates/SystemKeyPress;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/SystemKeyPress;->commandQueueCallbacks:Lcom/google/android/systemui/columbus/gates/SystemKeyPress$commandQueueCallbacks$1;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SystemKeyPress;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/SystemKeyPress;->commandQueueCallbacks:Lcom/google/android/systemui/columbus/gates/SystemKeyPress$commandQueueCallbacks$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SystemKeyPress;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/SystemKeyPress;->commandQueueCallbacks:Lcom/google/android/systemui/columbus/gates/SystemKeyPress$commandQueueCallbacks$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method
