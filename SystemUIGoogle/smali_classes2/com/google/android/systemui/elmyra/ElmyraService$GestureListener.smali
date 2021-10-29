.class Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;
.super Ljava/lang/Object;
.source "ElmyraService.java"

# interfaces
.implements Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/ElmyraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/elmyra/ElmyraService;


# direct methods
.method private constructor <init>(Lcom/google/android/systemui/elmyra/ElmyraService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/systemui/elmyra/ElmyraService;Lcom/google/android/systemui/elmyra/ElmyraService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;-><init>(Lcom/google/android/systemui/elmyra/ElmyraService;)V

    return-void
.end method


# virtual methods
.method public onGestureDetected(Lcom/google/android/systemui/elmyra/sensors/GestureSensor;Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 7

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-static {p1}, Lcom/google/android/systemui/elmyra/ElmyraService;->access$700(Lcom/google/android/systemui/elmyra/ElmyraService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-static {p1}, Lcom/google/android/systemui/elmyra/ElmyraService;->access$800(Lcom/google/android/systemui/elmyra/ElmyraService;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;->isHostSuspended()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x3e7

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-static {v5}, Lcom/google/android/systemui/elmyra/ElmyraService;->access$600(Lcom/google/android/systemui/elmyra/ElmyraService;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    goto :goto_1

    :cond_2
    move-wide v3, v1

    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-static {v3, v1, v2}, Lcom/google/android/systemui/elmyra/ElmyraService;->access$602(Lcom/google/android/systemui/elmyra/ElmyraService;J)J

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-static {v1}, Lcom/google/android/systemui/elmyra/ElmyraService;->access$100(Lcom/google/android/systemui/elmyra/ElmyraService;)Lcom/google/android/systemui/elmyra/actions/Action;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Triggering "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Elmyra/ElmyraService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p2}, Lcom/google/android/systemui/elmyra/actions/Action;->onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-static {v3}, Lcom/google/android/systemui/elmyra/ElmyraService;->access$200(Lcom/google/android/systemui/elmyra/ElmyraService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-static {v3}, Lcom/google/android/systemui/elmyra/ElmyraService;->access$200(Lcom/google/android/systemui/elmyra/ElmyraService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    invoke-interface {v3, p2}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    :cond_4
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-static {v1}, Lcom/google/android/systemui/elmyra/ElmyraService;->access$400(Lcom/google/android/systemui/elmyra/ElmyraService;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object v1

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;->isHostSuspended()Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p1, Lcom/google/android/systemui/elmyra/ElmyraEvent;->ELMYRA_TRIGGERED_AP_SUSPENDED:Lcom/google/android/systemui/elmyra/ElmyraEvent;

    goto :goto_3

    :cond_5
    if-nez p1, :cond_6

    sget-object p1, Lcom/google/android/systemui/elmyra/ElmyraEvent;->ELMYRA_TRIGGERED_SCREEN_OFF:Lcom/google/android/systemui/elmyra/ElmyraEvent;

    goto :goto_3

    :cond_6
    sget-object p1, Lcom/google/android/systemui/elmyra/ElmyraEvent;->ELMYRA_TRIGGERED_SCREEN_ON:Lcom/google/android/systemui/elmyra/ElmyraEvent;

    :goto_3
    invoke-interface {v1, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-static {p0}, Lcom/google/android/systemui/elmyra/ElmyraService;->access$500(Lcom/google/android/systemui/elmyra/ElmyraService;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public onGestureProgress(Lcom/google/android/systemui/elmyra/sensors/GestureSensor;FI)V
    .locals 4

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-static {p1}, Lcom/google/android/systemui/elmyra/ElmyraService;->access$100(Lcom/google/android/systemui/elmyra/ElmyraService;)Lcom/google/android/systemui/elmyra/actions/Action;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/google/android/systemui/elmyra/actions/Action;->onProgress(FI)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/ElmyraService;->access$200(Lcom/google/android/systemui/elmyra/ElmyraService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/ElmyraService;->access$200(Lcom/google/android/systemui/elmyra/ElmyraService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    invoke-interface {v0, p2, p3}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onProgress(FI)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-static {p1}, Lcom/google/android/systemui/elmyra/ElmyraService;->access$300(Lcom/google/android/systemui/elmyra/ElmyraService;)I

    move-result p1

    if-eq p3, p1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/ElmyraService;->access$400(Lcom/google/android/systemui/elmyra/ElmyraService;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/elmyra/ElmyraEvent;->ELMYRA_PRIMED:Lcom/google/android/systemui/elmyra/ElmyraEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/ElmyraService;->access$500(Lcom/google/android/systemui/elmyra/ElmyraService;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    const/16 v1, 0x3e6

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-static {v0, p1, p2}, Lcom/google/android/systemui/elmyra/ElmyraService;->access$602(Lcom/google/android/systemui/elmyra/ElmyraService;J)J

    goto :goto_1

    :cond_1
    if-nez p3, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/ElmyraService;->access$600(Lcom/google/android/systemui/elmyra/ElmyraService;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/ElmyraService;->access$400(Lcom/google/android/systemui/elmyra/ElmyraService;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/elmyra/ElmyraEvent;->ELMYRA_RELEASED:Lcom/google/android/systemui/elmyra/ElmyraEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x3e5

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-static {v1}, Lcom/google/android/systemui/elmyra/ElmyraService;->access$600(Lcom/google/android/systemui/elmyra/ElmyraService;)J

    move-result-wide v1

    sub-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-static {p2}, Lcom/google/android/systemui/elmyra/ElmyraService;->access$500(Lcom/google/android/systemui/elmyra/ElmyraService;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-static {p0, p3}, Lcom/google/android/systemui/elmyra/ElmyraService;->access$302(Lcom/google/android/systemui/elmyra/ElmyraService;I)I

    :cond_3
    return-void
.end method
