.class public final Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "UdfpsEnrollProgressBarDrawable.java"


# static fields
.field public static final DEACCEL:Landroid/view/animation/DecelerateInterpolator;

.field public static final FINGERPRINT_ENROLLING_SONFICATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final SUCCESS_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

.field public static final VIBRATE_EFFECT_ERROR:Landroid/os/VibrationEffect;


# instance fields
.field public mAfterFirstTouch:Z

.field public mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

.field public final mBackgroundColorUpdateListener:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

.field public final mBackgroundPaint:Landroid/graphics/Paint;

.field public mCheckmarkAnimator:Landroid/animation/ValueAnimator;

.field public final mCheckmarkDrawable:Landroid/graphics/drawable/Drawable;

.field public final mCheckmarkInterpolator:Landroid/view/animation/OvershootInterpolator;

.field public mCheckmarkScale:F

.field public final mCheckmarkUpdateListener:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda5;

.field public mComplete:Z

.field public final mContext:Landroid/content/Context;

.field public mFillColorAnimator:Landroid/animation/ValueAnimator;

.field public final mFillColorUpdateListener:Landroidx/leanback/widget/SearchOrbView$$ExternalSyntheticLambda1;

.field public final mFillPaint:Landroid/graphics/Paint;

.field public final mHelpColor:I

.field public final mIsAccessibilityEnabled:Z

.field public final mOnFirstBucketFailedColor:I

.field public mProgress:F

.field public mProgressAnimator:Landroid/animation/ValueAnimator;

.field public final mProgressColor:I

.field public final mProgressUpdateListener:Landroidx/leanback/widget/SearchOrbView$$ExternalSyntheticLambda0;

.field public mRemainingSteps:I

.field public final mStrokeWidthPx:F

.field public mTotalSteps:I

