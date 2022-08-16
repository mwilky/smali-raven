.class public Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;
.super Lcom/android/systemui/CoreStartable;
.source "TvOngoingPrivacyChip.java"

# interfaces
.implements Lcom/android/systemui/privacy/PrivacyItemController$Callback;
.implements Lcom/android/systemui/privacy/television/PrivacyChipDrawable$PrivacyChipDrawableListener;


# instance fields
.field public final mAccessibilityRunnable:Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda4;

.field public mAllIndicatorsEnabled:Z

.field public final mAnimationDurationMs:I

.field public mAnimator:Landroid/animation/ObjectAnimator;

.field public final mBounds:[Landroid/graphics/Rect;

.field public mChipDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

.field public final mCollapseRunnable:Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda3;

.field public final mContext:Landroid/content/Context;

.field public final mIWindowManager:Landroid/view/IWindowManager;

.field public final mIconMarginStart:I

.field public final mIconSize:I

.field public mIconsContainer:Landroid/widget/LinearLayout;

.field public mIndicatorView:Landroid/view/ViewGroup;

.field public mIsRtl:Z

.field public final mItemsBeforeLastAnnouncement:Ljava/util/LinkedList;

.field public mMicCameraIndicatorFlagEnabled:Z

.field public final mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

.field public mPrivacyItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation
.end field

.field public mState:I

.field public final mUiThreadHandler:Landroid/os/Handler;

.field public mViewAndWindowAdded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/privacy/PrivacyItemController;Landroid/view/IWindowManager;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/CoreStartable;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mBounds:[Landroid/graphics/Rect;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda3;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mCollapseRunnable:Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, v1, p0}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAccessibilityRunnable:Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda4;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mItemsBeforeLastAnnouncement:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    iput-object p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    iput-object p3, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f070685

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIconMarginStart:I

    const v1, 0x7f070686

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIconSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIsRtl:Z

    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->updateStaticPrivacyIndicatorBounds()V

    const p1, 0x7f0c00be

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAnimationDurationMs:I

    iget-object p1, p2, Lcom/android/systemui/privacy/PrivacyItemController;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    iget-boolean p2, p1, Lcom/android/systemui/privacy/PrivacyConfig;->micCameraAvailable:Z

    iput-boolean p2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mMicCameraIndicatorFlagEnabled:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p1, Lcom/android/systemui/privacy/PrivacyConfig;->locationAvailable:Z

    if-eqz p2, :cond_1

    iget-boolean p1, p1, Lcom/android/systemui/privacy/PrivacyConfig;->mediaProjectionAvailable:Z

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAllIndicatorsEnabled:Z

    return-void
.end method

.method public static listContainsPrivacyType(Ljava/util/List;Lcom/android/systemui/privacy/PrivacyType;)Z
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/privacy/PrivacyItem;

    iget-object v0, v0, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final animateIconAlphaTo(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIconsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$2;-><init>(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIconsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAnimator:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAnimationDurationMs:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final createAndShowIndicator()V
    .locals 9

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mViewAndWindowAdded:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->removeIndicatorView()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e02b6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$1;-><init>(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mChipDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    iput-object p0, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mListener:Lcom/android/systemui/privacy/television/PrivacyChipDrawable$PrivacyChipDrawableListener;

    iget-boolean v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIsRtl:Z

    iput-boolean v1, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsRtl:Z

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/ViewGroup;

    const v1, 0x7f0b0182

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mChipDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/ViewGroup;

    const v1, 0x7f0b0307

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIconsContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->updateIcons()V

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/ViewGroup;

    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x7d6

    const/16 v6, 0x8

    const/4 v7, -0x3

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget-boolean v2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIsRtl:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    :goto_0
    or-int/lit8 v2, v2, 0x30

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v2, "MicrophoneCaptureIndicator"

    invoke-virtual {v8, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v8, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v8}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final fadeOutIndicator()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mCollapseRunnable:Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mViewAndWindowAdded:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->animateIconAlphaTo(F)V

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->removeIndicatorView()V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mChipDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->updateIcons(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final makeAccessibilityAnnouncement()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mItemsBeforeLastAnnouncement:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    invoke-static {v0, v1}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->listContainsPrivacyType(Ljava/util/List;Lcom/android/systemui/privacy/PrivacyType;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->listContainsPrivacyType(Ljava/util/List;Lcom/android/systemui/privacy/PrivacyType;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mItemsBeforeLastAnnouncement:Ljava/util/LinkedList;

    sget-object v3, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    invoke-static {v2, v3}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->listContainsPrivacyType(Ljava/util/List;Lcom/android/systemui/privacy/PrivacyType;)Z

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    invoke-static {v4, v3}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->listContainsPrivacyType(Ljava/util/List;Lcom/android/systemui/privacy/PrivacyType;)Z

    move-result v3

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    const v0, 0x7f13047e

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    const v0, 0x7f13047f

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    const v0, 0x7f1301db

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    const v0, 0x7f1301da

    goto :goto_0

    :cond_4
    move v0, v4

    :goto_0
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    move v0, v4

    :cond_5
    if-eqz v2, :cond_6

    if-nez v3, :cond_6

    const v0, 0x7f130481

    goto :goto_1

    :cond_6
    if-nez v2, :cond_7

    if-eqz v3, :cond_7

    const v0, 0x7f130480

    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mItemsBeforeLastAnnouncement:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mItemsBeforeLastAnnouncement:Ljava/util/LinkedList;

    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIsRtl:Z

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIsRtl:Z

    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->updateStaticPrivacyIndicatorBounds()V

    iget p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/ViewGroup;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->fadeOutIndicator()V

    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->createAndShowIndicator()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onFadeOutFinished()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->removeIndicatorView()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    :cond_0
    return-void
.end method

.method public final onFlagMicCameraChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mMicCameraIndicatorFlagEnabled:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAllIndicatorsEnabled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->fadeOutIndicator()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->updateChip()V

    :goto_1
    return-void
.end method

.method public final onPrivacyItemsChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    iget-boolean p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mMicCameraIndicatorFlagEnabled:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAllIndicatorsEnabled:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->fadeOutIndicator()V

    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->postAccessibilityAnnouncement()V

    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->updateChip()V

    return-void
.end method

.method public final postAccessibilityAnnouncement()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAccessibilityRunnable:Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->makeAccessibilityAnnouncement()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mUiThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAccessibilityRunnable:Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda4;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public final removeIndicatorView()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mChipDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    if-eqz v1, :cond_1

    iput-object v0, v1, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mListener:Lcom/android/systemui/privacy/television/PrivacyChipDrawable$PrivacyChipDrawableListener;

    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mChipDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mViewAndWindowAdded:Z

    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    return-void
.end method

.method public final updateChip()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->fadeOutIndicator()V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->updateIcons()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->animateIconAlphaTo(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->updateIcons()V

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mCollapseRunnable:Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mUiThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mCollapseRunnable:Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda3;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->createAndShowIndicator()V

    :goto_0
    return-void
.end method

.method public final updateIcons()V
    .locals 6

    new-instance v0, Lcom/android/systemui/privacy/PrivacyChipBuilder;

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/privacy/PrivacyChipBuilder;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyChipBuilder;->generateIcons()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIconsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    const v5, 0x7f06035d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIconsContainer:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIconSize:I

    invoke-virtual {v2, v3, v4, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIconMarginStart:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mChipDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->updateIcons(I)V

    :cond_2
    return-void
.end method

.method public final updateStaticPrivacyIndicatorBounds()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070688

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070684

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070687

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    const-class v4, Landroid/view/WindowManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mBounds:[Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    iget-boolean v6, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIsRtl:Z

    if-eqz v6, :cond_0

    iget v7, v3, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    sub-int/2addr v7, v1

    :goto_0
    iget v8, v3, Landroid/graphics/Rect;->top:I

    if-eqz v6, :cond_1

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    goto :goto_1

    :cond_1
    iget v3, v3, Landroid/graphics/Rect;->right:I

    :goto_1
    add-int/2addr v0, v8

    add-int/2addr v0, v2

    invoke-direct {v5, v7, v8, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x0

    aput-object v5, v4, v0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mBounds:[Landroid/graphics/Rect;

    invoke-interface {v0, v1, p0}, Landroid/view/IWindowManager;->updateStaticPrivacyIndicatorBounds(I[Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "TvOngoingPrivacyChip"

    const-string v0, "could not update privacy indicator bounds"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
