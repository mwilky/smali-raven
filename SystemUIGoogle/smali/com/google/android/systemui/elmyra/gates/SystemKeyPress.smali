.class public final Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;
.super Lcom/google/android/systemui/elmyra/gates/TransientGate;
.source "SystemKeyPress.java"


# instance fields
.field public final mBlockingKeys:[I

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mCommandQueueCallbacks:Lcom/google/android/systemui/elmyra/gates/SystemKeyPress$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/systemui/elmyra/gates/TransientGate;-><init>(Landroid/content/Context;J)V

    new-instance v0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress$1;-><init>(Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;->mCommandQueueCallbacks:Lcom/google/android/systemui/elmyra/gates/SystemKeyPress$1;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030046

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


# virtual methods
.method public final onActivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;->mCommandQueueCallbacks:Lcom/google/android/systemui/elmyra/gates/SystemKeyPress$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;->mCommandQueueCallbacks:Lcom/google/android/systemui/elmyra/gates/SystemKeyPress$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method
