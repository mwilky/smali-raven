.class Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;
.super Ljava/lang/Object;
.source "MagnificationGesturesObserver.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/GesturesObserver$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver$Callback;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "MagnificationGesturesObserver"


# instance fields
.field private final mCallback:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver$Callback;

.field private mDelayedEventQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/accessibility/magnification/MotionEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mGesturesObserver:Lcom/android/server/accessibility/magnification/GesturesObserver;

.field private mLastDownEventTime:J

.field private mLastEvent:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MagnificationGesturesObserver"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->DBG:Z

    return-void
.end method

.method varargs constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver$Callback;[Lcom/android/server/accessibility/gestures/GestureMatcher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mLastDownEventTime:J

    new-instance v0, Lcom/android/server/accessibility/magnification/GesturesObserver;

    invoke-direct {v0, p0, p2}, Lcom/android/server/accessibility/magnification/GesturesObserver;-><init>(Lcom/android/server/accessibility/magnification/GesturesObserver$Listener;[Lcom/android/server/accessibility/gestures/GestureMatcher;)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mGesturesObserver:Lcom/android/server/accessibility/magnification/GesturesObserver;

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver$Callback;

    return-void
.end method

.method private cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mLastEvent:Landroid/view/MotionEvent;

    nop

    invoke-static {p1, p2, p3}, Lcom/android/server/accessibility/magnification/MotionEventInfo;->obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/magnification/MotionEventInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private notifyDetectionCancel()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver$Callback;

    iget-wide v2, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mLastDownEventTime:J

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mLastEvent:Landroid/view/MotionEvent;

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver$Callback;->onGestureCancelled(JLjava/util/List;Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->recycleLastEvent()V

    return-void
.end method

.method private recycleLastEvent()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mLastEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mLastEvent:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clear:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MagnificationGesturesObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->recycleLastEvent()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mLastDownEventTime:J

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mGesturesObserver:Lcom/android/server/accessibility/magnification/GesturesObserver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/GesturesObserver;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MotionEventInfo;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MotionEventInfo;->recycle()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    :cond_2
    return-void
.end method

.method public onGestureCancelled(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGestureCancelled:  event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MagnificationGesturesObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->notifyDetectionCancel()V

    return-void
.end method

.method public onGestureCompleted(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8

    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGestureCompleted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/accessibility/magnification/MagnificationGestureMatcher;->gestureIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MagnificationGesturesObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver$Callback;

    iget-wide v4, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mLastDownEventTime:J

    move v3, p1

    move-object v6, v0

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver$Callback;->onGestureCompleted(IJLjava/util/List;Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->recycleLastEvent()V

    return-void
.end method

.method onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DetectGesture: event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MagnificationGesturesObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver$Callback;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver$Callback;->shouldStopDetection(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->notifyDetectionCancel()V

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mLastDownEventTime:J

    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mGesturesObserver:Lcom/android/server/accessibility/magnification/GesturesObserver;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/GesturesObserver;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MagnificationGesturesObserver{, mDelayedEventQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
