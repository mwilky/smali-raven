.class public abstract Lcom/google/android/systemui/elmyra/gates/TransientGate;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source "TransientGate.java"


# instance fields
.field public final mBlockDuration:J

.field public mIsBlocking:Z

.field public final mResetGate:Lcom/google/android/systemui/elmyra/gates/TransientGate$1;

.field public final mResetGateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/systemui/elmyra/gates/TransientGate$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/gates/TransientGate$1;-><init>(Lcom/google/android/systemui/elmyra/gates/TransientGate;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mResetGate:Lcom/google/android/systemui/elmyra/gates/TransientGate$1;

    iput-wide p2, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mBlockDuration:J

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mResetGateHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final block()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mIsBlocking:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mResetGateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mResetGate:Lcom/google/android/systemui/elmyra/gates/TransientGate$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mResetGateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mResetGate:Lcom/google/android/systemui/elmyra/gates/TransientGate$1;

    iget-wide v2, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mBlockDuration:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final isBlocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mIsBlocking:Z

    return p0
.end method
