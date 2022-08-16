.class public final Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "JNIGestureSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mWasListening:Z

.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor$1;->this$0:Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishedGoingToSleep(I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor$1;->this$0:Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;

    invoke-static {p1}, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->-$$Nest$fgetmController(Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;)Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->onGestureProgress(F)V

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor$1;->this$0:Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;

    invoke-virtual {p1}, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->isListening()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor$1;->mWasListening:Z

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor$1;->this$0:Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->stopListening()V

    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor$1;->this$0:Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->-$$Nest$fgetmController(Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;)Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->onGestureProgress(F)V

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor$1;->mWasListening:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor$1;->this$0:Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->startListening()V

    :cond_0
    return-void
.end method
