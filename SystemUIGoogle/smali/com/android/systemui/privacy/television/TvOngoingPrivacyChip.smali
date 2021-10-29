.class public Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;
.super Lcom/android/systemui/SystemUI;
.source "TvOngoingPrivacyChip.java"

# interfaces
.implements Lcom/android/systemui/privacy/PrivacyItemController$Callback;
.implements Lcom/android/systemui/privacy/television/PrivacyChipDrawable$PrivacyChipDrawableListener;


# instance fields
.field private final mAccessibilityRunnable:Ljava/lang/Runnable;

.field private mAllIndicatorsEnabled:Z

.field public final mAnimationDurationMs:I

.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mChipDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

.field private final mCollapseRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mIconMarginStart:I

.field private final mIconSize:I

.field private mIconsContainer:Landroid/widget/LinearLayout;

.field private mIndicatorView:Landroid/view/ViewGroup;

.field private final mItemsBeforeLastAnnouncement:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMicCameraIndicatorFlagEnabled:Z

.field private final mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

.field private mPrivacyItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private final mUiThreadHandler:Landroid/os/Handler;

.field private mViewAndWindowAdded:Z


# direct methods
.method public static synthetic $r8$lambda$FVVf4OWon75NpMFVwiM2ikuaDzo(Lcom/android/systemui/privacy/PrivacyItem;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->lambda$onPrivacyItemsChanged$0(Lcom/android/systemui/privacy/PrivacyItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$l83IDWsNpezgIA-yLjyvKglRFEw(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->makeAccessibilityAnnouncement()V

    return-void
.end method

.method public static synthetic $r8$lambda$rYshB-eBnuQSp72_uvv2UFsVkks(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->collapseChip()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/privacy/PrivacyItemController;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)V

    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mCollapseRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)V

    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAccessibilityRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mItemsBeforeLastAnnouncement:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    iput-object p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->privacy_chip_icon_margin_in_between:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIconMarginStart:I

    sget v0, Lcom/android/systemui/R$dimen;->privacy_chip_icon_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIconSize:I

    sget v0, Lcom/android/systemui/R$integer;->privacy_chip_animation_millis:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAnimationDurationMs:I

    invoke-virtual {p2}, Lcom/android/systemui/privacy/PrivacyItemController;->getMicCameraAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mMicCameraIndicatorFlagEnabled:Z

    invoke-virtual {p2}, Lcom/android/systemui/privacy/PrivacyItemController;->getAllIndicatorsAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAllIndicatorsEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mViewAndWindowAdded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->postAccessibilityAnnouncement()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->animateIconAppearance()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)Lcom/android/systemui/privacy/television/PrivacyChipDrawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mChipDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->onIconAnimationFinished()V

    return-void
.end method

.method private animateIconAlphaTo(F)V
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

.method private animateIconAppearance()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->animateIconAlphaTo(F)V

    return-void
.end method

.method private animateIconDisappearance()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->animateIconAlphaTo(F)V

    return-void
.end method

.method private collapseChip()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mChipDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->collapse()V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->animateIconDisappearance()V

    return-void
.end method

.method private collapseLater()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mUiThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mCollapseRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private createAndShowIndicator()V
    .locals 9

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mViewAndWindowAdded:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->removeIndicatorView()V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->tv_ongoing_privacy_chip:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$1;-><init>(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mChipDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    invoke-virtual {v1, p0}, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->setListener(Lcom/android/systemui/privacy/television/PrivacyChipDrawable$PrivacyChipDrawableListener;)V

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mChipDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    invoke-virtual {v1, v0}, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->setRtl(Z)V

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->chip_drawable:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mChipDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->icons_container:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIconsContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->updateIcons()V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x7d6

    const/16 v7, 0x8

    const/4 v8, -0x3

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    const/4 v0, 0x5

    :goto_1
    or-int/lit8 v0, v0, 0x30

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v0, "MicrophoneCaptureIndicator"

    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/ViewGroup;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private fadeOutIndicator()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mViewAndWindowAdded:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->animateIconDisappearance()V

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->removeIndicatorView()V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mChipDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->updateIcons(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private isChipDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mMicCameraIndicatorFlagEnabled:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAllIndicatorsEnabled:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onPrivacyItemsChanged$0(Lcom/android/systemui/privacy/PrivacyItem;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItem;->getPrivacyType()Lcom/android/systemui/privacy/PrivacyType;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private listContainsPrivacyType(Ljava/util/List;Lcom/android/systemui/privacy/PrivacyType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;",
            "Lcom/android/systemui/privacy/PrivacyType;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/privacy/PrivacyItem;

    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyItem;->getPrivacyType()Lcom/android/systemui/privacy/PrivacyType;

    move-result-object p1

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private makeAccessibilityAnnouncement()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mItemsBeforeLastAnnouncement:Ljava/util/List;

    sget-object v1, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->listContainsPrivacyType(Ljava/util/List;Lcom/android/systemui/privacy/PrivacyType;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->listContainsPrivacyType(Ljava/util/List;Lcom/android/systemui/privacy/PrivacyType;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mItemsBeforeLastAnnouncement:Ljava/util/List;

    sget-object v3, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->listContainsPrivacyType(Ljava/util/List;Lcom/android/systemui/privacy/PrivacyType;)Z

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->listContainsPrivacyType(Ljava/util/List;Lcom/android/systemui/privacy/PrivacyType;)Z

    move-result v3

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    sget v0, Lcom/android/systemui/R$string;->mic_and_camera_recording_announcement:I

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    sget v0, Lcom/android/systemui/R$string;->mic_camera_stopped_recording_announcement:I

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    sget v0, Lcom/android/systemui/R$string;->camera_stopped_recording_announcement:I

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    sget v0, Lcom/android/systemui/R$string;->camera_recording_announcement:I

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

    sget v0, Lcom/android/systemui/R$string;->mic_stopped_recording_announcement:I

    goto :goto_1

    :cond_6
    if-nez v2, :cond_7

    if-eqz v3, :cond_7

    sget v0, Lcom/android/systemui/R$string;->mic_recording_announcement:I

    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mItemsBeforeLastAnnouncement:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mItemsBeforeLastAnnouncement:Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private onIconAnimationFinished()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->collapseLater()V

    :cond_1
    iget v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    if-ne v0, v2, :cond_2

    iput v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->removeIndicatorView()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    :cond_3
    :goto_0
    return-void
.end method

.method private postAccessibilityAnnouncement()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAccessibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->makeAccessibilityAnnouncement()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mUiThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAccessibilityRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private removeIndicatorView()V
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

    invoke-virtual {v1, v0}, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->setListener(Lcom/android/systemui/privacy/television/PrivacyChipDrawable$PrivacyChipDrawableListener;)V

    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mChipDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mViewAndWindowAdded:Z

    return-void
.end method

.method private updateChip()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->fadeOutIndicator()V

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

    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->updateIcons()V

    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->animateIconAppearance()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->updateIcons()V

    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->collapseLater()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->createAndShowIndicator()V

    :goto_0
    return-void
.end method

.method private updateChipOnFlagChanged()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->isChipDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->fadeOutIndicator()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->updateChip()V

    :goto_0
    return-void
.end method

.method private updateIcons()V
    .locals 6

    new-instance v0, Lcom/android/systemui/privacy/PrivacyChipBuilder;

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/privacy/PrivacyChipBuilder;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyChipBuilder;->generateIcons()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIconsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$color;->privacy_icon_tint:I

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

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->updateIcons(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onFadeOutFinished()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->removeIndicatorView()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    :cond_0
    return-void
.end method

.method public onFlagMicCameraChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mMicCameraIndicatorFlagEnabled:Z

    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->updateChipOnFlagChanged()V

    return-void
.end method

.method public onPrivacyItemsChanged(Ljava/util/List;)V
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

    sget-object p1, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$$ExternalSyntheticLambda2;

    invoke-interface {v0, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->isChipDisabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->fadeOutIndicator()V

    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->postAccessibilityAnnouncement()V

    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->updateChip()V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    return-void
.end method
