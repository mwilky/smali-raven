.class public final Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$statusBarStateListener$1;
.super Ljava/lang/Object;
.source "CHREGestureSensor.kt"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;-><init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$statusBarStateListener$1;->this$0:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDozingChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$statusBarStateListener$1;->this$0:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isDozing:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isDozing:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->updateScreenState()V

    :cond_0
    return-void
.end method
