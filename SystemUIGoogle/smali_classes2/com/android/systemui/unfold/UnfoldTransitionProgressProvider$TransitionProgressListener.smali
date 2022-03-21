.class public interface abstract Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;
.super Ljava/lang/Object;
.source "UnfoldTransitionProgressProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransitionProgressListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onTransitionFinished()V
.end method

.method public abstract onTransitionProgress(F)V
.end method

.method public abstract onTransitionStarted()V
.end method
