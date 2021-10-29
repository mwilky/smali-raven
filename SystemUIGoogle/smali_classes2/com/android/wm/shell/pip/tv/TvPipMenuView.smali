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


# instance fields
.field private final mActionButtonsContainer:Landroid/widget/LinearLayout;

.field private final mAdditionalButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;",
            ">;"
        }
    .end annotation
.end field

.field private final mFadeInAnimation:Landroid/animation/Animator;

.field private final mFadeOutAnimation:Landroid/animation/Animator;

.field private mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;


# direct methods
.method public static synthetic $r8$lambda$vH-gp_0eEazrv0kUlIjEN6xSVSM(Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->lambda$setAdditionalActions$0(Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mAdditionalButtons:Ljava/util/List;

    sget p2, Lcom/android/wm/shell/R$layout;->tv_pip_menu:I

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/android/wm/shell/R$id;->tv_pip_menu_action_buttons:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    sget p2, Lcom/android/wm/shell/R$id;->tv_pip_menu_fullscreen_button:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/android/wm/shell/R$id;->tv_pip_menu_close_button:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/wm/shell/R$anim;->tv_pip_menu_fade_in_animation:I

    invoke-static {p2, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFadeInAnimation:Landroid/animation/Animator;

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/wm/shell/R$anim;->tv_pip_menu_fade_out_animation:I

    invoke-static {p2, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFadeOutAnimation:Landroid/animation/Animator;

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    return-void
.end method

.method private grantWindowFocus(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "grantWindowFocus("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TvPipMenuView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {v0, v2, p0, p1}, Landroid/view/IWindowSession;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Unable to update focus"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$setAdditionalActions$0(Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;->onBackPress()V

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method getWindowSurfaceControl()Landroid/view/SurfaceControl;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    return-object v0
.end method

.method hide()V
    .locals 2

    const-string v0, "TvPipMenuView"

    const-string v1, "hide()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFadeOutAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->grantWindowFocus(Z)V

    return-void
.end method

.method isVisible()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/wm/shell/R$id;->tv_pip_menu_fullscreen_button:I

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    invoke-interface {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;->onFullscreenButtonClick()V

    goto :goto_0

    :cond_1
    sget v1, Lcom/android/wm/shell/R$id;->tv_pip_menu_close_button:I

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    invoke-interface {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;->onCloseButtonClick()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/RemoteAction;

    const-string p1, "TvPipMenuView"

    if-eqz p0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Failed to send action"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    const-string p0, "RemoteAction is null"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method setAdditionalActions(Ljava/util/List;Landroid/os/Handler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    const-string v0, "TvPipMenuView"

    const-string v1, "setAdditionalActions()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mAdditionalButtons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    :goto_0
    if-le v0, v1, :cond_1

    sget v4, Lcom/android/wm/shell/R$layout;->tv_pip_menu_additional_action_button:I

    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    invoke-virtual {v4, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mAdditionalButtons:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_1

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mAdditionalButtons:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/RemoteAction;

    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mAdditionalButtons:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->setTextAndDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    invoke-virtual {v3}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_2
    const v5, 0x3f0a3d71    # 0.54f

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    iget-object v5, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;)V

    invoke-virtual {v3, v5, v6, p2}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method setListener(Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    return-void
.end method

.method show()V
    .locals 2

    const-string v0, "TvPipMenuView"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFadeInAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->grantWindowFocus(Z)V

    return-void
.end method
