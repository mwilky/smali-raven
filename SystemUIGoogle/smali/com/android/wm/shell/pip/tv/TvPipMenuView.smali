.class public Lcom/android/wm/shell/pip/tv/TvPipMenuView;
.super Landroid/widget/FrameLayout;
.source "TvPipMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mActionButtonsContainer:Landroid/widget/LinearLayout;

.field public final mAdditionalButtons:Ljava/util/ArrayList;

.field public final mArrowDown:Landroid/widget/ImageView;

.field public final mArrowLeft:Landroid/widget/ImageView;

.field public final mArrowRight:Landroid/widget/ImageView;

.field public final mArrowUp:Landroid/widget/ImageView;

.field public mButtonMenuIsVisible:Z

.field public final mCloseButton:Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

.field public mCurrentPipBounds:Landroid/graphics/Rect;

.field public final mEduTextContainerView:Landroid/view/View;

.field public final mEduTextFadeExitAnimationDurationMs:I

.field public mEduTextHeight:I

.field public final mEduTextSlideExitAnimationDurationMs:I

.field public final mEduTextView:Landroid/widget/TextView;

.field public final mExpandButton:Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

.field public mFocusedButton:Landroid/view/View;

.field public final mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field public mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

.field public final mMenuFrameView:Landroid/view/View;

.field public mMoveMenuIsVisible:Z

.field public final mPipFrameView:Landroid/view/View;

.field public final mPipMenuBorderWidth:I

.field public final mPipMenuFadeAnimationDuration:I

.field public final mPipMenuOuterSpace:I

.field public final mPipView:Landroid/view/View;

.field public final mResizeAnimationDuration:I

.field public final mScrollView:Landroid/widget/ScrollView;

.field public mSwitchingOrientation:Z


