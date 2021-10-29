.class public abstract Lcom/google/android/systemui/columbus/sensors/GestureSensor;
.super Ljava/lang/Object;
.source "GestureSensor.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/sensors/Sensor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;,
        Lcom/google/android/systemui/columbus/sensors/GestureSensor$Listener;
    }
.end annotation


# instance fields
.field private listener:Lcom/google/android/systemui/columbus/sensors/GestureSensor$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reportGestureDetected(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensor;->listener:Lcom/google/android/systemui/columbus/sensors/GestureSensor$Listener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/systemui/columbus/sensors/GestureSensor$Listener;->onGestureDetected(Lcom/google/android/systemui/columbus/sensors/GestureSensor;ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    :goto_0
    return-void
.end method

.method public final setGestureListener(Lcom/google/android/systemui/columbus/sensors/GestureSensor$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensor;->listener:Lcom/google/android/systemui/columbus/sensors/GestureSensor$Listener;

    return-void
.end method
