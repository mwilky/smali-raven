.class public final Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;
.super Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;
.source "LetterboxEduWindowManager.java"


# static fields
.field public static final HAS_SEEN_LETTERBOX_EDUCATION_PREF_NAME:Ljava/lang/String; = "has_seen_letterbox_education"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final mAnimationController:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;

.field public final mDialogVerticalMargin:I

.field public mEligibleForLetterboxEducation:Z

.field public mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mOnDismissCallback:Ljava/lang/Runnable;

.field public final mSharedPreferences:Landroid/content/SharedPreferences;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field public final mUserId:I


# direct methods
.method public static $r8$lambda$RFYBJppEyEmOKQsv8peOY2xgCEw(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mUserId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    new-instance v1, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;->setDismissOnClickListener(Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;->mDialogTitle:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    :goto_0
    return-void
.end method

.method public static $r8$lambda$dlwl1DggfpDk0GTTamsPQUWfcQI(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;)V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;->setDismissOnClickListener(Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda3;

    const/4 v3, 0x6

    invoke-direct {v2, v3, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->cancelAnimation()V

    iget-object p0, v1, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;->mDialogContainer:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->loadAnimation(I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda3;->run()V

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$$ExternalSyntheticLambda0;-><init>()V

    new-instance v6, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;

    invoke-direct {v6, v0, p0, v3, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v2, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$1;

    invoke-direct {v2, v5, v6}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$1;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, v1, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;->mBackgroundDim:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    sget-object v2, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->DRAWABLE_ALPHA:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$3;

    new-array v3, v3, [I

    const/4 v6, 0x0

    aput v6, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iput-object v1, v0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    new-instance v2, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$2;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$2;-><init>(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, v0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method public static $r8$lambda$j8QI6PAoD6fswzmZflaDgmNriEE(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;)V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;

    new-instance v2, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda0;

    const/4 v3, 0x5

    invoke-direct {v2, v3, p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->cancelAnimation()V

    iget-object p0, v0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;->mDialogContainer:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->loadAnimation(I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, v1, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda0;->run()V

    goto :goto_0

    :cond_1
    new-instance v6, Lcom/android/systemui/tuner/TunerFragment$$ExternalSyntheticLambda0;

    const/4 v7, 0x7

    invoke-direct {v6, v7, p0}, Lcom/android/systemui/tuner/TunerFragment$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    new-instance v7, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda0;

    invoke-direct {v7, v3, v1, v2}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$1;

    invoke-direct {v2, v6, v7}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$1;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, v0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;->mBackgroundDim:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xcc

    iget-object v3, v1, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v5

    sget-object v3, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->DRAWABLE_ALPHA:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$3;

    const/4 v7, 0x1

    new-array v7, v7, [I

    aput v2, v7, v4

    invoke-static {v0, v3, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iput-object v0, v1, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    new-instance v2, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$2;

    invoke-direct {v2, v1}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$2;-><init>(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v1, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    sget v2, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->ENTER_ANIM_START_DELAY_MILLIS:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, v1, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v0, v1, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, v1, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/transition/Transitions;Ljava/lang/Runnable;Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;)V

    iput-object p6, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p7, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mOnDismissCallback:Ljava/lang/Runnable;

    iput-object p8, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;

    iget p1, p2, Landroid/app/TaskInfo;->userId:I

    iput p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mUserId:I

    iget-boolean p1, p2, Landroid/app/TaskInfo;->topActivityEligibleForLetterboxEducation:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mEligibleForLetterboxEducation:Z

    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    const-string p2, "has_seen_letterbox_education"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703b9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mDialogVerticalMargin:I

    return-void
.end method


# virtual methods
.method public final createLayout()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0122

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    iput-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->updateDialogMargins()V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    new-instance v1, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda1;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p0}, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/android/wm/shell/transition/Transitions;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda1;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mRunWhenIdleQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    return-object p0
.end method

.method public final eligibleToShowLayout()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mEligibleForLetterboxEducation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->isTaskbarEduShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mUserId:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final getLayout()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    return-object p0
.end method

.method public final getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final getZOrder()I
    .locals 0

    const p0, 0x7fffffff

    return p0
.end method

.method public isTaskbarEduShowing()Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "launcher_taskbar_education_showing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public final onParentBoundsChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->updateDialogMargins()V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->cancelAnimation()V

    invoke-super {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    return-void
.end method

.method public final removeLayout()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    return-void
.end method

.method public final updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z
    .locals 1

    iget-boolean v0, p1, Landroid/app/TaskInfo;->topActivityEligibleForLetterboxEducation:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mEligibleForLetterboxEducation:Z

    invoke-super {p0, p1, p2, p3}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    move-result p0

    return p0
.end method

.method public final updateDialogMargins()V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;->mDialogContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskConfig:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mStableBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskConfig:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mDialogVerticalMargin:I

    add-int/2addr v4, p0

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final updateSurfacePosition()V
    .locals 0

    return-void
.end method
