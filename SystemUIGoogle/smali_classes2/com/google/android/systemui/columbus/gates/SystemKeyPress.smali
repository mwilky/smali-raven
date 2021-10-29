.class public final Lcom/google/android/systemui/columbus/gates/SystemKeyPress;
.super Lcom/google/android/systemui/columbus/gates/TransientGate;
.source "SystemKeyPress.kt"


# instance fields
.field private final blockingKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final commandQueueCallbacks:Lcom/google/android/systemui/columbus/gates/SystemKeyPress$commandQueueCallbacks$1;

.field private final gateDuration:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/CommandQueue;JLjava/util/Set;)V
    .locals 1
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

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandQueue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockingKeys"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/columbus/gates/TransientGate;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/google/android/systemui/columbus/gates/SystemKeyPress;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-wide p4, p0, Lcom/google/android/systemui/columbus/gates/SystemKeyPress;->gateDuration:J

    iput-object p6, p0, Lcom/google/android/systemui/columbus/gates/SystemKeyPress;->blockingKeys:Ljava/util/Set;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/SystemKeyPress$commandQueueCallbacks$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/SystemKeyPress$commandQueueCallbacks$1;-><init>(Lcom/google/android/systemui/columbus/gates/SystemKeyPress;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/SystemKeyPress;->commandQueueCallbacks:Lcom/google/android/systemui/columbus/gates/SystemKeyPress$commandQueueCallbacks$1;

    return-void
.end method

.method public static final synthetic access$getBlockingKeys$p(Lcom/google/android/systemui/columbus/gates/SystemKeyPress;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/SystemKeyPress;->blockingKeys:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getGateDuration$p(Lcom/google/android/systemui/columbus/gates/SystemKeyPress;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/systemui/columbus/gates/SystemKeyPress;->gateDuration:J

    return-wide v0
.end method


# virtual methods
.method protected onActivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SystemKeyPress;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/SystemKeyPress;->commandQueueCallbacks:Lcom/google/android/systemui/columbus/gates/SystemKeyPress$commandQueueCallbacks$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method protected onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SystemKeyPress;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/SystemKeyPress;->commandQueueCallbacks:Lcom/google/android/systemui/columbus/gates/SystemKeyPress$commandQueueCallbacks$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method
