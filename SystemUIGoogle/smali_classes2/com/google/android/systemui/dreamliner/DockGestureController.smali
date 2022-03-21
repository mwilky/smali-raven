.class public Lcom/google/android/systemui/dreamliner/DockGestureController;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DockGestureController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field private static final GEAR_VISIBLE_TIME_MILLIS:J

.field private static final PREVIEW_DELAY_MILLIS:J


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mContext:Landroid/content/Context;

.field private mDiffX:F

.field final mDockIndicationController:Lcom/google/android/systemui/dreamliner/DockIndicationController;

.field private mFirstTouchX:F

.field private mFirstTouchY:F

.field private mFromRight:Z

.field mGestureDetector:Landroid/view/GestureDetector;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHideGearRunnable:Ljava/lang/Runnable;

.field private final mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mLastTouchX:F

.field private mLaunchedPhoto:Z

.field private final mPhotoDiffThreshold:I

.field private mPhotoEnabled:Z

.field private final mPhotoPreview:Landroid/widget/FrameLayout;

.field private final mPhotoPreviewText:Landroid/widget/TextView;

.field private mPreviewTargetAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsGear:Landroid/widget/ImageView;

.field private mShouldConsumeTouch:Z

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mTapAction:Landroid/app/PendingIntent;

.field private final mTargetSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

.field private final mTouchDelegateView:Landroid/view/View;

.field private mTriggerPhoto:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVelocityX:F


