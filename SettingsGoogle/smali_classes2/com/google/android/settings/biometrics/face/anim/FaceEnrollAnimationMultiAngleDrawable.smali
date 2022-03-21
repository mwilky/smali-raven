.class public Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;
.super Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;
.source "FaceEnrollAnimationMultiAngleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable$BucketListener;
    }
.end annotation


# instance fields
.field private final mBucketListener:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable$BucketListener;

.field private mBucketsCompleted:[Z

.field private final mContext:Landroid/content/Context;

.field private final mDirectionIndicationHelper:Lcom/google/android/settings/biometrics/face/anim/curve/DirectionIndicationHelper;

.field private final mDirectionIndicatorController:Lcom/google/android/settings/biometrics/face/anim/curve/DirectionIndicatorController;

.field private mFinishingArcPaint:Landroid/graphics/Paint;

.field private final mGridController:Lcom/google/android/settings/biometrics/face/anim/curve/GridController;

.field private final mHandler:Landroid/os/Handler;

.field private mLastVibrationMs:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;Landroid/widget/ImageView;Landroid/widget/ImageView;ZLandroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;-><init>(Landroid/content/Context;Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;Landroid/widget/ImageView;Z)V

    const/16 p2, 0x19

    new-array p2, p2, [Z

    iput-object p2, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mBucketsCompleted:[Z

    new-instance p2, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p2, p0, p4}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable$1;-><init>(Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable$2;

    invoke-direct {p2, p0}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable$2;-><init>(Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;)V

    iput-object p2, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mBucketListener:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable$BucketListener;

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mContext:Landroid/content/Context;

    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    iput-object p4, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mFinishingArcPaint:Landroid/graphics/Paint;

    const/4 p5, 0x1

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p4, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mFinishingArcPaint:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p4, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mFinishingArcPaint:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p4, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mFinishingArcPaint:Landroid/graphics/Paint;

    const/high16 p5, 0x41a00000    # 20.0f

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p4, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mFinishingArcPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v0, 0x7f0a00c5

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p5

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p4, Lcom/google/android/settings/biometrics/face/anim/curve/DirectionIndicationHelper;

    invoke-direct {p4}, Lcom/google/android/settings/biometrics/face/anim/curve/DirectionIndicationHelper;-><init>()V

    iput-object p4, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mDirectionIndicationHelper:Lcom/google/android/settings/biometrics/face/anim/curve/DirectionIndicationHelper;

    new-instance p4, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;

    invoke-direct {p4, p1, p2}, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;-><init>(Landroid/content/Context;Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable$BucketListener;)V

    iput-object p4, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mGridController:Lcom/google/android/settings/biometrics/face/anim/curve/GridController;

    new-instance p2, Lcom/google/android/settings/biometrics/face/anim/curve/DirectionIndicatorController;

    invoke-direct {p2, p1, p3}, Lcom/google/android/settings/biometrics/face/anim/curve/DirectionIndicatorController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;)V

    iput-object p2, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mDirectionIndicatorController:Lcom/google/android/settings/biometrics/face/anim/curve/DirectionIndicatorController;

    if-eqz p6, :cond_0

    const-string p1, "key_bucket_status"

    invoke-virtual {p6, p1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mBucketsCompleted:[Z

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mBucketsCompleted:[Z

    array-length p3, p2

    if-ge p1, p3, :cond_0

    iget-object p3, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mGridController:Lcom/google/android/settings/biometrics/face/anim/curve/GridController;

    aget-boolean p2, p2, p1

    invoke-virtual {p3, p1, p2}, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->restoreState(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->handleUserNoActivityAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mLastVibrationMs:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mLastVibrationMs:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private addDelayedUserNoActivityAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private handleUserNoActivityAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mGridController:Lcom/google/android/settings/biometrics/face/anim/curve/GridController;

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mDirectionIndicationHelper:Lcom/google/android/settings/biometrics/face/anim/curve/DirectionIndicationHelper;

    iget-object v2, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mBucketsCompleted:[Z

    invoke-virtual {v1, v2}, Lcom/google/android/settings/biometrics/face/anim/curve/DirectionIndicationHelper;->getNoProgressBucket([Z)I

    move-result v1

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->pulseForNoActivity(II)V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mDirectionIndicatorController:Lcom/google/android/settings/biometrics/face/anim/curve/DirectionIndicatorController;

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mDirectionIndicationHelper:Lcom/google/android/settings/biometrics/face/anim/curve/DirectionIndicationHelper;

    iget-object v3, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mBucketsCompleted:[Z

    invoke-virtual {v1, v3}, Lcom/google/android/settings/biometrics/face/anim/curve/DirectionIndicationHelper;->getNoProgressPulseAngle([Z)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/settings/biometrics/face/anim/curve/DirectionIndicatorController;->pulseForNoActivity(II)V

    invoke-virtual {p0}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->getListener()Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mContext:Landroid/content/Context;

    const v1, 0x7f04091b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;->showHelp(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private isLargeAngle(I)Z
    .locals 0

    const/16 p0, 0x466

    if-lt p1, p0, :cond_0

    const/16 p0, 0x46d

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNewBucketAcquired(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->isBucket(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mBucketsCompleted:[Z

    add-int/lit16 p1, p1, -0x44d

    aget-boolean p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private stopCurrentDirectionIndication()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mDirectionIndicatorController:Lcom/google/android/settings/biometrics/face/anim/curve/DirectionIndicatorController;

    invoke-virtual {v0}, Lcom/google/android/settings/biometrics/face/anim/curve/DirectionIndicatorController;->stopCurrentIndication()V

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mGridController:Lcom/google/android/settings/biometrics/face/anim/curve/GridController;

    invoke-virtual {p0}, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->stopPulseForNoActivity()V

    return-void
.end method


# virtual methods
.method protected bucketAcquiredWhileScrimShowing(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mBucketsCompleted:[Z

    add-int/lit16 p1, p1, -0x44d

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mGridController:Lcom/google/android/settings/biometrics/face/anim/curve/GridController;

    invoke-virtual {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->setEarlyDone(I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mGridController:Lcom/google/android/settings/biometrics/face/anim/curve/GridController;

    invoke-virtual {v0, p1}, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->draw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mDirectionIndicatorController:Lcom/google/android/settings/biometrics/face/anim/curve/DirectionIndicatorController;

    invoke-virtual {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/curve/DirectionIndicatorController;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mGridController:Lcom/google/android/settings/biometrics/face/anim/curve/GridController;

    invoke-virtual {v0, p1}, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mDirectionIndicatorController:Lcom/google/android/settings/biometrics/face/anim/curve/DirectionIndicatorController;

    invoke-virtual {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/curve/DirectionIndicatorController;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->outOfFOVScrimShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->isCenterAcquired()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->isBucket(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->isNewBucketAcquired(I)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->addDelayedUserNoActivityAnimation()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->isNewBucketAcquired(I)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->isLargeAngle(I)Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    iget-object p2, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->stopCurrentDirectionIndication()V

    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->isBucket(I)Z

    move-result p2

    if-eqz p2, :cond_4

    add-int/lit16 p1, p1, -0x44d

    iget-object p2, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mBucketsCompleted:[Z

    aput-boolean v0, p2, p1

    invoke-virtual {p0}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->isCenterAcquired()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mGridController:Lcom/google/android/settings/biometrics/face/anim/curve/GridController;

    invoke-virtual {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->onAcquired(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->onEnrollmentProgressChange(II)V

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mBucketsCompleted:[Z

    const-string v0, "key_bucket_status"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    return-void
.end method

.method protected onUserEnterGood()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->onUserEnterGood()V

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mGridController:Lcom/google/android/settings/biometrics/face/anim/curve/GridController;

    invoke-virtual {p0}, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->onUserEnterGood()V

    return-void
.end method

.method protected onUserLeaveGood(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->onUserLeaveGood(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mGridController:Lcom/google/android/settings/biometrics/face/anim/curve/GridController;

    invoke-virtual {p1}, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->onUserLeaveGood()V

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->stopCurrentDirectionIndication()V

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
