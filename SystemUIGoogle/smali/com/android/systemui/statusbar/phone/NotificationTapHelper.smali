.class public Lcom/android/systemui/statusbar/phone/NotificationTapHelper;
.super Ljava/lang/Object;
.source "NotificationTapHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationTapHelper$Factory;,
        Lcom/android/systemui/statusbar/phone/NotificationTapHelper$SlideBackListener;,
        Lcom/android/systemui/statusbar/phone/NotificationTapHelper$DoubleTapListener;,
        Lcom/android/systemui/statusbar/phone/NotificationTapHelper$ActivationListener;
    }
.end annotation


# instance fields
.field private final mActivationListener:Lcom/android/systemui/statusbar/phone/NotificationTapHelper$ActivationListener;

.field private final mDoubleTapListener:Lcom/android/systemui/statusbar/phone/NotificationTapHelper$DoubleTapListener;

.field private final mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mSlideBackListener:Lcom/android/systemui/statusbar/phone/NotificationTapHelper$SlideBackListener;

.field private mTimeoutCancel:Ljava/lang/Runnable;

.field private mTrackTouch:Z


# direct methods
.method public static synthetic $r8$lambda$8o_lIxcbOYBb3ywdyuBapJBW3Nk(Lcom/android/systemui/statusbar/phone/NotificationTapHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->makeInactive()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/phone/NotificationTapHelper$ActivationListener;Lcom/android/systemui/statusbar/phone/NotificationTapHelper$DoubleTapListener;Lcom/android/systemui/statusbar/phone/NotificationTapHelper$SlideBackListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mActivationListener:Lcom/android/systemui/statusbar/phone/NotificationTapHelper$ActivationListener;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mDoubleTapListener:Lcom/android/systemui/statusbar/phone/NotificationTapHelper$DoubleTapListener;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mSlideBackListener:Lcom/android/systemui/statusbar/phone/NotificationTapHelper$SlideBackListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/phone/NotificationTapHelper$ActivationListener;Lcom/android/systemui/statusbar/phone/NotificationTapHelper$DoubleTapListener;Lcom/android/systemui/statusbar/phone/NotificationTapHelper$SlideBackListener;Lcom/android/systemui/statusbar/phone/NotificationTapHelper$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;-><init>(Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/phone/NotificationTapHelper$ActivationListener;Lcom/android/systemui/statusbar/phone/NotificationTapHelper$DoubleTapListener;Lcom/android/systemui/statusbar/phone/NotificationTapHelper$SlideBackListener;)V

    return-void
.end method

.method private makeActive()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationTapHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/NotificationTapHelper;)V

    const-wide/16 v2, 0x4b0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mTimeoutCancel:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mActivationListener:Lcom/android/systemui/statusbar/phone/NotificationTapHelper$ActivationListener;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper$ActivationListener;->onActiveChanged(Z)V

    return-void
.end method

.method private makeInactive()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mActivationListener:Lcom/android/systemui/statusbar/phone/NotificationTapHelper$ActivationListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper$ActivationListener;->onActiveChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mTimeoutCancel:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mTimeoutCancel:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->makeInactive()V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mTrackTouch:Z

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mTrackTouch:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isSimpleTap()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->makeInactive()V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mTrackTouch:Z

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mTrackTouch:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1, v2}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->makeInactive()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mDoubleTapListener:Lcom/android/systemui/statusbar/phone/NotificationTapHelper$DoubleTapListener;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper$DoubleTapListener;->onDoubleTap()Z

    move-result p0

    return p0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isSimpleTap()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mSlideBackListener:Lcom/android/systemui/statusbar/phone/NotificationTapHelper$SlideBackListener;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper$SlideBackListener;->onSlideBack()Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mTimeoutCancel:Ljava/lang/Runnable;

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->makeActive()V

    return v1

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->makeInactive()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseDoubleTap()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mDoubleTapListener:Lcom/android/systemui/statusbar/phone/NotificationTapHelper$DoubleTapListener;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper$DoubleTapListener;->onDoubleTap()Z

    move-result p0

    return p0

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->makeInactive()V

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_8

    goto :goto_0

    :cond_8
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mTrackTouch:Z

    :cond_9
    :goto_1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mTrackTouch:Z

    return p0
.end method