# direct methods
.method public static synthetic $r8$lambda$SUpW5ayH23k0a5DubjL0wy_wLiA(Lcom/android/wm/shell/pip/tv/TvPipMenuView;Landroid/text/SpannableString;Landroid/text/SpannedString;Landroid/text/Annotation;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x7f08044f

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v0, Lcom/android/wm/shell/pip/tv/CenteredImageSpan;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/tv/CenteredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, p3}, Landroid/text/SpannedString;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {p2, p3}, Landroid/text/SpannedString;->getSpanEnd(Ljava/lang/Object;)I

    move-result p2

    const/16 p3, 0x21

    invoke-virtual {p1, v0, p0, p2, p3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mAdditionalButtons:Ljava/util/ArrayList;

    const p2, 0x7f0e02b7

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f0b0704

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0b070e

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0709

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCloseButton:Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->setIsCustomCloseAction(Z)V

    const v1, 0x7f0b0710

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b070c

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mExpandButton:Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    invoke-virtual {p2, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b0711

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mScrollView:Landroid/widget/ScrollView;

    const p2, 0x7f0b070f

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/HorizontalScrollView;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const p2, 0x7f0b070d

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMenuFrameView:Landroid/view/View;

    const p2, 0x7f0b0702

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipFrameView:Landroid/view/View;

    const p2, 0x7f0b0701

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipView:Landroid/view/View;

    const p2, 0x7f0b0708

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowUp:Landroid/widget/ImageView;

    const p2, 0x7f0b0707

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowRight:Landroid/widget/ImageView;

    const p2, 0x7f0b0705

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowDown:Landroid/widget/ImageView;

    const p2, 0x7f0b0706

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowLeft:Landroid/widget/ImageView;

    const p2, 0x7f0b070a

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextView:Landroid/widget/TextView;

    const v1, 0x7f0b070b

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextContainerView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mResizeAnimationDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuFadeAnimationDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07066a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuOuterSpace:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070660

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuBorderWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070667

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextFadeExitAnimationDurationMs:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c00b9

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextSlideExitAnimationDurationMs:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f13055a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Landroid/text/SpannedString;

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/text/SpannedString;->length()I

    move-result v2

    const-class v3, Landroid/text/Annotation;

    invoke-virtual {p1, v0, v2, v3}, Landroid/text/SpannedString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;Landroid/text/SpannableString;Landroid/text/SpannedString;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final animateAlphaTo(Landroid/view/View;F)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->EXIT:Landroid/view/animation/PathInterpolator;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->ENTER:Landroid/view/animation/PathInterpolator;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuFadeAnimationDuration:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;F)V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;F)V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public final changeButtonScrollOrientation(Landroid/graphics/Rect;)V
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mScrollView:Landroid/widget/ScrollView;

    :goto_1
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mScrollView:Landroid/widget/ScrollView;

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ne v4, v1, :cond_4

    sget-boolean v4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, 0x77c19438

    const/4 v6, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v7, "TvPipMenuView"

    aput-object v7, v1, v2

    invoke-static {v4, v5, v2, v6, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_4
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMoveMenuIsVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_6

    const/16 v2, 0x42

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;->onPipMovement(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    :goto_0
    return v1

    :cond_3
    :pswitch_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    invoke-interface {v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;->onExitMoveMode()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    :cond_5
    :goto_1
    return v1

    :cond_6
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    invoke-interface {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;->onBackPress()V

    return v1

    :cond_7
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final hideAllUserControls()V
    .locals 6

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x7bc1b495

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "TvPipMenuView"

    aput-object v5, v4, v2

    invoke-static {v0, v3, v2, v1, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    iput-boolean v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mButtonMenuIsVisible:Z

    iput-boolean v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMoveMenuIsVisible:Z

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->showButtonsMenu(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowUp:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowDown:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMenuFrameView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b070e

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    check-cast p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->onFullscreenButtonClick()V

    goto :goto_0

    :cond_1
    const v1, 0x7f0b0710

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    check-cast p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->onEnterMoveMode()V

    goto :goto_0

    :cond_2
    const v1, 0x7f0b0709

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    check-cast p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->onCloseButtonClick()V

    goto :goto_0

    :cond_3
    const v1, 0x7f0b070c

    if-ne v0, v1, :cond_4

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    check-cast p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->onToggleExpandedMode()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/RemoteAction;

    const/4 p1, 0x1

    const-string v0, "TvPipMenuView"

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    :try_start_0
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v2, :cond_6

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x6e97ae5f

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    aput-object p0, v4, p1

    invoke-static {v2, v3, v1, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;II[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p0, :cond_6

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, 0x53f8bfa8

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v1

    invoke-static {p0, v2, v1, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;II[Ljava/lang/Object;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->hideAllUserControls()V

    :cond_0
    return-void
.end method

.method public final refocusPreviousButton()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMoveMenuIsVisible:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "TvPipMenuView"

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v8, 0x21695837

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v3

    aput-object v1, v4, v2

    invoke-static {v7, v8, v3, v5, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_3
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v8, -0x1f126169

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v3

    aput-object v1, v4, v2

    invoke-static {v7, v8, v3, v5, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    if-eqz v0, :cond_5

    iget-object v7, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7, v4}, Landroid/widget/ScrollView;->getDrawingRect(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7, v4}, Landroid/widget/HorizontalScrollView;->getDrawingRect(Landroid/graphics/Rect;)V

    :goto_2
    iget-object v7, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p0, :cond_6

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, 0x2137a43c

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v6, v1, v3

    invoke-static {p0, v0, v3, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-void

    :cond_7
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x7c97c8a9

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v3

    invoke-static {v1, v4, v3, v5, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    :cond_a
    :goto_3
    return-void
.end method

.method public final setActionForButton(Landroid/app/RemoteAction;Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;Landroid/os/Handler;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p2, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->mButtonView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p2, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->mButtonView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p1}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->setEnabled(Z)V

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;)V

    invoke-virtual {p1, p0, v0, p3}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final setAdditionalActions(Ljava/util/List;Landroid/app/RemoteAction;Landroid/os/Handler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;",
            "Landroid/app/RemoteAction;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCloseButton:Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    invoke-virtual {p0, p2, v0, p3}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setActionForButton(Landroid/app/RemoteAction;Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCloseButton:Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    const v1, 0x7f130558

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->mButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCloseButton:Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    const v1, 0x7f08078c

    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCloseButton:Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->setIsCustomCloseAction(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCloseButton:Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->setEnabled(Z)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mAdditionalButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x8

    if-le v0, v2, :cond_2

    :goto_2
    if-le v0, v2, :cond_3

    new-instance v4, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    iget-object v5, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v6, v2, 0x3

    invoke-virtual {v5, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mAdditionalButtons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-ge v0, v2, :cond_3

    :goto_3
    if-ge v0, v2, :cond_3

    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mAdditionalButtons:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    :goto_4
    if-ge v1, v0, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/RemoteAction;

    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mAdditionalButtons:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    invoke-static {v2, p2}, Lcom/android/wm/shell/pip/PipUtils;->remoteActionsMatch(Landroid/app/RemoteAction;Landroid/app/RemoteAction;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5

    :cond_4
    invoke-virtual {p0, v2, v4, p3}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setActionForButton(Landroid/app/RemoteAction;Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;Landroid/os/Handler;)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->updateButtonGravity(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->refocusPreviousButton()V

    :cond_6
    return-void
.end method

.method public final showButtonsMenu()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mButtonMenuIsVisible:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMoveMenuIsVisible:Z

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->showButtonsMenu(Z)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowUp:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowDown:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMenuFrameView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setActivated(Z)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->refocusPreviousButton()V

    return-void
.end method

.method public final showButtonsMenu(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->refocusPreviousButton()V

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    return-void
.end method

.method public final showMovementHints(I)V
    .locals 6

    and-int/lit8 v0, p1, 0x50

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x50

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    const/16 v0, 0x30

    and-int/lit8 v5, p1, 0x30

    if-ne v5, v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    move v0, v4

    :goto_3
    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowDown:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    const/4 v0, 0x5

    and-int/lit8 v5, p1, 0x5

    if-ne v5, v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_5

    :cond_5
    move v0, v4

    :goto_5
    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    const/4 v0, 0x3

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_6

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    move v3, v4

    :goto_7
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    return-void
.end method

.method public final updateBounds(Landroid/graphics/Rect;)V
    .locals 9

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x185d60ca

    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "TvPipMenuView"

    aput-object v8, v6, v7

    const/4 v8, 0x1

    aput-object v0, v6, v8

    aput-object v2, v6, v1

    invoke-static {v3, v4, v7, v5, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mSwitchingOrientation:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->updateButtonGravity(Landroid/graphics/Rect;)V

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipFrameView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuBorderWidth:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuBorderWidth:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipFrameView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public final updateButtonGravity(Landroid/graphics/Rect;)V
    .locals 13

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-boolean v4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-string v8, "TvPipMenuView"

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v11, 0x653a1edf

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v8, v12, v3

    aput-object v4, v12, v2

    aput-object v9, v12, v5

    invoke-static {v10, v11, v3, v7, v12}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-ge v1, p1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-ge v1, p1, :cond_3

    :goto_1
    move p1, v2

    goto :goto_2

    :cond_3
    move p1, v3

    :goto_2
    if-eqz p1, :cond_4

    const/16 v1, 0x11

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    const/16 v1, 0x10

    :goto_3
    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p0, :cond_6

    invoke-static {v1}, Landroid/view/Gravity;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x3127ae7e

    const/16 v9, 0x3c

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v10, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v10, v5

    aput-object p0, v10, v6

    invoke-static {v1, v4, v9, v7, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method
