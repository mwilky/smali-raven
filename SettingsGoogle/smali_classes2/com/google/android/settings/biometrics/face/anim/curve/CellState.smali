.class public Lcom/google/android/settings/biometrics/face/anim/curve/CellState;
.super Ljava/lang/Object;
.source "CellState.java"


# instance fields
.field private final mAlternateCursor:Z

.field private final mBucketListener:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable$BucketListener;

.field private mCellConfig:Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

.field private mCursorAnimator:Landroid/animation/ValueAnimator;

.field private mCursorAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mCursorColorAcquired:I

.field private final mCursorColorGone:I

.field private mCursorEdgePaint:Landroid/graphics/Paint;

.field private mCursorState:I

.field private final mDisableCursor:Z

.field private mDone:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIndex:I

.field private mNoActivityAnimator:Landroid/animation/ValueAnimator;

.field private mNoActivityAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mNoActivityPaint:Landroid/graphics/Paint;

.field private mNoActivityPulseShouldRepeat:Z

.field private mScrimAnimationState:I

.field private mScrimAnimator:Landroid/animation/ValueAnimator;

.field private mScrimAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mScrimColorEnrolled:I

.field private final mScrimColorNoActivityEnd:I

.field private final mScrimColorNoActivityStart:I

.field private mScrimColorNotEnrolled:I