# direct methods
.method public static synthetic $r8$lambda$JUr8kVRq6faiMMqAdMOUcb1ysZQ(Lcom/google/android/systemui/dreamliner/DockGestureController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->lambda$hidePhotoPreview$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$JhMScZF5d6sJpyaJJ12JOu8wSpk(Lcom/google/android/systemui/dreamliner/DockGestureController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->lambda$hideGear$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$XdWV742g7U0Nv4bN9lUu6NlG9WM(Lcom/google/android/systemui/dreamliner/DockGestureController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockGestureController;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a1uc_HT6gLZNEZabsmpd0YC_YkU(Lcom/google/android/systemui/dreamliner/DockGestureController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->lambda$hidePhotoPreview$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$bam3q-bbQkU4sE5KthMm_s8R9LM(Lcom/google/android/systemui/dreamliner/DockGestureController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->hideGear()V

    return-void
.end method

.method public static synthetic $r8$lambda$cvndS9GpXsh7WcsuUYATZ79z4w4(Lcom/google/android/systemui/dreamliner/DockGestureController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->lambda$onDozingChanged$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$hPfJV9WSmC7vXn5EwJRX87chReg(Lcom/google/android/systemui/dreamliner/DockGestureController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->lambda$onTouch$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/systemui/dreamliner/DockGestureController;->GEAR_VISIBLE_TIME_MILLIS:J

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/systemui/dreamliner/DockGestureController;->PREVIEW_DELAY_MILLIS:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/view/View;Lcom/google/android/systemui/dreamliner/DockIndicationController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 3

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    const v1, 0x44bb8000    # 1500.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mTargetSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    new-instance v0, Lcom/google/android/systemui/dreamliner/DockGestureController$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/dreamliner/DockGestureController$1;-><init>(Lcom/google/android/systemui/dreamliner/DockGestureController;)V

    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    iput-object p5, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mDockIndicationController:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mContext:Landroid/content/Context;

    new-instance p5, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda4;

    invoke-direct {p5, p0}, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/systemui/dreamliner/DockGestureController;)V

    iput-object p5, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mHideGearRunnable:Ljava/lang/Runnable;

    new-instance p5, Landroid/view/GestureDetector;

    invoke-direct {p5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p5, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object p4, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mTouchDelegateView:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mSettingsGear:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoPreview:Landroid/widget/FrameLayout;

    sget p4, Lcom/android/systemui/R$id;->photo_preview_text:I

    invoke-virtual {p3, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoPreviewText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v0, Lcom/android/systemui/R$string;->dock_photo_preview_text:I

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p4, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/dreamliner/DockGestureController;)V

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->dock_photo_diff:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoDiffThreshold:I

    iput-object p6, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p7, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {p3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPreviewTargetAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/dreamliner/DockGestureController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/dreamliner/DockGestureController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockGestureController;->hidePhotoPreview(Z)V

    return-void
.end method

.method private getRecommendedTimeoutMillis()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez p0, :cond_0

    sget-wide v0, Lcom/google/android/systemui/dreamliner/DockGestureController;->GEAR_VISIBLE_TIME_MILLIS:J

    goto :goto_0

    :cond_0
    sget-wide v0, Lcom/google/android/systemui/dreamliner/DockGestureController;->GEAR_VISIBLE_TIME_MILLIS:J

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p0

    int-to-long v0, p0

    :goto_0
    return-wide v0
.end method

.method private handleMoveEvent(Landroid/view/MotionEvent;)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mFromRight:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mLastTouchX:F

    sub-float v2, v0, v1

    iget-object v3, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoPreview:Landroid/widget/FrameLayout;

    add-float/2addr v1, v2

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget v1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mFirstTouchX:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mDiffX:F

    iget v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mFirstTouchY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mDiffX:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    iget p1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mDiffX:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoDiffThreshold:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mTriggerPhoto:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private hideGear()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mSettingsGear:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mSettingsGear:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mHideGearRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mSettingsGear:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/dreamliner/DockGestureController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private hidePhotoPreview(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoPreview:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoPreview:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/systemui/dreamliner/DockGestureController;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoPreview:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoPreview:Landroid/widget/FrameLayout;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private synthetic lambda$hideGear$5()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mSettingsGear:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$hidePhotoPreview$2()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoPreview:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoPreview:Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$hidePhotoPreview$3()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPreviewTargetAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v2, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoPreview:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getRight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mVelocityX:F

    iget-object v4, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mTargetSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Runnable;

    new-instance v2, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/dreamliner/DockGestureController;)V

    const/4 p0, 0x0

    aput-object v2, v1, p0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->hideGear()V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.google.android.apps.dreamliner.SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockGestureController;->sendProtectedBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$onDozingChanged$4()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->hidePhotoPreview(Z)V

    return-void
.end method

.method private synthetic lambda$onTouch$1()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPreviewTargetAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget v2, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mVelocityX:F

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mTargetSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    return-void
.end method

.method private sendProtectedBroadcast(Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "DLGestureController"

    const-string v0, "Cannot send event"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private showGear()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mTapAction:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mSettingsGear:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isVisibleToUser()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mSettingsGear:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mSettingsGear:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mSettingsGear:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mHideGearRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mSettingsGear:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mHideGearRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->getRecommendedTimeoutMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method handlePhotoFailure()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->hidePhotoPreview(Z)V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.google.android.systemui.dreamliner.TOUCH_EVENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockGestureController;->sendProtectedBroadcast(Landroid/content/Intent;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onDozingChanged(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mTouchDelegateView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->showGear()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mTouchDelegateView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->hideGear()V

    iget-boolean p1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mLaunchedPhoto:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockGestureController;->hidePhotoPreview(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoPreview:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/systemui/dreamliner/DockGestureController;)V

    sget-wide v1, Lcom/google/android/systemui/dreamliner/DockGestureController;->PREVIEW_DELAY_MILLIS:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public onLocaleListChanged()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoPreviewText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->dock_photo_preview_text:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mTapAction:Landroid/app/PendingIntent;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DLGestureController"

    const-string v1, "Tap action pending intent cancelled"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->showGear()V

    const/4 p0, 0x0

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->initVelocityTracker()V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/systemui/dreamliner/DockGestureController;->handleMoveEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mVelocityX:F

    iget v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mDiffX:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v3, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mVelocityX:F

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mLastTouchX:F

    iget-object v3, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoPreview:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRight()I

    move-result v3

    iget v4, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoDiffThreshold:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    :cond_2
    iput-boolean v2, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mTriggerPhoto:Z

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mTriggerPhoto:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoPreview:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.android.systemui.dreamliner.PHOTO_EVENT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->sendProtectedBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoPreview:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/systemui/dreamliner/DockGestureController;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mLaunchedPhoto:Z

    iput-boolean v2, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mTriggerPhoto:Z

    goto :goto_2

    :cond_4
    invoke-direct {p0, v1}, Lcom/google/android/systemui/dreamliner/DockGestureController;->hidePhotoPreview(Z)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iput p1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mFirstTouchX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mFirstTouchY:F

    iput-boolean v2, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mLaunchedPhoto:Z

    iput-boolean v2, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mFromRight:Z

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mDockIndicationController:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p2}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->isDockedTopIconTouched(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mShouldConsumeTouch:Z

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoPreview:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    iget v3, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoDiffThreshold:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_9

    iput-boolean v1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mFromRight:Z

    iget-boolean v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoEnabled:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoPreview:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoPreview:Landroid/widget/FrameLayout;

    const-wide/16 v3, 0x64

    invoke-static {v0, v3, v4, v2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;JI)V

    :cond_9
    :goto_2
    iput p1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mLastTouchX:F

    iget-boolean p1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mShouldConsumeTouch:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_a
    iget-boolean p0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mShouldConsumeTouch:Z

    return p0
.end method

.method setPhotoEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mPhotoEnabled:Z

    return-void
.end method

.method setTapAction(Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mTapAction:Landroid/app/PendingIntent;

    return-void
.end method

.method startMonitoring()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mSettingsGear:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->onDozingChanged(Z)V

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method stopMonitoring()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->onDozingChanged(Z)V

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mSettingsGear:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
