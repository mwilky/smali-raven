.class public interface abstract Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;
.super Ljava/lang/Object;
.source "GestureSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/sensors/GestureSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onGestureDetected(Lcom/google/android/systemui/elmyra/sensors/GestureSensor;Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
.end method

.method public abstract onGestureProgress(Lcom/google/android/systemui/elmyra/sensors/GestureSensor;FI)V
.end method
