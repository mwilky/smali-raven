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
.field public listener:Lcom/google/android/systemui/columbus/sensors/GestureSensor$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
