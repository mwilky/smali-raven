.class public Lcom/android/server/accessibility/KeyEventDispatcher;
.super Ljava/lang/Object;
.source "KeyEventDispatcher.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;,
        Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    }
.end annotation


# instance fields
.field public final mHandlerToSendKeyEventsToInputFilter:Landroid/os/Handler;

.field public mKeyEventTimeoutHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mMessageTypeForSendKeyEvent:I

.field public final mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingEventsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventPool:Landroid/util/Pools$Pool;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    const-class v2, Lcom/android/server/accessibility/KeyEventDispatcher;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    :goto_0
    iput-object p1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mHandlerToSendKeyEventsToInputFilter:Landroid/os/Handler;

    iput p2, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mMessageTypeForSendKeyEvent:I

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mLock:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method public static removeEventFromListLocked(Ljava/util/List;I)Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;",
            ">;I)",
            "Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    iget-object v2, v1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getSequenceNumber()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public flush(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/KeyEventDispatcher;->removeReferenceToPendingEventLocked(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string p0, "KeyEventDispatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/KeyEventDispatcher;->removeReferenceToPendingEventLocked(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public notifyKeyEventLocked(Landroid/view/KeyEvent;ILjava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyEvent;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSequenceNumber()I

    move-result v5

    invoke-interface {v3, p1, v5}, Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;->onKeyEvent(Landroid/view/KeyEvent;I)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/KeyEventDispatcher;->obtainPendingEventLocked(Landroid/view/KeyEvent;I)Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    move-result-object v1

    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->recycle()V

    return v0

    :cond_4
    iget-object p1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x1f4

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v4
.end method

.method public final obtainPendingEventLocked(Landroid/view/KeyEvent;I)Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    .locals 1

    iget-object p0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {p0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;-><init>(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent-IA;)V

    :cond_0
    iput-object p1, p0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    iput p2, p0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->policyFlags:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    iput-boolean p1, p0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->handled:Z

    return-object p0
.end method

.method public final removeReferenceToPendingEventLocked(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z
    .locals 6

    iget v0, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    const/4 v2, 0x0

    if-lez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-boolean v0, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->handled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_1

    iget-object v3, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {v0, v3, v2}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_1
    iget v0, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->policyFlags:I

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mHandlerToSendKeyEventsToInputFilter:Landroid/os/Handler;

    iget v4, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mMessageTypeForSendKeyEvent:I

    iget-object v5, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {v3, v4, v0, v2, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    :goto_0
    iget-object p0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {p0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return v1
.end method

.method public setOnKeyEventResult(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;ZI)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1, p3}, Lcom/android/server/accessibility/KeyEventDispatcher;->removeEventFromListLocked(Ljava/util/List;I)Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-boolean p3, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->handled:Z

    if-nez p3, :cond_0

    iput-boolean p2, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->handled:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPowerManager:Landroid/os/PowerManager;

    iget-object v2, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/PowerManager;->userActivity(JII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/KeyEventDispatcher;->removeReferenceToPendingEventLocked(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