.field public final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->DEACCEL:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->VIBRATE_EFFECT_ERROR:Landroid/os/VibrationEffect;

    const/16 v0, 0x42

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->FINGERPRINT_ENROLLING_SONFICATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/16 v0, 0x32

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->SUCCESS_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    return-void

    :array_0
    .array-data 8
        0x0
        0x5
        0x37
        0x3c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mRemainingSteps:I

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mTotalSteps:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgress:F

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mComplete:Z

    iput v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkScale:F

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/16 v1, 0xa0

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mStrokeWidthPx:F

    const v1, 0x7f060487

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressColor:I

    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mIsAccessibilityEnabled:Z

    if-nez v2, :cond_0

    const v2, 0x7f060488

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mHelpColor:I

    const v2, 0x7f06048b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mOnFirstBucketFailedColor:I

    goto :goto_0

    :cond_0
    const v2, 0x7f060489

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mHelpColor:I

    iput v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mOnFirstBucketFailedColor:I

    :goto_0
    const v2, 0x7f080856

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkInterpolator:Landroid/view/animation/OvershootInterpolator;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v3, 0x7f06048a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mVibrator:Landroid/os/Vibrator;

    new-instance p1, Landroidx/leanback/widget/SearchOrbView$$ExternalSyntheticLambda0;

    invoke-direct {p1, v3, p0}, Landroidx/leanback/widget/SearchOrbView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressUpdateListener:Landroidx/leanback/widget/SearchOrbView$$ExternalSyntheticLambda0;

    new-instance p1, Landroidx/leanback/widget/SearchOrbView$$ExternalSyntheticLambda1;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Landroidx/leanback/widget/SearchOrbView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mFillColorUpdateListener:Landroidx/leanback/widget/SearchOrbView$$ExternalSyntheticLambda1;

    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda5;

    invoke-direct {p1, v0, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkUpdateListener:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda5;

    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    invoke-direct {p1, v0, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mBackgroundColorUpdateListener:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mStrokeWidthPx:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v5, v2, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v6, v2, v0

    const/4 v7, 0x0

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v0

    move v4, v0

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    :cond_0
    iget v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgress:F

    const/4 v11, 0x0

    cmpl-float v2, v2, v11

    if-lez v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v5, v2, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v6, v2, v0

    const/4 v7, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgress:F

    mul-float v8, v3, v2

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v0

    move v4, v0

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkScale:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mStrokeWidthPx:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    mul-float/2addr v2, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mStrokeWidthPx:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    mul-float/2addr v3, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget v4, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkScale:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkScale:F

    mul-float/2addr v4, v1

    sub-float v1, v0, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-float v5, v2, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1, v5, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public final updateState(IIZ)V
    .locals 10

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mRemainingSteps:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mTotalSteps:I

    if-ne v0, p2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mVibrator:Landroid/os/Vibrator;

    if-eqz v4, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mIsAccessibilityEnabled:Z

    if-eqz v5, :cond_1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->VIBRATE_EFFECT_ERROR:Landroid/os/VibrationEffect;

    const-class v0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;

    sget-object v9, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->FINGERPRINT_ENROLLING_SONFICATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const-string v8, "UdfpsEnrollProgressBarDrawable::onFirstTouchError"

    invoke-virtual/range {v4 .. v9}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    goto :goto_0

    :cond_1
    if-eq p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mIsAccessibilityEnabled:Z

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->SUCCESS_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    const-class v0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;

    sget-object v9, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const-string v8, "UdfpsEnrollProgressBarDrawable::OnEnrollmentProgress"

    invoke-virtual/range {v4 .. v9}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mRemainingSteps:I

    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mTotalSteps:I

    sub-int/2addr p2, p1

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mAfterFirstTouch:Z

    if-eqz v0, :cond_3

    add-int/lit8 p2, p2, 0x1

    :cond_3
    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mTotalSteps:I

    add-int/2addr v0, v1

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mTotalSteps:I

    :goto_1
    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget-object v4, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    new-array v4, v2, [F

    iget v5, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgress:F

    aput v5, v4, v3

    aput p2, v4, v1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x190

    invoke-virtual {p2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressUpdateListener:Landroidx/leanback/widget/SearchOrbView$$ExternalSyntheticLambda0;

    invoke-virtual {p2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mComplete:Z

    if-eqz p1, :cond_6

    goto/16 :goto_3

    :cond_6
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mComplete:Z

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    new-array p1, v2, [F

    iget p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkScale:F

    aput p2, p1, v3

    aput v0, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xc8

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkUpdateListener:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda5;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    :cond_8
    if-lez p1, :cond_c

    iget-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mComplete:Z

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    iput-boolean v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mComplete:Z

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    goto :goto_2

    :cond_a
    move p1, p2

    :goto_2
    const/high16 v0, 0x43480000    # 200.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long v4, p1

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_b
    new-array p1, v2, [F

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkScale:F

    aput v0, p1, v3

    aput p2, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkUpdateListener:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda5;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_c
    :goto_3
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mAfterFirstTouch:Z

    const-wide/16 v4, 0x15e

    if-nez p1, :cond_e

    if-eqz p3, :cond_e

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_d
    new-array p1, v2, [I

    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    aput p2, p1, v3

    iget p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mOnFirstBucketFailedColor:I

    aput p2, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->DEACCEL:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mBackgroundColorUpdateListener:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    :cond_e
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mFillColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mFillColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_f
    if-eqz p3, :cond_10

    iget p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mHelpColor:I

    goto :goto_4

    :cond_10
    iget p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressColor:I

    :goto_4
    new-array p2, v2, [I

    iget-object p3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result p3

    aput p3, p2, v3

    aput p1, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mFillColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mFillColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mFillColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mFillColorAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->DEACCEL:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mFillColorAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mFillColorUpdateListener:Landroidx/leanback/widget/SearchOrbView$$ExternalSyntheticLambda1;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mFillColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_5
    return-void
.end method
