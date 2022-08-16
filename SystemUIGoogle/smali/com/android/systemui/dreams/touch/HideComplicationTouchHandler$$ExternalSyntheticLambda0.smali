.class public final synthetic Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;

.field public final synthetic f$1:Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;

    iput-object p2, p0, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;

    iget-object p0, p0, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p1, Landroid/view/MotionEvent;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "HideComplicationHandler"

    const-string v2, "ACTION_DOWN received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;->mTouchInsetManager:Lcom/android/systemui/touch/TouchInsetManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2, p1}, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/touch/TouchInsetManager;II)V

    invoke-static {v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2, p0}, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p0, v0, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    invoke-virtual {p1, v1, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    :cond_3
    invoke-interface {p0}, Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;->pop()Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    iget-object p0, v0, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;->mHandler:Landroid/os/Handler;

    iget-object p1, v0, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;->mRestoreComplications:Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler$1;

    iget v0, v0, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;->mRestoreTimeout:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method
