.class public interface abstract Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;
.super Ljava/lang/Object;
.source "StageTaskListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/StageTaskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StageListenerCallbacks"
.end annotation


# virtual methods
.method public abstract onChildTaskStatusChanged(IZZ)V
.end method

.method public abstract onNoLongerSupportMultiWindow()V
.end method

.method public abstract onRootTaskAppeared()V
.end method

.method public abstract onRootTaskVanished()V
.end method

.method public abstract onStatusChanged(ZZ)V
.end method
