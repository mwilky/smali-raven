.class public final Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$wakefulnessLifecycleObserver$1;
.super Ljava/lang/Object;
.source "CHREGestureSensor.kt"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;-><init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$wakefulnessLifecycleObserver$1;->this$0:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$wakefulnessLifecycleObserver$1;->this$0:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->access$handleWakefullnessChanged(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;Z)V

    return-void
.end method

.method public onFinishedWakingUp()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$wakefulnessLifecycleObserver$1;->this$0:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->access$handleWakefullnessChanged(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;Z)V

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$wakefulnessLifecycleObserver$1;->this$0:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->access$handleWakefullnessChanged(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;Z)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$wakefulnessLifecycleObserver$1;->this$0:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->access$handleWakefullnessChanged(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;Z)V

    return-void
.end method
