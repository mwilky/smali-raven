.class public Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;
.super Lcom/google/android/systemui/elmyra/gates/TransientGate;
.source "SystemKeyPress.java"


# instance fields
.field private final mBlockingKeys:[I

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mCommandQueueCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$integer;->elmyra_system_key_gate_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/systemui/elmyra/gates/TransientGate;-><init>(Landroid/content/Context;J)V

    new-instance v0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress$1;-><init>(Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;->mCommandQueueCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$array;->elmyra_blocking_system_keys:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;->mBlockingKeys:[I

    const-class p1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;->mBlockingKeys:[I

    return-object p0
.end method


# virtual methods
.method protected onActivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;->mCommandQueueCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method protected onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;->mCommandQueueCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method
