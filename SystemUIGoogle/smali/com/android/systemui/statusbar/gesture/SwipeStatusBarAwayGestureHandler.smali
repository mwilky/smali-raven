.class public Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;
.super Ljava/lang/Object;
.source "SwipeStatusBarAwayGestureHandler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwipeStatusBarAwayGestureHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwipeStatusBarAwayGestureHandler.kt\ncom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,153:1\n1819#2,2:154\n*E\n*S KotlinDebug\n*F\n+ 1 SwipeStatusBarAwayGestureHandler.kt\ncom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler\n*L\n111#1,2:154\n*E\n"
.end annotation


# instance fields
.field private final callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field private inputReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field private final logger:Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureLogger;

.field private monitoringCurrentTouch:Z

.field private startTime:J

.field private startY:F

.field private final statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

.field private swipeDistanceThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureLogger;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBarWindowController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->logger:Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureLogger;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->callbacks:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x105028c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->swipeDistanceThreshold:I

    return-void
.end method

.method public static final synthetic access$onInputEvent(Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;Landroid/view/InputEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method private final onInputEvent(Landroid/view/InputEvent;)V
    .locals 6

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_3

    goto/16 :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->monitoringCurrentTouch:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->startY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->swipeDistanceThreshold:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->startTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1f4

    cmp-long v0, v0, v4

    if-gez v0, :cond_7

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->monitoringCurrentTouch:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->logger:Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureLogger;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureLogger;->logGestureDetected(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->callbacks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->monitoringCurrentTouch:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->logger:Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureLogger;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureLogger;->logGestureDetectionEndedWithoutTriggering(I)V

    :cond_4
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->monitoringCurrentTouch:Z

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->getStatusBarHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->getStatusBarHeight()I

    move-result v4

    mul-int/2addr v4, v1

    int-to-float v1, v4

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->logger:Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureLogger;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureLogger;->logGestureDetectionStarted(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->startY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->startTime:J

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->monitoringCurrentTouch:Z

    goto :goto_1

    :cond_6
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->monitoringCurrentTouch:Z

    :cond_7
    :goto_1
    return-void
.end method

.method private final startGestureListening()V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->stopGestureListening()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->logger:Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureLogger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureLogger;->logInputListeningStarted()V

    new-instance v0, Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-static {}, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandlerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/shared/system/InputMonitorCompat;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler$startGestureListening$1$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler$startGestureListening$1$1;-><init>(Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/shared/system/InputMonitorCompat;->getInputReceiver(Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->inputReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    return-void
.end method

.method private final stopGestureListening()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->logger:Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureLogger;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureLogger;->logInputListeningStopped()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputMonitorCompat;->dispose()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->inputReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->inputReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->dispose()V

    :goto_1
    return-void
.end method


# virtual methods
.method public final addOnGestureDetectedCallback(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->callbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->callbacks:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->startGestureListening()V

    :cond_0
    return-void
.end method

.method public final removeOnGestureDetectedCallback(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->callbacks:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->stopGestureListening()V

    :cond_0
    return-void
.end method
