.class Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;
.super Ljava/lang/Object;
.source "SquishyViewController.java"

# interfaces
.implements Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/elmyra/feedback/SquishyViewController$SpringInterpolator;
    }
.end annotation


# static fields
.field private static final SQUISH_TRANSLATION_MAP:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mContext:Landroid/content/Context;

.field private mLastPressure:F

.field private final mLeftViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPressure:F

.field private final mRightViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

.field private mScreenRotation:I

.field private final mSquishTranslationMax:F

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3f19999a    # 0.6f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->SQUISH_TRANSLATION_MAP:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mLeftViews:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mRightViews:Ljava/util/List;

    new-instance v0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController$1;-><init>(Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-direct {p0, v1}, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->px(F)F

    move-result v1

    iput v1, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mSquishTranslationMax:F

    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mWindowManager:Landroid/view/IWindowManager;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-interface {v1, v0, p1}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mScreenRotation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SquishyViewController"

    const-string v1, "Couldn\'t get screen rotation or set watcher"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mScreenRotation:I

    :goto_0
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mScreenRotation:I

    return p1
.end method

.method private createSpringbackAnimatorSet(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 8

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput v5, v2, v3

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v1, [F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v7

    aput v7, v6, v4

    aput v5, v6, v3

    invoke-static {p1, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v5, 0xfa

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x41000000    # 8.0f

    div-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v6

    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const v5, 0x40466666    # 3.1f

    mul-float/2addr p1, v5

    new-instance v5, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController$SpringInterpolator;

    const v6, 0x3e9eb852    # 0.31f

    invoke-direct {v5, p0, v6, p1}, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController$SpringInterpolator;-><init>(Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;FF)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController$SpringInterpolator;

    invoke-direct {v5, p0, v6, p1}, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController$SpringInterpolator;-><init>(Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;FF)V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p1, v1, [Landroid/animation/Animator;

    aput-object v0, p1, v4

    aput-object v2, p1, v3

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object p0
.end method

.method private createSpringbackAnimatorSets()Landroid/animation/AnimatorSet;
    .locals 4

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mLeftViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mLeftViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->createSpringbackAnimatorSet(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mRightViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mRightViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->createSpringbackAnimatorSet(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private px(F)F
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private setViewTranslation(Landroid/view/View;F)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr p2, v0

    :cond_1
    iget p0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mScreenRotation:I

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    neg-float p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method private translateViews(F)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mLeftViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mLeftViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, p1}, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->setViewTranslation(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mRightViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mRightViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    neg-float v2, p1

    invoke-direct {p0, v1, v2}, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->setViewTranslation(Landroid/view/View;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public addLeftView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mLeftViews:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRightView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mRightViews:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearViews()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->translateViews(F)V

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mLeftViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mRightViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public isAttachedToWindow()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mLeftViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mLeftViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mRightViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mRightViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public onProgress(FI)V
    .locals 2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, p2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    mul-float/2addr p2, p1

    iget v1, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mLastPressure:F

    mul-float/2addr v1, v0

    add-float/2addr p2, v1

    iput p2, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mPressure:F

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mPressure:F

    :goto_0
    iget-object p2, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_1
    iget p2, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mLastPressure:F

    sub-float/2addr p1, p2

    const p2, -0x42333333    # -0.1f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->createSpringbackAnimatorSets()Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mSquishTranslationMax:F

    sget-object p2, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->SQUISH_TRANSLATION_MAP:Landroid/view/animation/Interpolator;

    iget v0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mPressure:F

    invoke-interface {p2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    mul-float/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->translateViews(F)V

    :cond_3
    :goto_1
    iget p1, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mPressure:F

    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mLastPressure:F

    return-void
.end method

.method public onRelease()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->onProgress(FI)V

    return-void
.end method

.method public onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->onProgress(FI)V

    return-void
.end method
