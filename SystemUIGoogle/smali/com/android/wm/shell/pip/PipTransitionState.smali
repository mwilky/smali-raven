.class public final Lcom/android/wm/shell/pip/PipTransitionState;
.super Ljava/lang/Object;
.source "PipTransitionState.java"


# instance fields
.field public mInSwipePipToHomeTransition:Z

.field public mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    return-void
.end method


# virtual methods
.method public final isInPip()Z
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
