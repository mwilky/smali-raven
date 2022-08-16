.class public final Lcom/android/systemui/media/MediaControlPanel;
.super Ljava/lang/Object;
.source "MediaControlPanel.java"


# static fields
.field public static final SEMANTIC_ACTIONS_ALL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEMANTIC_ACTIONS_COMPACT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEMANTIC_ACTIONS_HIDE_WHEN_SCRUBBING:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SETTINGS_INTENT:Landroid/content/Intent;


# instance fields
.field public final mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public mArtworkBoundId:I

.field public mArtworkNextBindRequestId:I

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public mColorSchemeTransition:Lcom/android/systemui/media/ColorSchemeTransition;

.field public mContext:Landroid/content/Context;

.field public mController:Landroid/media/session/MediaController;

.field public final mEnabledChangeListener:Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda5;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public mInstanceId:Lcom/android/internal/logging/InstanceId;

.field public mIsArtworkBound:Z

.field public mIsImpressed:Z

.field public mIsScrubbing:Z

.field public mIsSeekBarEnabled:Z

.field public mKey:Ljava/lang/String;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public mLogger:Lcom/android/systemui/media/MediaUiEventLogger;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public mMediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

.field public mMediaData:Lcom/android/systemui/media/MediaData;

.field public mMediaDataManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

.field public mMediaViewController:Lcom/android/systemui/media/MediaViewController;

.field public mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

.field public mMetadataAnimationHandler:Lcom/android/systemui/media/MetadataAnimationHandler;

.field public mPackageName:Ljava/lang/String;

.field public mPrevArtwork:Landroid/graphics/drawable/Drawable;

.field public mRecommendationData:Lcom/android/systemui/media/SmartspaceMediaData;

.field public mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

.field public final mScrubbingChangeListener:Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;

.field public mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

.field public final mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

.field public mSmartspaceId:I

.field public mSmartspaceMediaItemsCount:I

.field public mSystemClock:Lcom/android/systemui/util/time/SystemClock;

.field public mToken:Landroid/media/session/MediaSession$Token;

.field public mUid:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_MEDIA_CONTROLS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/media/MediaControlPanel;->SETTINGS_INTENT:Landroid/content/Intent;

    const v0, 0x7f0b0050

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0b0051

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b004f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/media/MediaControlPanel;->SEMANTIC_ACTIONS_COMPACT:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/media/MediaControlPanel;->SEMANTIC_ACTIONS_HIDE_WHEN_SCRUBBING:Ljava/util/List;

    const v3, 0x7f0b0049

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0b004a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/MediaControlPanel;->SEMANTIC_ACTIONS_ALL:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/media/MediaViewController;Lcom/android/systemui/media/SeekBarViewModel;Ldagger/Lazy;Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;Lcom/android/systemui/media/MediaCarouselController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/media/MediaUiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/ActivityIntentHelper;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/broadcast/BroadcastSender;",
            "Lcom/android/systemui/media/MediaViewController;",
            "Lcom/android/systemui/media/SeekBarViewModel;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;",
            "Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;",
            "Lcom/android/systemui/media/MediaCarouselController;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Lcom/android/systemui/media/MediaUiEventLogger;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/ActivityIntentHelper;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/systemui/media/MediaControlPanel;->mPrevArtwork:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/systemui/media/MediaControlPanel;->mIsArtworkBound:Z

    iput v3, v0, Lcom/android/systemui/media/MediaControlPanel;->mArtworkBoundId:I

    iput v3, v0, Lcom/android/systemui/media/MediaControlPanel;->mArtworkNextBindRequestId:I

    iput-boolean v3, v0, Lcom/android/systemui/media/MediaControlPanel;->mIsImpressed:Z

    iput v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mSmartspaceId:I

    iput-boolean v3, v0, Lcom/android/systemui/media/MediaControlPanel;->mIsScrubbing:Z

    iput-boolean v3, v0, Lcom/android/systemui/media/MediaControlPanel;->mIsSeekBarEnabled:Z

    new-instance v2, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mScrubbingChangeListener:Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;

    new-instance v2, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mEnabledChangeListener:Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda5;

    move-object v2, p1

    iput-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    move-object v2, p2

    iput-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    move-object v2, p3

    iput-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mMainExecutor:Ljava/util/concurrent/Executor;

    move-object v2, p4

    iput-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object v2, p5

    iput-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    iput-object v1, v0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    move-object v2, p6

    iput-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    move-object v2, p8

    iput-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mMediaDataManagerLazy:Ldagger/Lazy;

    move-object v2, p9

    iput-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    move-object v2, p10

    iput-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mMediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    move-object v2, p11

    iput-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mLogger:Lcom/android/systemui/media/MediaUiEventLogger;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    new-instance v2, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    iput-object v2, v1, Lcom/android/systemui/media/SeekBarViewModel;->logSeek:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static scaleTransitionDrawableLayer(Landroid/graphics/drawable/TransitionDrawable;III)V
    .locals 4

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v2, v1, v0

    int-to-float p2, p2

    int-to-float p3, p3

    div-float v3, p2, p3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    div-float/2addr p3, v0

    goto :goto_0

    :cond_2
    div-float p3, p2, v1

    :goto_0
    mul-float/2addr v1, p3

    float-to-int p2, v1

    mul-float/2addr p3, v0

    float-to-int p3, p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/drawable/TransitionDrawable;->setLayerSize(III)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZI)V

    return-void
