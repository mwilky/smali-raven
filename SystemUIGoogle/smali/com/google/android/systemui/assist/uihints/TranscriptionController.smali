.class public final Lcom/google/android/systemui/assist/uihints/TranscriptionController;
.super Ljava/lang/Object;
.source "TranscriptionController.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$CardInfoListener;
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$TranscriptionInfoListener;
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$GreetingInfoListener;
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ChipsInfoListener;
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ClearListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/google/android/systemui/assist/uihints/input/TouchActionRegion;
.implements Lcom/google/android/systemui/assist/uihints/input/TouchInsideRegion;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;,
        Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceListener;,
        Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;
    }
.end annotation


# instance fields
.field public mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

.field public final mDefaultOnTap:Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

.field public final mFlingVelocity:Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;

.field public mHasAccurateBackground:Z

.field public mHideFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public mListener:Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceListener;

.field public mOnGreetingTap:Landroid/app/PendingIntent;

.field public mOnTranscriptionTap:Landroid/app/PendingIntent;

.field public mQueuedCompletion:Ljava/lang/Runnable;

.field public mQueuedState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

.field public mQueuedStateAnimates:Z

.field public mViewMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->NONE:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mHasAccurateBackground:Z

    iput-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedStateAnimates:Z

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mDefaultOnTap:Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mFlingVelocity:Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/HashMap;

    const p3, 0x7f0b06de

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    new-instance v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->TRANSCRIPTION:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p3, 0x7f0b02c1

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/systemui/assist/uihints/GreetingView;

    new-instance v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->GREETING:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-virtual {p2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p2, 0x7f0b0187

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/assist/uihints/ChipsContainer;

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/HashMap;

    sget-object p3, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->CHIPS:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p4, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getTouchActionRegion()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->hasTapAction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->getTouchRegion()Ljava/util/Optional;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getTouchInsideRegion()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->hasTapAction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->getTouchRegion()Ljava/util/Optional;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getTouchRegion()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {p0, v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;->getHitRect(Landroid/graphics/Rect;)V

    new-instance p0, Landroid/graphics/Region;

    invoke-direct {p0, v0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final hasTapAction()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mOnGreetingTap:Landroid/app/PendingIntent;

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mOnTranscriptionTap:Landroid/app/PendingIntent;

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public final maybeSetState()V
    .locals 3

    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->NONE:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedCompletion:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mHasAccurateBackground:Z

    if-nez v1, :cond_2

    if-eq v2, v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mHideFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mListener:Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceListener;

    if-eqz v2, :cond_4

    check-cast v2, Lcom/google/android/systemui/assist/uihints/ScrimController;

    invoke-virtual {v2, v1}, Lcom/google/android/systemui/assist/uihints/ScrimController;->onStateChanged(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedCompletion:Ljava/lang/Runnable;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedStateAnimates:Z

    invoke-interface {v0, v1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;->hide(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mHideFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda4;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final onCardInfo(ZZIZ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;

    invoke-interface {p2, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;->setCardVisible(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onChipsInfo(Ljava/util/ArrayList;)V
    .locals 6

    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->CHIPS:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mFlingVelocity:Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;

    iget-boolean v3, v2, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->mGuarded:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    goto :goto_0

    :cond_1
    iput-boolean v4, v2, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->mGuarded:Z

    iget v2, v2, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->mVelocity:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    sget-object v5, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->NONE:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    if-ne v3, v5, :cond_2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    sget-object v3, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->GREETING:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->TRANSCRIPTION:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda1;

    invoke-direct {v2, v4, p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    :goto_1
    new-instance v2, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->maybeSetState()V

    return-void

    :cond_5
    :goto_3
    const-string p1, "TranscriptionController"

    const-string v0, "Null or empty chip list received; clearing transcription space"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->onClear(Z)V

    return-void
.end method

.method public final onClear(Z)V
    .locals 2

    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->NONE:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->maybeSetState()V

    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;

    invoke-interface {v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;->onFontSizeChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onGreetingInfo(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 5

    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->GREETING:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mOnGreetingTap:Landroid/app/PendingIntent;

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mFlingVelocity:Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;

    iget-boolean v1, p2, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->mGuarded:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p2

    goto :goto_0

    :cond_0
    iput-boolean v2, p2, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->mGuarded:Z

    iget p2, p2, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->mVelocity:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    sget-object v3, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->NONE:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;Ljava/lang/String;Ljava/util/Optional;)V

    invoke-virtual {p0, v0, v4, v1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/android/wm/shell/pip/phone/PipController$PipImpl$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1, v2}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Comparable;I)V

    invoke-virtual {p0, v0, v4, p2}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->maybeSetState()V

    :cond_2
    return-void
.end method

.method public final onTranscriptionInfo(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 2

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mOnTranscriptionTap:Landroid/app/PendingIntent;

    sget-object p2, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->TRANSCRIPTION:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    new-instance v0, Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1}, Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->maybeSetState()V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    iput p3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mRequestedTextColor:I

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->updateColor()V

    return-void
.end method

.method public final setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iput-boolean p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedStateAnimates:Z

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedCompletion:Ljava/lang/Runnable;

    return-void
.end method
