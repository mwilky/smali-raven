.class public interface abstract Lcom/android/systemui/controls/ControlsMetricsLogger;
.super Ljava/lang/Object;
.source "ControlsMetricsLogger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;,
        Lcom/android/systemui/controls/ControlsMetricsLogger$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract assignInstanceId()V
.end method

.method public abstract drag(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
.end method

.method public abstract log(IIIZ)V
.end method

.method public abstract longPress(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
.end method

.method public abstract refreshBegin(IZ)V
.end method

.method public abstract refreshEnd(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
.end method

.method public abstract touch(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
.end method
