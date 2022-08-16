.class public interface abstract Lcom/android/systemui/statusbar/events/StatusEvent;
.super Ljava/lang/Object;
.source "StatusEvent.kt"


# virtual methods
.method public abstract getContentDescription()Ljava/lang/String;
.end method

.method public abstract getPriority()I
.end method

.method public abstract getViewCreator()Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;",
            ">;"
        }
    .end annotation
.end method

.method public abstract shouldUpdateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)Z
.end method

.method public abstract updateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V
.end method
