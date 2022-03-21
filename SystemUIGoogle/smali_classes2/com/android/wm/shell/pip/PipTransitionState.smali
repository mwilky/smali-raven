.class public Lcom/android/wm/shell/pip/PipTransitionState;
.super Ljava/lang/Object;
.source "PipTransitionState.java"


# instance fields
.field private mInSwipePipToHomeTransition:Z

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    return-void
.end method


# virtual methods
.method public getInSwipePipToHomeTransition()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    return p0
.end method

.method public getTransitionState()I
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    return p0
.end method

.method public isInPip()Z
    .locals 2

    iget p0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setInSwipePipToHomeTransition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    return-void
.end method

.method public setTransitionState(I)V
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    return-void
.end method

.method public shouldBlockResizeRequest()Z
    .locals 1

    iget p0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    const/4 v0, 0x3

    if-lt p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
