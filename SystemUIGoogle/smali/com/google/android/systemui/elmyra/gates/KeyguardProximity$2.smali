.class public final Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$2;
.super Ljava/lang/Object;
.source "KeyguardProximity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$2;->this$0:Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$2;->this$0:Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;

    iget v1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mProximityThreshold:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mIsListening:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mProximityBlocked:Z

    if-eq v0, p1, :cond_1

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mProximityBlocked:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    :cond_1
    return-void
.end method
