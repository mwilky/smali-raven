.class public interface abstract Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;
.super Ljava/lang/Object;
.source "DreamTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dreams/touch/DreamTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TouchSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession$Callback;
    }
.end annotation


# virtual methods
.method public abstract getActiveSessionCount()I
.end method

.method public abstract pop()Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;
.end method

.method public abstract registerCallback(Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda0;)V
.end method

.method public abstract registerGestureListener(Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$1;)Z
.end method

.method public abstract registerInputListener(Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)Z
.end method