.field private mScrimPaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$0UAN7lCxuqPj2pN5JaEWqlH9y5g(Lcom/google/android/settings/biometrics/face/anim/curve/CellState;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LDEJwPIngRewMeoy7gUmE3avpj4(Lcom/google/android/settings/biometrics/face/anim/curve/CellState;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->lambda$new$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WK80HLD4dlG6t87euLOqRN5Tqp4(Lcom/google/android/settings/biometrics/face/anim/curve/CellState;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->lambda$new$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBucketListener(Lcom/google/android/settings/biometrics/face/anim/curve/CellState;)Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable$BucketListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mBucketListener:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable$BucketListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/google/android/settings/biometrics/face/anim/curve/CellState;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIndex(Lcom/google/android/settings/biometrics/face/anim/curve/CellState;)I
    .locals 0

    iget p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNoActivityAnimator(Lcom/google/android/settings/biometrics/face/anim/curve/CellState;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mNoActivityAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNoActivityPulseShouldRepeat(Lcom/google/android/settings/biometrics/face/anim/curve/CellState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mNoActivityPulseShouldRepeat:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrimAnimationState(Lcom/google/android/settings/biometrics/face/anim/curve/CellState;)I
    .locals 0

    iget p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimAnimationState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCursorState(Lcom/google/android/settings/biometrics/face/anim/curve/CellState;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScrimAnimationState(Lcom/google/android/settings/biometrics/face/anim/curve/CellState;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimAnimationState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleFadeCursor(Lcom/google/android/settings/biometrics/face/anim/curve/CellState;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->handleFadeCursor()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable$BucketListener;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState$1;-><init>(Lcom/google/android/settings/biometrics/face/anim/curve/CellState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mHandler:Landroid/os/Handler;

    iput p2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mIndex:I

    iput-object p3, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mBucketListener:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable$BucketListener;

    iput p4, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimColorNotEnrolled:I

    const p2, 0x7f0a00b4

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimColorEnrolled:I

    const p2, 0x7f0a00bb

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorColorAcquired:I

    const p2, 0x7f0a00bc

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorColorGone:I

    const p3, 0x7f0a00b6

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimColorNoActivityStart:I

    const p4, 0x7f0a00b5

    invoke-virtual {p1, p4}, Landroid/content/Context;->getColor(I)I

    move-result p4

    iput p4, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimColorNoActivityEnd:I

    const/4 p4, 0x0

    iput p4, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimAnimationState:I

    iput p4, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorState:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "com.google.android.settings.future.biometrics.face.anim.curve.alternate_cursor"

    invoke-static {v0, v2, p4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p4

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mAlternateCursor:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.google.android.settings.future.biometrics.face.anim.curve.disable_cursor"

    invoke-static {v2, v3, p4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move p4, v1

    :cond_1
    iput-boolean p4, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mDisableCursor:Z

    if-eqz v0, :cond_2

    const/high16 p1, -0x10000

    goto :goto_1

    :cond_2
    const p4, 0x7f0a00bd

    invoke-virtual {p1, p4}, Landroid/content/Context;->getColor(I)I

    move-result p1

    :goto_1
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    iput-object p4, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorEdgePaint:Landroid/graphics/Paint;

    const/high16 p4, 0x40c00000    # 6.0f

    const/4 v0, 0x0

    invoke-virtual {p2, p4, v0, v0, p1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorEdgePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorEdgePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorEdgePaint:Landroid/graphics/Paint;

    const/high16 p2, 0x41400000    # 12.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mNoActivityPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mNoActivityPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Lcom/google/android/settings/biometrics/face/anim/curve/CellState$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/biometrics/face/anim/curve/CellState;)V

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Lcom/google/android/settings/biometrics/face/anim/curve/CellState$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/settings/biometrics/face/anim/curve/CellState;)V

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Lcom/google/android/settings/biometrics/face/anim/curve/CellState$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/settings/biometrics/face/anim/curve/CellState;)V

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mNoActivityAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method private animateScrimColor(IJI)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->isAnimating(Landroid/animation/ValueAnimator;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iput p4, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimAnimationState:I

    const/4 p4, 0x2

    new-array p4, p4, [I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    aput v1, p4, v0

    const/4 v0, 0x1

    aput p1, p4, v0

    invoke-static {p4}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimAnimator:Landroid/animation/ValueAnimator;

    iget-object p4, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimAnimator:Landroid/animation/ValueAnimator;

    new-instance p4, Lcom/google/android/settings/biometrics/face/anim/curve/CellState$4;

    invoke-direct {p4, p0}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState$4;-><init>(Lcom/google/android/settings/biometrics/face/anim/curve/CellState;)V

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateScrimNotEnrolledColor(J)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mDone:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimColorNotEnrolled:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->animateScrimColor(IJI)V

    :cond_1
    :goto_0
    return-void
.end method

.method private fadeScrimIn(J)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mDone:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimColorEnrolled:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimColorNotEnrolled:I

    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->animateScrimColor(IJI)V

    return-void
.end method

.method private static getRemainingAnimationTime(Landroid/animation/ValueAnimator;)J
    .locals 4

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float p0, v2

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private handleFadeCursor()V
    .locals 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorState:I

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->isAnimating(Landroid/animation/ValueAnimator;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorColorGone:I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/settings/biometrics/face/anim/curve/CellState$5;

    invoke-direct {v1, p0}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState$5;-><init>(Lcom/google/android/settings/biometrics/face/anim/curve/CellState;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static isAnimating(Landroid/animation/ValueAnimator;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mNoActivityPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCellConfig:Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, v0, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;->mFlipVertical:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCellConfig:Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    iget v0, v0, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;->mRotation:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCellConfig:Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    iget-object v0, v0, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCellConfig:Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    iget-object v0, v0, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mNoActivityPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawCursor(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCellConfig:Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, v0, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;->mFlipVertical:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCellConfig:Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    iget v0, v0, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;->mRotation:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mDisableCursor:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCellConfig:Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    iget-object v0, v0, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public fadeCursorNow()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->handleFadeCursor()V

    return-void
.end method

.method public fadeScrimIn()V
    .locals 2

    const-wide/16 v0, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->fadeScrimIn(J)V

    return-void
.end method

.method public fadeScrimOut(I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mDone:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimColorEnrolled:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimColorNotEnrolled:I

    :goto_0
    const-wide/16 v0, 0xc8

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->animateScrimColor(IJI)V

    return-void
.end method

.method public isDone()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mDone:Z

    return p0
.end method

.method public onAcquired()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const-wide/16 v2, 0x12c

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorState:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mDone:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorState:I

    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mDone:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mBucketListener:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable$BucketListener;

    invoke-interface {v0}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable$BucketListener;->onStartFinishing()V

    :cond_2
    iput-boolean v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mDone:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    aput v5, v0, v4

    iget v4, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorColorAcquired:I

    aput v4, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/settings/biometrics/face/anim/curve/CellState$3;

    invoke-direct {v1, p0}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState$3;-><init>(Lcom/google/android/settings/biometrics/face/anim/curve/CellState;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCursorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public pulseForNoActivity(I)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mNoActivityPulseShouldRepeat:Z

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mNoActivityAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->isAnimating(Landroid/animation/ValueAnimator;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimColorNoActivityStart:I

    aput v3, v1, v2

    iget v2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimColorNoActivityEnd:I

    aput v2, v1, v0

    const/4 v0, 0x2

    aput v2, v1, v0

    const/4 v0, 0x3

    aput v3, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mNoActivityAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mNoActivityAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mNoActivityAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mNoActivityAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x4d1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mNoActivityAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/settings/biometrics/face/anim/curve/CellState$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState$2;-><init>(Lcom/google/android/settings/biometrics/face/anim/curve/CellState;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mNoActivityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setEarlyDone()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mDone:Z

    return-void
.end method

.method public stopPulseForNoActivity()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mNoActivityPulseShouldRepeat:Z

    return-void
.end method

.method public updateConfig(Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mCellConfig:Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    return-void
.end method

.method public updateScrimNotEnrolledColor(IZ)V
    .locals 0

    iput p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimColorNotEnrolled:I

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimAnimationState:I

    if-eqz p1, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->getRemainingAnimationTime(Landroid/animation/ValueAnimator;)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->animateScrimNotEnrolledColor(J)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->getRemainingAnimationTime(Landroid/animation/ValueAnimator;)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->fadeScrimIn(J)V

    goto :goto_0

    :cond_3
    const-wide/16 p1, 0xc8

    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->animateScrimNotEnrolledColor(J)V

    :goto_0
    return-void
.end method
