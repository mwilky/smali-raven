.class public Lcom/android/settings/gestures/BackGestureIndicatorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BackGestureIndicatorDrawable.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentWidth:F

.field private mFinalWidth:F

.field private final mHandler:Landroid/os/Handler;

.field private mPaint:Landroid/graphics/Paint;

.field private mReversed:Z

.field private mTimeAnimator:Landroid/animation/TimeAnimator;

.field private mWidthChangePerMs:F


# direct methods
.method public static synthetic $r8$lambda$yg_OXt5LNRCYkh3K7GuoCioKc8s(Lcom/android/settings/gestures/BackGestureIndicatorDrawable;Landroid/animation/TimeAnimator;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->lambda$new$0(Landroid/animation/TimeAnimator;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    new-instance v0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/gestures/BackGestureIndicatorDrawable$1;-><init>(Lcom/android/settings/gestures/BackGestureIndicatorDrawable;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mReversed:Z

    iget-object p1, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    new-instance p2, Lcom/android/settings/gestures/BackGestureIndicatorDrawable$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/gestures/BackGestureIndicatorDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/gestures/BackGestureIndicatorDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/gestures/BackGestureIndicatorDrawable;)Landroid/animation/TimeAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/gestures/BackGestureIndicatorDrawable;)F
    .locals 0

    iget p0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mFinalWidth:F

    return p0
.end method

.method static synthetic access$102(Lcom/android/settings/gestures/BackGestureIndicatorDrawable;F)F
    .locals 0

    iput p1, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mFinalWidth:F

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings/gestures/BackGestureIndicatorDrawable;F)F
    .locals 0

    iput p1, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mWidthChangePerMs:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/gestures/BackGestureIndicatorDrawable;)F
    .locals 0

    iget p0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mCurrentWidth:F

    return p0
.end method

.method static synthetic access$302(Lcom/android/settings/gestures/BackGestureIndicatorDrawable;F)F
    .locals 0

    iput p1, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mCurrentWidth:F

    return p1
.end method

.method private synthetic lambda$new$0(Landroid/animation/TimeAnimator;JJ)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->updateCurrentWidth(JJ)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private updateCurrentWidth(JJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    monitor-enter v0

    long-to-float p3, p3

    :try_start_0
    iget p4, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mWidthChangePerMs:F

    mul-float/2addr p3, p4

    const-wide/16 v1, 0xc8

    cmp-long p1, p1, v1

    if-gez p1, :cond_2

    iget p1, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mFinalWidth:F

    iget p2, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mCurrentWidth:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p3, p1

    if-ltz p1, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mCurrentWidth:F

    iget p2, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mFinalWidth:F

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 p2, -0x40800000    # -1.0f

    :goto_0
    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    iput p1, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mCurrentWidth:F

    goto :goto_2

    :cond_2
    :goto_1
    iget p1, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mFinalWidth:F

    iput p1, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mCurrentWidth:F

    iget-object p0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p0}, Landroid/animation/TimeAnimator;->end()V

    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mCurrentWidth:F

    float-to-int v1, v1

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-boolean v0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mReversed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWidth()I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mFinalWidth:F

    float-to-int p0, p0

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setWidth(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/gestures/BackGestureIndicatorDrawable;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