.end method

.method public static setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZI)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    if-eqz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object p0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    return-void
.end method


# virtual methods
.method public final attachPlayer(Lcom/android/systemui/media/MediaViewHolder;)V
    .locals 7

    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v0, p1, Lcom/android/systemui/media/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    new-instance v1, Lcom/android/systemui/media/SeekBarObserver;

    invoke-direct {v1, p1}, Lcom/android/systemui/media/SeekBarObserver;-><init>(Lcom/android/systemui/media/MediaViewHolder;)V

    iput-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    iget-object v2, v2, Lcom/android/systemui/media/SeekBarViewModel;->_progress:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    iget-object v2, p1, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/media/SeekBarViewModel$SeekBarChangeListener;

    invoke-direct {v3, v1}, Lcom/android/systemui/media/SeekBarViewModel$SeekBarChangeListener;-><init>(Lcom/android/systemui/media/SeekBarViewModel;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v3, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;

    invoke-direct {v3, v1, v2}, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;-><init>(Lcom/android/systemui/media/SeekBarViewModel;Landroid/widget/SeekBar;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mScrubbingChangeListener:Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;

    iput-object v2, v1, Lcom/android/systemui/media/SeekBarViewModel;->scrubbingChangeListener:Lcom/android/systemui/media/SeekBarViewModel$ScrubbingChangeListener;

    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mEnabledChangeListener:Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda5;

    iput-object v2, v1, Lcom/android/systemui/media/SeekBarViewModel;->enabledChangeListener:Lcom/android/systemui/media/SeekBarViewModel$EnabledChangeListener;

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    sget-object v2, Lcom/android/systemui/media/MediaViewController$TYPE;->PLAYER:Lcom/android/systemui/media/MediaViewController$TYPE;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/media/MediaViewController;->attach(Lcom/android/systemui/util/animation/TransitionLayout;Lcom/android/systemui/media/MediaViewController$TYPE;)V

    iget-object p1, p1, Lcom/android/systemui/media/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    new-instance v0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object p1, p1, Lcom/android/systemui/media/MediaViewHolder;->albumView:Landroid/widget/ImageView;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v1, p1, Lcom/android/systemui/media/MediaViewHolder;->titleText:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/android/systemui/media/MediaViewHolder;->artistText:Landroid/widget/TextView;

    sget-object v2, Lcom/android/systemui/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/PathInterpolator;

    new-array v3, v0, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v5, 0x1

    aput-object p1, v3, v5

    const v6, 0x7f010238

    invoke-virtual {p0, v6, v2, v3}, Lcom/android/systemui/media/MediaControlPanel;->loadAnimator(ILandroid/view/animation/Interpolator;[Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/animation/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/PathInterpolator;

    new-array v0, v0, [Landroid/view/View;

    aput-object v1, v0, v4

    aput-object p1, v0, v5

    const p1, 0x7f010239

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/systemui/media/MediaControlPanel;->loadAnimator(ILandroid/view/animation/Interpolator;[Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/ColorSchemeTransition;

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/media/ColorSchemeTransition;-><init>(Landroid/content/Context;Lcom/android/systemui/media/MediaViewHolder;)V

    iput-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mColorSchemeTransition:Lcom/android/systemui/media/ColorSchemeTransition;

    new-instance v0, Lcom/android/systemui/media/MetadataAnimationHandler;

    invoke-direct {v0, p1, v2}, Lcom/android/systemui/media/MetadataAnimationHandler;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V

    iput-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMetadataAnimationHandler:Lcom/android/systemui/media/MetadataAnimationHandler;

    return-void
.end method

.method public final bindButtonCommon(Landroid/widget/ImageButton;Lcom/android/systemui/media/MediaAction;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v5, p2, Lcom/android/systemui/media/MediaAction;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p2, Lcom/android/systemui/media/MediaAction;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, p2, Lcom/android/systemui/media/MediaAction;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p2, Lcom/android/systemui/media/MediaAction;->action:Ljava/lang/Runnable;

    if-nez v4, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    new-instance p2, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda23;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda23;-><init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/widget/ImageButton;Ljava/lang/Runnable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final bindGutsMenuCommon(ZLjava/lang/String;Lcom/android/systemui/media/GutsViewHolder;Ljava/lang/Runnable;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f130242

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f13023c

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object v2, p3, Lcom/android/systemui/media/GutsViewHolder;->gutsText:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p3, Lcom/android/systemui/media/GutsViewHolder;->dismissText:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p3, Lcom/android/systemui/media/GutsViewHolder;->dismiss:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object p2, p3, Lcom/android/systemui/media/GutsViewHolder;->dismiss:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p4}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/media/MediaControlPanel;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p3, Lcom/android/systemui/media/GutsViewHolder;->cancelText:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object p4, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f0807bc

    invoke-virtual {p4, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    iget-object p4, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f0807c2

    invoke-virtual {p4, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object p2, p3, Lcom/android/systemui/media/GutsViewHolder;->cancel:Landroid/view/View;

    new-instance p4, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda13;

    invoke-direct {p4, v1, p0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda13;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p2, p3, Lcom/android/systemui/media/GutsViewHolder;->isDismissible:Z

    if-ne p2, p1, :cond_3

    goto :goto_3

    :cond_3
    iput-boolean p1, p3, Lcom/android/systemui/media/GutsViewHolder;->isDismissible:Z

    iget-object p1, p3, Lcom/android/systemui/media/GutsViewHolder;->colorScheme:Lcom/android/systemui/monet/ColorScheme;

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    iput-object p1, p3, Lcom/android/systemui/media/GutsViewHolder;->colorScheme:Lcom/android/systemui/monet/ColorScheme;

    invoke-static {p1}, Landroidx/cardview/widget/CardViewApi21Impl;->surfaceFromScheme(Lcom/android/systemui/monet/ColorScheme;)I

    move-result p2

    iget-object p4, p3, Lcom/android/systemui/media/GutsViewHolder;->dismissText:Landroid/widget/TextView;

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean p4, p3, Lcom/android/systemui/media/GutsViewHolder;->isDismissible:Z

    if-nez p4, :cond_5

    iget-object p4, p3, Lcom/android/systemui/media/GutsViewHolder;->cancelText:Landroid/widget/TextView;

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    iget-object p2, p1, Lcom/android/systemui/monet/ColorScheme;->neutral1:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iget-object p4, p3, Lcom/android/systemui/media/GutsViewHolder;->gutsText:Landroid/widget/TextView;

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-boolean p4, p3, Lcom/android/systemui/media/GutsViewHolder;->isDismissible:Z

    if-eqz p4, :cond_6

    iget-object p4, p3, Lcom/android/systemui/media/GutsViewHolder;->cancelText:Landroid/widget/TextView;

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_6
    iget-object p1, p1, Lcom/android/systemui/monet/ColorScheme;->accent1:Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object p2, p3, Lcom/android/systemui/media/GutsViewHolder;->settings:Landroid/widget/ImageButton;

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object p2, p3, Lcom/android/systemui/media/GutsViewHolder;->cancelText:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p2, p3, Lcom/android/systemui/media/GutsViewHolder;->dismissText:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_3
    iget-object p1, p3, Lcom/android/systemui/media/GutsViewHolder;->settings:Landroid/widget/ImageButton;

    new-instance p2, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda14;

    invoke-direct {p2, v1, p0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda14;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final bindPlayer(Lcom/android/systemui/media/MediaData;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v9, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    iget-object v0, v9, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaControlPanel#bindPlayer<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ">"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iput-object v7, v9, Lcom/android/systemui/media/MediaControlPanel;->mKey:Ljava/lang/String;

    iput-object v6, v9, Lcom/android/systemui/media/MediaControlPanel;->mMediaData:Lcom/android/systemui/media/MediaData;

    iget-object v0, v6, Lcom/android/systemui/media/MediaData;->token:Landroid/media/session/MediaSession$Token;

    iget-object v1, v6, Lcom/android/systemui/media/MediaData;->packageName:Ljava/lang/String;

    iput-object v1, v9, Lcom/android/systemui/media/MediaControlPanel;->mPackageName:Ljava/lang/String;

    iget v1, v6, Lcom/android/systemui/media/MediaData;->appUid:I

    iput v1, v9, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    iget v2, v9, Lcom/android/systemui/media/MediaControlPanel;->mSmartspaceId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget-object v2, v9, Lcom/android/systemui/media/MediaControlPanel;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v1, v2

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->floorMod(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v9, Lcom/android/systemui/media/MediaControlPanel;->mSmartspaceId:I

    :cond_1
    iget-object v1, v6, Lcom/android/systemui/media/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iput-object v1, v9, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v1, v9, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iput-object v0, v9, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    :cond_3
    iget-object v0, v9, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/media/session/MediaController;

    iget-object v1, v9, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    iget-object v2, v9, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    invoke-direct {v0, v1, v2}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object v0, v9, Lcom/android/systemui/media/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    iput-object v0, v9, Lcom/android/systemui/media/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    :goto_0
    iget-object v0, v6, Lcom/android/systemui/media/MediaData;->clickIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_5

    iget-object v1, v9, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v1, v1, Lcom/android/systemui/media/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    new-instance v2, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda7;

    invoke-direct {v2, v9, v0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v0, v9, Lcom/android/systemui/media/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    iget-object v1, v9, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda8;

    invoke-direct {v2, v9, v0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/media/session/MediaController;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v9, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/MediaViewHolder;->seamless:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, v9, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v2, v1, Lcom/android/systemui/media/MediaViewHolder;->seamlessIcon:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/android/systemui/media/MediaViewHolder;->seamlessText:Landroid/widget/TextView;

    iget-object v4, v6, Lcom/android/systemui/media/MediaData;->device:Lcom/android/systemui/media/MediaDeviceData;

    const/4 v11, 0x1

    if-eqz v4, :cond_6

    iget-boolean v5, v4, Lcom/android/systemui/media/MediaDeviceData;->enabled:Z

    if-eqz v5, :cond_7

    :cond_6
    iget-boolean v5, v6, Lcom/android/systemui/media/MediaData;->resumption:Z

    if-eqz v5, :cond_8

    :cond_7
    move v5, v11

    goto :goto_1

    :cond_8
    move v5, v10

    :goto_1
    if-eqz v5, :cond_9

    const v12, 0x3ec28f5c    # 0.38f

    goto :goto_2

    :cond_9
    const/high16 v12, 0x3f800000    # 1.0f

    :goto_2
    iget-object v1, v1, Lcom/android/systemui/media/MediaViewHolder;->seamlessButton:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->setAlpha(F)V

    xor-int/lit8 v1, v5, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v1, v9, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    const v5, 0x7f130474

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v4, :cond_b

    iget-object v1, v4, Lcom/android/systemui/media/MediaDeviceData;->icon:Landroid/graphics/drawable/Drawable;

    instance-of v5, v1, Lcom/android/settingslib/widget/AdaptiveIcon;

    if-eqz v5, :cond_a

    check-cast v1, Lcom/android/settingslib/widget/AdaptiveIcon;

    iget-object v5, v9, Lcom/android/systemui/media/MediaControlPanel;->mColorSchemeTransition:Lcom/android/systemui/media/ColorSchemeTransition;

    iget v5, v5, Lcom/android/systemui/media/ColorSchemeTransition;->bgColor:I

    invoke-virtual {v1, v5}, Lcom/android/settingslib/widget/AdaptiveIcon;->setBackgroundColor(I)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_a
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    iget-object v1, v4, Lcom/android/systemui/media/MediaDeviceData;->name:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_b
    const v5, 0x7f080584

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda17;

    invoke-direct {v1, v10, v9, v4}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda17;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda0;

    invoke-direct {v0, v11, v9, v6}, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v1, v6, Lcom/android/systemui/media/MediaData;->isClearable:Z

    iget-object v2, v6, Lcom/android/systemui/media/MediaData;->app:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v3, v3, Lcom/android/systemui/media/MediaViewHolder;->gutsViewHolder:Lcom/android/systemui/media/GutsViewHolder;

    invoke-virtual {v9, v1, v2, v3, v0}, Lcom/android/systemui/media/MediaControlPanel;->bindGutsMenuCommon(ZLjava/lang/String;Lcom/android/systemui/media/GutsViewHolder;Ljava/lang/Runnable;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/media/MediaControlPanel;->bindPlayerContentDescription(Lcom/android/systemui/media/MediaData;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/media/MediaControlPanel;->bindScrubbingTime(Lcom/android/systemui/media/MediaData;)V

    iget-object v12, v6, Lcom/android/systemui/media/MediaData;->semanticActions:Lcom/android/systemui/media/MediaButton;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/android/systemui/media/MediaViewHolder;->genericButtonIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v9, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    invoke-virtual {v2, v1}, Lcom/android/systemui/media/MediaViewHolder;->getAction(I)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    iget-object v0, v9, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    iget-object v14, v0, Lcom/android/systemui/media/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v15, v0, Lcom/android/systemui/media/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v12, :cond_10

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v2

    invoke-static {v15, v2, v10}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    invoke-static {v14, v1, v10}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    goto :goto_6

    :cond_d
    sget-object v0, Lcom/android/systemui/media/MediaControlPanel;->SEMANTIC_ACTIONS_ALL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v9, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    invoke-virtual {v1, v0}, Lcom/android/systemui/media/MediaViewHolder;->getAction(I)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v12, v0}, Lcom/android/systemui/media/MediaButton;->getActionById(I)Lcom/android/systemui/media/MediaAction;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/systemui/media/AnimationBindHandler;

    invoke-direct {v0}, Lcom/android/systemui/media/AnimationBindHandler;-><init>()V

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    goto :goto_8

    :cond_e
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/AnimationBindHandler;

    :goto_8
    move-object v14, v0

    new-instance v15, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda18;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v4, v14

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda18;-><init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/widget/ImageButton;Lcom/android/systemui/media/MediaAction;Lcom/android/systemui/media/AnimationBindHandler;Lcom/android/systemui/media/MediaButton;)V

    invoke-virtual {v14}, Lcom/android/systemui/media/AnimationBindHandler;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v14, Lcom/android/systemui/media/AnimationBindHandler;->onAnimationsComplete:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    invoke-virtual {v15}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda18;->invoke()Ljava/lang/Object;

    goto :goto_7

    :cond_10
    sget-object v0, Lcom/android/systemui/media/MediaControlPanel;->SEMANTIC_ACTIONS_COMPACT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v15, v1, v10}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    invoke-static {v14, v1, v10}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    goto :goto_9

    :cond_11
    iget-object v12, v6, Lcom/android/systemui/media/MediaData;->actionsToShowInCompact:Ljava/util/List;

    iget-object v5, v6, Lcom/android/systemui/media/MediaData;->actions:Ljava/util/List;

    move v4, v10

    :goto_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_12

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageButton;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/media/MediaAction;

    move-object/from16 v0, p0

    move-object v3, v15

    move/from16 v17, v4

    move-object v4, v14

    move-object/from16 v18, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/media/MediaControlPanel;->setGenericButton(Landroid/widget/ImageButton;Lcom/android/systemui/media/MediaAction;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;Z)V

    add-int/lit8 v4, v17, 0x1

    move-object/from16 v5, v18

    goto :goto_a

    :cond_12
    move/from16 v17, v4

    move/from16 v12, v17

    :goto_b
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_13

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageButton;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v3, v15

    move-object v4, v14

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/media/MediaControlPanel;->setGenericButton(Landroid/widget/ImageButton;Lcom/android/systemui/media/MediaAction;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;Z)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaControlPanel;->updateSeekBarVisibility()V

    iget-object v0, v9, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v1, v0, Lcom/android/systemui/media/MediaViewHolder;->titleText:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/android/systemui/media/MediaViewHolder;->artistText:Landroid/widget/TextView;

    iget-object v2, v9, Lcom/android/systemui/media/MediaControlPanel;->mMetadataAnimationHandler:Lcom/android/systemui/media/MetadataAnimationHandler;

    iget-object v3, v6, Lcom/android/systemui/media/MediaData;->song:Ljava/lang/CharSequence;

    iget-object v4, v6, Lcom/android/systemui/media/MediaData;->artist:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda9;

    invoke-direct {v4, v9, v1, v6, v0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/widget/TextView;Lcom/android/systemui/media/MediaData;Landroid/widget/TextView;)V

    new-instance v0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda10;

    invoke-direct {v0, v9}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    iget-object v1, v2, Lcom/android/systemui/media/MetadataAnimationHandler;->targetData:Ljava/lang/Object;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iput-object v3, v2, Lcom/android/systemui/media/MetadataAnimationHandler;->targetData:Ljava/lang/Object;

    iput-object v4, v2, Lcom/android/systemui/media/MetadataAnimationHandler;->postExitUpdate:Lkotlin/jvm/functions/Function0;

    iput-object v0, v2, Lcom/android/systemui/media/MetadataAnimationHandler;->postEnterUpdate:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2}, Lcom/android/systemui/media/MetadataAnimationHandler;->isRunning()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, v2, Lcom/android/systemui/media/MetadataAnimationHandler;->exitAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_c

    :cond_14
    move v11, v10

    :cond_15
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->hashCode()I

    move-result v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaControlPanel#bindArtworkAndColors<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v12}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    iget v5, v9, Lcom/android/systemui/media/MediaControlPanel;->mArtworkNextBindRequestId:I

    add-int/lit8 v0, v5, 0x1

    iput v0, v9, Lcom/android/systemui/media/MediaControlPanel;->mArtworkNextBindRequestId:I

    if-eqz v11, :cond_16

    iput-boolean v10, v9, Lcom/android/systemui/media/MediaControlPanel;->mIsArtworkBound:Z

    :cond_16
    iget-object v0, v9, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/MediaViewHolder;->albumView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    iget-object v0, v9, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/MediaViewHolder;->albumView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    iget-object v10, v9, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v13, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda15;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v6, v7

    move v7, v12

    move v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/media/MediaControlPanel;Lcom/android/systemui/media/MediaData;IIILjava/lang/String;IZ)V

    invoke-interface {v10, v13}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v9, Lcom/android/systemui/media/MediaControlPanel;->mMetadataAnimationHandler:Lcom/android/systemui/media/MetadataAnimationHandler;

    invoke-virtual {v0}, Lcom/android/systemui/media/MetadataAnimationHandler;->isRunning()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v9, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaViewController;->refreshState()V

    :cond_17
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final bindPlayerContentDescription(Lcom/android/systemui/media/MediaData;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    iget-boolean v1, v1, Lcom/android/systemui/media/MediaViewController;->isGutsVisible:Z

    if-eqz v1, :cond_1

    iget-object p1, v0, Lcom/android/systemui/media/MediaViewHolder;->gutsViewHolder:Lcom/android/systemui/media/GutsViewHolder;

    iget-object p1, p1, Lcom/android/systemui/media/GutsViewHolder;->gutsText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f130244

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/systemui/media/MediaData;->song:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/android/systemui/media/MediaData;->artist:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object p1, p1, Lcom/android/systemui/media/MediaData;->app:Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object p0, p0, Lcom/android/systemui/media/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final bindRecommendation(Lcom/android/systemui/media/SmartspaceMediaData;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/SmartspaceMediaData;->isValid()Z

    move-result v2

    const-string v3, "MediaControlPanel"

    if-nez v2, :cond_1

    const-string v0, "Received an invalid recommendation list; returning"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v2, "MediaControlPanel#bindRecommendation<"

    invoke-static {v2}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/systemui/media/SmartspaceMediaData;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationData:Lcom/android/systemui/media/SmartspaceMediaData;

    iget-object v2, v1, Lcom/android/systemui/media/SmartspaceMediaData;->targetId:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    const/16 v4, 0x2000

    invoke-static {v2, v4}, Ljava/lang/Math;->floorMod(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mSmartspaceId:I

    iget-object v2, v1, Lcom/android/systemui/media/SmartspaceMediaData;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mPackageName:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/systemui/media/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iput-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, v1, Lcom/android/systemui/media/SmartspaceMediaData;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, v0, Lcom/android/systemui/media/MediaControlPanel;->mUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, v0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/android/systemui/media/SmartspaceMediaData;->getAppName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v0, "Fail to get media recommendation\'s app name"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_2
    iget-object v3, v0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    iget-object v3, v3, Lcom/android/systemui/media/RecommendationViewHolder;->cardIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda16;

    invoke-direct {v6, v5, v0, v2}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda16;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    iget-object v2, v2, Lcom/android/systemui/media/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    iget-object v3, v1, Lcom/android/systemui/media/SmartspaceMediaData;->cardAction:Landroid/app/smartspace/SmartspaceAction;

    const/4 v6, -0x1

    invoke-virtual {v0, v2, v3, v6}, Lcom/android/systemui/media/MediaControlPanel;->setSmartspaceRecItemOnClickListener(Landroid/view/ViewGroup;Landroid/app/smartspace/SmartspaceAction;I)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/media/MediaControlPanel;->bindRecommendationContentDescription(Lcom/android/systemui/media/SmartspaceMediaData;)V

    iget-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    iget-object v3, v2, Lcom/android/systemui/media/RecommendationViewHolder;->mediaCoverItems:Ljava/util/List;

    iget-object v2, v2, Lcom/android/systemui/media/RecommendationViewHolder;->mediaCoverContainers:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/SmartspaceMediaData;->getValidRecommendations()Ljava/util/ArrayList;

    move-result-object v6

    move v7, v5

    move v8, v7

    move v9, v8

    :goto_0
    const/4 v10, 0x3

    const/4 v11, 0x2

    if-ge v7, v10, :cond_5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/smartspace/SmartspaceAction;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    invoke-virtual {v0, v13, v10, v7}, Lcom/android/systemui/media/MediaControlPanel;->setSmartspaceRecItemOnClickListener(Landroid/view/ViewGroup;Landroid/app/smartspace/SmartspaceAction;I)V

    new-instance v14, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda0;

    invoke-direct {v14}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v10}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, ""

    const-string v15, "artist_name"

    invoke-virtual {v13, v15, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_3

    iget-object v13, v0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    const v15, 0x7f13024a

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v10}, Landroid/app/smartspace/SmartspaceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v16

    aput-object v16, v11, v5

    const/16 v16, 0x1

    aput-object v4, v11, v16

    invoke-virtual {v13, v15, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v15, v0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v10}, Landroid/app/smartspace/SmartspaceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v17

    aput-object v17, v11, v5

    const/16 v16, 0x1

    aput-object v13, v11, v16

    const/4 v13, 0x2

    aput-object v4, v11, v13

    const v13, 0x7f130249

    invoke-virtual {v15, v13, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v10}, Landroid/app/smartspace/SmartspaceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    or-int/2addr v8, v12

    iget-object v12, v0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    iget-object v12, v12, Lcom/android/systemui/media/RecommendationViewHolder;->mediaTitles:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_4

    invoke-virtual {v10}, Landroid/app/smartspace/SmartspaceAction;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v14

    :cond_4
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    or-int/2addr v9, v10

    iget-object v10, v0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    iget-object v10, v10, Lcom/android/systemui/media/RecommendationViewHolder;->mediaSubtitles:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_5
    iput v10, v0, Lcom/android/systemui/media/MediaControlPanel;->mSmartspaceMediaItemsCount:I

    iget-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    iget-object v2, v2, Lcom/android/systemui/media/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v3, v0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    iget-object v3, v3, Lcom/android/systemui/media/RecommendationViewHolder;->mediaTitles:Ljava/util/List;

    new-instance v5, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v2, v8}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/media/MediaControlPanel;Landroidx/constraintlayout/widget/ConstraintSet;Z)V

    invoke-interface {v3, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object v3, v0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    iget-object v3, v3, Lcom/android/systemui/media/RecommendationViewHolder;->mediaSubtitles:Ljava/util/List;

    new-instance v5, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0, v2, v9}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/MediaControlPanel;Landroidx/constraintlayout/widget/ConstraintSet;Z)V

    invoke-interface {v3, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    new-instance v2, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0, v1}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    iget-object v3, v3, Lcom/android/systemui/media/RecommendationViewHolder;->gutsViewHolder:Lcom/android/systemui/media/GutsViewHolder;

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/systemui/media/MediaControlPanel;->bindGutsMenuCommon(ZLjava/lang/String;Lcom/android/systemui/media/GutsViewHolder;Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/media/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    iget-object v1, v0, Lcom/android/systemui/media/MediaControlPanel;->mMetadataAnimationHandler:Lcom/android/systemui/media/MetadataAnimationHandler;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/systemui/media/MetadataAnimationHandler;->isRunning()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    iget-object v0, v0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaViewController;->refreshState()V

    :cond_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Fail to get media recommendation\'s app info"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final bindRecommendationContentDescription(Lcom/android/systemui/media/SmartspaceMediaData;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    iget-boolean v1, v1, Lcom/android/systemui/media/MediaViewController;->isGutsVisible:Z

    if-eqz v1, :cond_1

    iget-object p1, v0, Lcom/android/systemui/media/RecommendationViewHolder;->gutsViewHolder:Lcom/android/systemui/media/GutsViewHolder;

    iget-object p1, p1, Lcom/android/systemui/media/GutsViewHolder;->gutsText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f130248

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/SmartspaceMediaData;->getAppName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    iget-object p0, p0, Lcom/android/systemui/media/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final bindScrubbingTime(Lcom/android/systemui/media/MediaData;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    iget-object v1, v0, Lcom/android/systemui/media/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, v0, Lcom/android/systemui/media/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v2, v2, Lcom/android/systemui/media/MediaViewHolder;->scrubbingElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v3, v3, Lcom/android/systemui/media/MediaViewHolder;->scrubbingTotalTimeView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    iget-object p1, p1, Lcom/android/systemui/media/MediaData;->semanticActions:Lcom/android/systemui/media/MediaButton;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    sget-object v6, Lcom/android/systemui/media/MediaControlPanel;->SEMANTIC_ACTIONS_HIDE_WHEN_SCRUBBING:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda20;

    invoke-direct {v7, p1}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda20;-><init>(Lcom/android/systemui/media/MediaButton;)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v5

    :goto_0
    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mIsScrubbing:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    invoke-static {v1, v2, v4}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    const/16 p0, 0x8

    invoke-static {v1, v3, v4, p0}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZI)V

    invoke-static {v0, v2, v5}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    invoke-static {v0, v3, v5, p0}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZI)V

    return-void
.end method

.method public final buildLaunchAnimatorController(Lcom/android/systemui/util/animation/TransitionLayout;)Lcom/android/systemui/media/MediaControlPanel$1;
    .locals 1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string p1, "MediaControlPanel"

    const-string v0, "Skipping player animation as it is not attached to a ViewGroup"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/systemui/media/MediaControlPanel$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/media/MediaControlPanel$1;-><init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/view/View;)V

    return-object v0
.end method

.method public final closeGuts(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    const-string v1, "marquee while longPressText.getHandler() is null"

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/media/MediaViewHolder;->gutsViewHolder:Lcom/android/systemui/media/GutsViewHolder;

    iget-object v5, v0, Lcom/android/systemui/media/GutsViewHolder;->gutsText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v5, "MediaViewHolder"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/media/GutsViewHolder$marquee$1;

    invoke-direct {v1, v0, v4}, Lcom/android/systemui/media/GutsViewHolder$marquee$1;-><init>(Lcom/android/systemui/media/GutsViewHolder;Z)V

    invoke-virtual {v5, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/systemui/media/RecommendationViewHolder;->gutsViewHolder:Lcom/android/systemui/media/GutsViewHolder;

    iget-object v5, v0, Lcom/android/systemui/media/GutsViewHolder;->gutsText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v5, "RecommendationViewHolder"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/systemui/media/GutsViewHolder$marquee$1;

    invoke-direct {v1, v0, v4}, Lcom/android/systemui/media/GutsViewHolder$marquee$1;-><init>(Lcom/android/systemui/media/GutsViewHolder;Z)V

    invoke-virtual {v5, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    iget-boolean v1, v0, Lcom/android/systemui/media/MediaViewController;->isGutsVisible:Z

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iput-boolean v4, v0, Lcom/android/systemui/media/MediaViewController;->isGutsVisible:Z

    if-nez p1, :cond_5

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaViewController;->animateNextStateChange:Z

    iput-wide v2, v0, Lcom/android/systemui/media/MediaViewController;->animationDuration:J

    iput-wide v4, v0, Lcom/android/systemui/media/MediaViewController;->animationDelay:J

    :cond_5
    iget v1, v0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    iget v2, v0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    iget v3, v0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/systemui/media/MediaViewController;->setCurrentState(IIFZ)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaData:Lcom/android/systemui/media/MediaData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->bindPlayerContentDescription(Lcom/android/systemui/media/MediaData;)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationData:Lcom/android/systemui/media/SmartspaceMediaData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->bindRecommendationContentDescription(Lcom/android/systemui/media/SmartspaceMediaData;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final getSurfaceForSmartspaceLogging()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    iget p0, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const/4 p0, 0x5

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x4

    return p0
.end method

.method public varargs loadAnimator(ILandroid/view/animation/Interpolator;[Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p3, v3

    iget-object v5, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/Animator;

    invoke-virtual {v6, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final logSmartspaceCardReported(III)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    iget v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mSmartspaceId:I

    iget v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    const/4 v1, 0x1

    new-array v4, v1, [I

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaControlPanel;->getSurfaceForSmartspaceLogging()I

    move-result p0

    const/4 v1, 0x0

    aput p0, v4, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1c0

    move v1, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;III[IIIIIZI)V

    return-void
.end method

.method public final openGuts()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    const-string v1, "marquee while longPressText.getHandler() is null"

    const/4 v2, 0x1

    const-wide/16 v3, 0x1f4

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/media/MediaViewHolder;->gutsViewHolder:Lcom/android/systemui/media/GutsViewHolder;

    iget-object v5, v0, Lcom/android/systemui/media/GutsViewHolder;->gutsText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v5, "MediaViewHolder"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/media/GutsViewHolder$marquee$1;

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/media/GutsViewHolder$marquee$1;-><init>(Lcom/android/systemui/media/GutsViewHolder;Z)V

    invoke-virtual {v5, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/systemui/media/RecommendationViewHolder;->gutsViewHolder:Lcom/android/systemui/media/GutsViewHolder;

    iget-object v5, v0, Lcom/android/systemui/media/GutsViewHolder;->gutsText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v5, "RecommendationViewHolder"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/systemui/media/GutsViewHolder$marquee$1;

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/media/GutsViewHolder$marquee$1;-><init>(Lcom/android/systemui/media/GutsViewHolder;Z)V

    invoke-virtual {v5, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    iget-boolean v1, v0, Lcom/android/systemui/media/MediaViewController;->isGutsVisible:Z

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    iput-boolean v2, v0, Lcom/android/systemui/media/MediaViewController;->isGutsVisible:Z

    const-wide/16 v5, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/media/MediaViewController;->animateNextStateChange:Z

    iput-wide v3, v0, Lcom/android/systemui/media/MediaViewController;->animationDuration:J

    iput-wide v5, v0, Lcom/android/systemui/media/MediaViewController;->animationDelay:J

    iget v1, v0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    iget v2, v0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    iget v3, v0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/media/MediaViewController;->setCurrentState(IIFZ)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaData:Lcom/android/systemui/media/MediaData;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaControlPanel;->bindPlayerContentDescription(Lcom/android/systemui/media/MediaData;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationData:Lcom/android/systemui/media/SmartspaceMediaData;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaControlPanel;->bindRecommendationContentDescription(Lcom/android/systemui/media/SmartspaceMediaData;)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mLogger:Lcom/android/systemui/media/MediaUiEventLogger;

    iget v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v0, v0, Lcom/android/systemui/media/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v3, Lcom/android/systemui/media/MediaUiEvent;->OPEN_LONG_PRESS:Lcom/android/systemui/media/MediaUiEvent;

    invoke-interface {v0, v3, v1, v2, p0}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public final setGenericButton(Landroid/widget/ImageButton;Lcom/android/systemui/media/MediaAction;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;Z)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/MediaControlPanel;->bindButtonCommon(Landroid/widget/ImageButton;Lcom/android/systemui/media/MediaAction;)V

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move p2, p0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {p4, v1, p2, v2}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZI)V

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getId()I

    move-result p1

    if-eqz p2, :cond_1

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    invoke-static {p3, p1, p0, v2}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZI)V

    return-void
.end method

.method public final setSemanticButtonVisibleAndAlpha(ILcom/android/systemui/media/MediaAction;Lcom/android/systemui/media/MediaButton;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    iget-object v1, v0, Lcom/android/systemui/media/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, v0, Lcom/android/systemui/media/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    sget-object v2, Lcom/android/systemui/media/MediaControlPanel;->SEMANTIC_ACTIONS_COMPACT:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lcom/android/systemui/media/MediaControlPanel;->SEMANTIC_ACTIONS_HIDE_WHEN_SCRUBBING:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v7, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda20;

    invoke-direct {v7, p3}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda20;-><init>(Lcom/android/systemui/media/MediaButton;)V

    invoke-interface {v3, v7}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mIsScrubbing:Z

    if-eqz p0, :cond_1

    move p0, v5

    goto :goto_1

    :cond_1
    move p0, v6

    :goto_1
    if-eqz p2, :cond_2

    if-nez p0, :cond_2

    move p0, v5

    goto :goto_2

    :cond_2
    move p0, v6

    :goto_2
    const p2, 0x7f0b0051

    if-ne p1, p2, :cond_3

    iget-boolean p2, p3, Lcom/android/systemui/media/MediaButton;->reservePrev:Z

    if-nez p2, :cond_4

    :cond_3
    const p2, 0x7f0b004f

    if-ne p1, p2, :cond_5

    iget-boolean p2, p3, Lcom/android/systemui/media/MediaButton;->reserveNext:Z

    if-eqz p2, :cond_5

    :cond_4
    const/4 p2, 0x4

    goto :goto_3

    :cond_5
    const/16 p2, 0x8

    :goto_3
    invoke-static {v0, p1, p0, p2}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZI)V

    if-eqz p0, :cond_6

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    move v5, v6

    :goto_4
    invoke-static {v1, p1, v5}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    return-void
.end method

.method public final setSmartspaceRecItemOnClickListener(Landroid/view/ViewGroup;Landroid/app/smartspace/SmartspaceAction;I)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/media/MediaControlPanel;ILandroid/app/smartspace/SmartspaceAction;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "MediaControlPanel"

    const-string p1, "No tap action can be set up"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateSeekBarVisibility()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    iget-object v0, v0, Lcom/android/systemui/media/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-boolean v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mIsSeekBarEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/android/systemui/media/MediaViewHolder;->expandedBottomActionIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    :goto_0
    move v2, v1

    :goto_1
    const v1, 0x7f0b03f6

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iput v2, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mIsSeekBarEnabled:Z

    if-eqz p0, :cond_4

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iput p0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    return-void
.end method
