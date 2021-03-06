.class Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;
.super Ljava/lang/Object;
.source "MotionEventDispatcherDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate$EventDispatcher;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mEventDispatcher:Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate$EventDispatcher;

.field private mLastDelegatedDownEventTime:J

.field private final mMultiTapMaxDelay:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->DBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate$EventDispatcher;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mEventDispatcher:Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate$EventDispatcher;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mMultiTapMaxDelay:I

    return-void
.end method


# virtual methods
.method dispatchMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mLastDelegatedDownEventTime:J

    sget-boolean v0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMotionEvent mLastDelegatedDownEventTime time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mLastDelegatedDownEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMotionEvent original down time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-wide v0, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mLastDelegatedDownEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setDownTime(J)V

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mEventDispatcher:Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate$EventDispatcher;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate$EventDispatcher;->dispatchMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method sendDelayedMotionEvents(Ljava/util/List;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/accessibility/magnification/MotionEventInfo;",
            ">;J)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    iget v2, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mMultiTapMaxDelay:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/magnification/MotionEventInfo;

    iget-object v4, v3, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    iget-object v5, v3, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    add-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent;->setDownTime(J)V

    iget-object v4, v3, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    iget-object v5, v3, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    iget v6, v3, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mPolicyFlags:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->dispatchMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    invoke-virtual {v3}, Lcom/android/server/accessibility/magnification/MotionEventInfo;->recycle()V

    goto :goto_0

    :cond_1
    return-void
.end method
