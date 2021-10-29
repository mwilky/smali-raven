.class public Lcom/google/android/systemui/gamedashboard/ToastController;
.super Ljava/lang/Object;
.source "ToastController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFadeInAnimationDuration:I

.field private mFadeOutAnimationDuration:I

.field private mGameTaskId:I

.field private mIsAddedToWindowManager:I

.field private mLaunchChangeView:Landroid/widget/TextView;

.field private mLaunchContainer:Landroid/view/View;

.field private mLaunchDndMessageView:Landroid/widget/TextView;

.field private mLaunchGameModeMessageView:Landroid/widget/TextView;

.field private mLaunchLayout:Landroid/view/View;

.field private mNavBarMode:I

.field private mOrientationMargin:I

.field private mRecordSaveContainer:Landroid/view/View;

.field private mRecordSaveView:Landroid/widget/TextView;

.field private mShortcutView:Landroid/widget/TextView;

.field private mTranslateDownAnimationDuration:I

.field private mTranslateUpAnimationDuration:I

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$q1Bocid2BCsa9EzJtLpsQ2DI83Y(Lcom/google/android/systemui/gamedashboard/ToastController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/ToastController;->lambda$setResourceValues$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/view/WindowManager;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/navigationbar/NavigationModeController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mIsAddedToWindowManager:I

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mWindowManager:Landroid/view/WindowManager;

    iput-object p4, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p5, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mNavBarMode:I

    iput v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mGameTaskId:I

    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ToastController;->setResourceValues()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/gamedashboard/ToastController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/gamedashboard/ToastController;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortcutView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/gamedashboard/ToastController;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveView:Landroid/widget/TextView;

    return-object p0
.end method

.method private getMargin()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mOrientationMargin:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->navigation_bar_gesture_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->navigation_bar_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    add-int/2addr v1, p0

    :cond_1
    return v1
.end method

.method private synthetic lambda$setResourceValues$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/ToastController;->onLaunchClicked(Landroid/view/View;)V

    return-void
.end method

.method private onLaunchClicked(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ToastController;->removeViewImmediate()V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->createIntentForStart(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$anim;->game_dashboard_fade_in:I

    sget v2, Lcom/android/systemui/R$anim;->game_dashboard_fade_out:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeCustomTaskAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v3, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_LAUNCH:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private setResourceValues()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mIsAddedToWindowManager:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$layout;->game_launch_toast:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchContainer:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->game_launch_toast:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchLayout:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->game_launch_toast_dnd_message:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchDndMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchLayout:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->game_launch_toast_game_mode_message:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchGameModeMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchLayout:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->game_launch_toast_change:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchChangeView:Landroid/widget/TextView;

    new-instance v3, Lcom/google/android/systemui/gamedashboard/ToastController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/google/android/systemui/gamedashboard/ToastController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/gamedashboard/ToastController;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mIsAddedToWindowManager:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$layout;->game_menu_shortcut_toast:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortcutView:Landroid/widget/TextView;

    :cond_1
    iget v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mIsAddedToWindowManager:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$layout;->game_screen_record_save_toast:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveContainer:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->game_screen_record_save_toast:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveView:Landroid/widget/TextView;

    :cond_2
    sget v1, Lcom/android/systemui/R$integer;->game_toast_fade_in_animation_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mFadeInAnimationDuration:I

    sget v1, Lcom/android/systemui/R$integer;->game_toast_fade_out_animation_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mFadeOutAnimationDuration:I

    sget v1, Lcom/android/systemui/R$integer;->game_toast_translate_up_animation_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mTranslateUpAnimationDuration:I

    sget v1, Lcom/android/systemui/R$integer;->game_toast_translate_down_animation_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mTranslateDownAnimationDuration:I

    sget v1, Lcom/android/systemui/R$dimen;->game_toast_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mOrientationMargin:I

    return-void
.end method

.method private show(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 6

    const-wide/16 v0, 0x3e8

    const/high16 v2, 0x43fa0000    # 500.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ne p2, v3, :cond_0

    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchLayout:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchContainer:Landroid/view/View;

    invoke-interface {p2, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput v3, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mIsAddedToWindowManager:I

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchLayout:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mTranslateUpAnimationDuration:I

    int-to-long v2, p2

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/google/android/systemui/gamedashboard/ToastController$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/gamedashboard/ToastController$1;-><init>(Lcom/google/android/systemui/gamedashboard/ToastController;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortcutView:Landroid/widget/TextView;

    invoke-interface {p2, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput v3, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mIsAddedToWindowManager:I

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mFadeInAnimationDuration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/google/android/systemui/gamedashboard/ToastController$2;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/gamedashboard/ToastController$2;-><init>(Lcom/google/android/systemui/gamedashboard/ToastController;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne p2, v3, :cond_2

    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveView:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveContainer:Landroid/view/View;

    invoke-interface {p2, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput v3, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mIsAddedToWindowManager:I

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveView:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mTranslateUpAnimationDuration:I

    int-to-long v2, p2

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/google/android/systemui/gamedashboard/ToastController$3;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/gamedashboard/ToastController$3;-><init>(Lcom/google/android/systemui/gamedashboard/ToastController;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public hide()Z
    .locals 7

    iget v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mIsAddedToWindowManager:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide/16 v1, 0xbb8

    const/high16 v3, 0x43fa0000    # 500.0f

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v3, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mTranslateDownAnimationDuration:I

    int-to-long v5, v3

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/systemui/gamedashboard/ToastController$4;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/gamedashboard/ToastController$4;-><init>(Lcom/google/android/systemui/gamedashboard/ToastController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mFadeOutAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/systemui/gamedashboard/ToastController$5;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/gamedashboard/ToastController$5;-><init>(Lcom/google/android/systemui/gamedashboard/ToastController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_2
    const/4 v5, 0x3

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v3, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mTranslateDownAnimationDuration:I

    int-to-long v5, v3

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/systemui/gamedashboard/ToastController$6;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/gamedashboard/ToastController$6;-><init>(Lcom/google/android/systemui/gamedashboard/ToastController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_3
    :goto_0
    return v4
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ToastController;->setResourceValues()V

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mNavBarMode:I

    return-void
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ToastController;->removeViewImmediate()V

    return-void
.end method

.method public removeViewImmediate()V
    .locals 2

    iget v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mIsAddedToWindowManager:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchContainer:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortcutView:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveContainer:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mIsAddedToWindowManager:I

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public showLaunchText(IIZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Lcom/google/android/systemui/gamedashboard/ToastController;->mGameTaskId:I

    if-ne v3, v1, :cond_0

    return-void

    :cond_0
    iput v1, v0, Lcom/google/android/systemui/gamedashboard/ToastController;->mGameTaskId:I

    iget-object v1, v0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchDndMessageView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchGameModeMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_1

    iget-object v6, v0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchDndMessageView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, v0, Lcom/google/android/systemui/gamedashboard/ToastController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->game_launch_dnd_on:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchDndMessageView:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x3

    if-ne v2, v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    iget-object v2, v0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchGameModeMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lcom/google/android/systemui/gamedashboard/ToastController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->game_launch_performance:I

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchGameModeMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    if-ne v2, v8, :cond_3

    add-int/lit8 v6, v6, 0x1

    iget-object v2, v0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchGameModeMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lcom/google/android/systemui/gamedashboard/ToastController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->game_launch_battery:I

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchGameModeMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    if-lez v6, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/google/android/systemui/gamedashboard/ToastController;->getMargin()I

    move-result v2

    iget-object v6, v0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchLayout:Landroid/view/View;

    invoke-virtual {v6, v5, v5}, Landroid/view/View;->measure(II)V

    iget-object v6, v0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int v11, v2, v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/systemui/gamedashboard/ToastController;->removeViewImmediate()V

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v10, -0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x7e8

    const/16 v15, 0x8

    const/16 v16, -0x3

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-string v6, "ToastText"

    invoke-virtual {v2, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/16 v5, 0x50

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-direct {v0, v2, v4}, Lcom/google/android/systemui/gamedashboard/ToastController;->show(Landroid/view/WindowManager$LayoutParams;I)V

    iget-object v2, v0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchDndMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/google/android/systemui/gamedashboard/ToastController;->mLaunchGameModeMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public showRecordSaveText()V
    .locals 12

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->game_screen_record_saved:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ToastController;->getMargin()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/widget/TextView;->measure(II)V

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int v6, v1, v2

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ToastController;->removeViewImmediate()V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7e8

    const/16 v10, 0x8

    const/4 v11, -0x3

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v2, 0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-string v4, "ToastText"

    invoke-virtual {v1, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/16 v3, 0x50

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-direct {p0, v1, v2}, Lcom/google/android/systemui/gamedashboard/ToastController;->show(Landroid/view/WindowManager$LayoutParams;I)V

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mRecordSaveView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showShortcutText(I)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ToastController;->getMargin()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ToastController;->removeViewImmediate()V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/16 v6, 0x7e8

    const/16 v7, 0x8

    const/4 v8, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-string v1, "ToastText"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/android/systemui/gamedashboard/ToastController;->show(Landroid/view/WindowManager$LayoutParams;I)V

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ToastController;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
