.class public final Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;
.super Ljava/lang/Object;
.source "ElmyraService.java"

# interfaces
.implements Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/ElmyraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GestureListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/ElmyraService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/ElmyraService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGestureDetected(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    iget-object v0, v0, Lcom/google/android/systemui/elmyra/ElmyraService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    iget-object v0, v0, Lcom/google/android/systemui/elmyra/ElmyraService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz p1, :cond_0

    iget-boolean v1, p1, Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;->mHostSuspended:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x3e7

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    iget-wide v6, v6, Lcom/google/android/systemui/elmyra/ElmyraService;->mLastPrimedGesture:J

    sub-long/2addr v4, v6

    goto :goto_1

    :cond_2
    move-wide v4, v2

    :goto_1
    invoke-virtual {v1, v4, v5}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    iput-wide v2, v4, Lcom/google/android/systemui/elmyra/ElmyraService;->mLastPrimedGesture:J

    invoke-virtual {v4}, Lcom/google/android/systemui/elmyra/ElmyraService;->updateActiveAction()Lcom/google/android/systemui/elmyra/actions/Action;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Triggering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Elmyra/ElmyraService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, p1}, Lcom/google/android/systemui/elmyra/actions/Action;->onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    iget-object v4, v4, Lcom/google/android/systemui/elmyra/ElmyraService;->mFeedbackEffects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    iget-object v4, v4, Lcom/google/android/systemui/elmyra/ElmyraService;->mFeedbackEffects:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    invoke-interface {v4, p1}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    :cond_4
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    iget-object v2, v2, Lcom/google/android/systemui/elmyra/ElmyraService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz p1, :cond_5

    iget-boolean p1, p1, Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;->mHostSuspended:Z

    if-eqz p1, :cond_5

    sget-object p1, Lcom/google/android/systemui/elmyra/ElmyraEvent;->ELMYRA_TRIGGERED_AP_SUSPENDED:Lcom/google/android/systemui/elmyra/ElmyraEvent;

    goto :goto_3

    :cond_5
    if-nez v0, :cond_6

    sget-object p1, Lcom/google/android/systemui/elmyra/ElmyraEvent;->ELMYRA_TRIGGERED_SCREEN_OFF:Lcom/google/android/systemui/elmyra/ElmyraEvent;

    goto :goto_3

    :cond_6
    sget-object p1, Lcom/google/android/systemui/elmyra/ElmyraEvent;->ELMYRA_TRIGGERED_SCREEN_ON:Lcom/google/android/systemui/elmyra/ElmyraEvent;

    :goto_3
    invoke-interface {v2, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public final onGestureProgress(FI)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/ElmyraService;->updateActiveAction()Lcom/google/android/systemui/elmyra/actions/Action;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p1}, Lcom/google/android/systemui/elmyra/actions/Action;->onProgress(IF)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    iget-object v1, v1, Lcom/google/android/systemui/elmyra/ElmyraService;->mFeedbackEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    iget-object v1, v1, Lcom/google/android/systemui/elmyra/ElmyraService;->mFeedbackEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    invoke-interface {v1, p2, p1}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onProgress(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    iget p1, p1, Lcom/google/android/systemui/elmyra/ElmyraService;->mLastStage:I

    if-eq p2, p1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    iget-object p1, p1, Lcom/google/android/systemui/elmyra/ElmyraService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/google/android/systemui/elmyra/ElmyraEvent;->ELMYRA_PRIMED:Lcom/google/android/systemui/elmyra/ElmyraEvent;

    invoke-interface {p1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    iget-object p1, p1, Lcom/google/android/systemui/elmyra/ElmyraService;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0x3e6

    invoke-virtual {p1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    iput-wide v0, p1, Lcom/google/android/systemui/elmyra/ElmyraService;->mLastPrimedGesture:J

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    iget-wide v2, p1, Lcom/google/android/systemui/elmyra/ElmyraService;->mLastPrimedGesture:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object p1, p1, Lcom/google/android/systemui/elmyra/ElmyraService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/google/android/systemui/elmyra/ElmyraEvent;->ELMYRA_RELEASED:Lcom/google/android/systemui/elmyra/ElmyraEvent;

    invoke-interface {p1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    new-instance p1, Landroid/metrics/LogMaker;

    const/16 v2, 0x3e5

    invoke-direct {p1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    iget-wide v2, v2, Lcom/google/android/systemui/elmyra/ElmyraService;->mLastPrimedGesture:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    iget-object v0, v0, Lcom/google/android/systemui/elmyra/ElmyraService;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    iput p2, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mLastStage:I

    :cond_3
    return-void
.end method
