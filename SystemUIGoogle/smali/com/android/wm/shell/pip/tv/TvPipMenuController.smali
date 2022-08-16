.class public final Lcom/android/wm/shell/pip/tv/TvPipMenuController;
.super Ljava/lang/Object;
.source "TvPipMenuController.java"

# interfaces
.implements Lcom/android/wm/shell/pip/PipMenuController;
.implements Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/tv/TvPipMenuController$PipMenuSurfaceChangedCallback;,
        Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;
    }
.end annotation


# instance fields
.field public final mAppActions:Ljava/util/ArrayList;

.field public mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

.field public mBackgroundApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

.field public mCloseAction:Landroid/app/RemoteAction;

.field public mCloseAfterExitMoveMenu:Z

.field public final mCloseEduTextRunnable:Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda2;

.field public final mContext:Landroid/content/Context;

.field public mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

.field public mInMoveMode:Z

.field public mLeash:Landroid/view/SurfaceControl;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMediaActions:Ljava/util/ArrayList;

.field public mMoveTransform:Landroid/graphics/Matrix;

.field public mPipBackgroundView:Landroid/view/View;

.field public final mPipEduTextHeight:I

.field public final mPipEduTextShowDurationMs:I

.field public final mPipMenuBorderWidth:I

.field public mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

.field public final mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

.field public mTmpDestinationRectF:Landroid/graphics/RectF;

.field public mTmpSourceRectF:Landroid/graphics/RectF;

.field public final mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/common/SystemWindows;Lcom/android/wm/shell/pip/PipMediaController;Landroid/os/Handler;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMediaActions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mAppActions:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTmpSourceRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTmpDestinationRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMoveTransform:Landroid/graphics/Matrix;

    new-instance v0, Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda2;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCloseEduTextRunnable:Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda2;

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iput-object p5, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/wm/shell/pip/tv/TvPipMenuController$1;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$1;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuController;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v4, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    move-object v2, p1

    move-object v6, p5

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    new-instance p2, Lcom/android/wm/shell/pip/tv/TvPipMenuController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuController;)V

    invoke-virtual {p4, p2}, Lcom/android/wm/shell/pip/PipMediaController;->addActionListener(Lcom/android/wm/shell/pip/PipMediaController$ActionListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0c00b7

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipEduTextShowDurationMs:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070667

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipEduTextHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070660

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuBorderWidth:I

    return-void
.end method


# virtual methods
.method public final attach(Landroid/view/SurfaceControl;)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mLeash:Landroid/view/SurfaceControl;

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p1, :cond_0

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object v1, v1, Lcom/android/wm/shell/common/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Landroid/view/View;

    if-eqz p1, :cond_1

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mBackgroundApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object v1, v1, Lcom/android/wm/shell/common/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Landroid/view/View;

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0e02b9

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Landroid/view/View;

    const/4 v1, -0x1

    new-instance v2, Lcom/android/wm/shell/pip/tv/TvPipMenuController$2;

    invoke-direct {v2, p0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$2;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuController;I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    const-string v2, "PipBackgroundView"

    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Lcom/android/wm/shell/pip/PipMenuController;->getPipMenuLayoutParams(Ljava/lang/String;II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/wm/shell/common/SystemWindows;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    new-instance p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    iput-object p0, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$2;

    invoke-direct {v0, p0, v4}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$2;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuController;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    const-string v1, "PipMenuView"

    invoke-static {v1, v3, v3}, Lcom/android/wm/shell/pip/PipMenuController;->getPipMenuLayoutParams(Ljava/lang/String;II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v3, v4}, Lcom/android/wm/shell/common/SystemWindows;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->maybeUpdateMenuViewActions()V

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuBorderWidth:I

    neg-int v0, v0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuPermanentDecorInsets:Landroid/graphics/Insets;

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipEduTextHeight:I

    neg-int v0, v0

    invoke-static {v3, v3, v3, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuTemporaryDecorInsets:Landroid/graphics/Insets;

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCloseEduTextRunnable:Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda2;

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipEduTextShowDurationMs:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Delegate is not set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final calculateMenuSurfaceBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuOuterSpace:I

    neg-int p1, p1

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextHeight:I

    add-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public final closeMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->hideAllUserControls()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->grantPipMenuFocus(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

    invoke-interface {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;->onMenuClosed()V

    return-void
.end method

.method public final detach()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->closeMenu()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCloseEduTextRunnable:Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object v2, v2, Lcom/android/wm/shell/common/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mBackgroundApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object v2, v2, Lcom/android/wm/shell/common/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Landroid/view/View;

    :cond_1
    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mLeash:Landroid/view/SurfaceControl;

    return-void
.end method

.method public final grantPipMenuFocus(Z)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    invoke-virtual {v2, p0}, Lcom/android/wm/shell/common/SystemWindows;->getFocusGrantToken(Landroid/widget/FrameLayout;)Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {v1, v0, p0, p1}, Landroid/view/IWindowSession;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p1, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v1, -0xea90bd1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TvPipMenuController"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    aput-object p0, v2, v4

    invoke-static {p1, v1, v3, v0, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final isMenuVisible()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final maybeCreateSyncApplier()Z
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier;

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    invoke-direct {v0, v2}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mBackgroundApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier;

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Landroid/view/View;

    invoke-direct {v0, v2}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mBackgroundApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    :cond_2
    return v1

    :cond_3
    :goto_0
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, 0x8f0a92e

    const/4 v3, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "TvPipMenuController"

    aput-object v4, v1, v0

    invoke-static {p0, v2, v0, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return v0
.end method

.method public final maybeUpdateMenuViewActions()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mAppActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mAppActions:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCloseAction:Landroid/app/RemoteAction;

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setAdditionalActions(Ljava/util/List;Landroid/app/RemoteAction;Landroid/os/Handler;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMediaActions:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCloseAction:Landroid/app/RemoteAction;

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setAdditionalActions(Ljava/util/List;Landroid/app/RemoteAction;Landroid/os/Handler;)V

    :goto_0
    return-void
.end method

.method public final movePipMenu(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->maybeCreateSyncApplier()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->calculateMenuSurfaceBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTmpSourceRectF:Landroid/graphics/RectF;

    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTmpDestinationRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMoveTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTmpDestinationRectF:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/SystemWindows;->getViewSurface(Landroid/view/View;)Landroid/view/SurfaceControl;

    move-result-object v0

    new-instance v1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    invoke-direct {v1, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMoveTransform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/common/SystemWindows;->getViewSurface(Landroid/view/View;)Landroid/view/SurfaceControl;

    move-result-object v1

    new-instance v3, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    invoke-direct {v3, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMoveTransform:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mBackgroundApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    const/4 v4, 0x1

    new-array v5, v4, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    aput-object v1, v5, v2

    invoke-virtual {v3, v5}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    new-instance v1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    invoke-direct {v1, p3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v1, p2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMergeTransaction(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object p2

    iget-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    aput-object v0, v1, v2

    aput-object p2, v1, v4

    invoke-virtual {p3, v1}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    new-array p3, v4, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    aput-object v0, p3, v2

    invoke-virtual {p2, p3}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->updateMenuBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final notifyPipAnimating(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    xor-int/lit8 v1, p1, 0x1

    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v1, 0x6e93c7d4

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "TvPipMenuView"

    aput-object v4, v3, v0

    invoke-static {p1, v1, v0, v2, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mResizeAnimationDuration:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v1, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->ENTER:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-boolean p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mSwitchingOrientation:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mResizeAnimationDuration:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->refocusPreviousButton()V

    :goto_0
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mSwitchingOrientation:Z

    :cond_2
    return-void
.end method

.method public final onBackPress()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->onExitMoveMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->closeMenu()V

    :cond_0
    return-void
.end method

.method public final onCloseButtonClick()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

    invoke-interface {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;->closePip()V

    return-void
.end method

.method public final onEnterMoveMode()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->setInMoveMode(Z)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

    check-cast p0, Lcom/android/wm/shell/pip/tv/TvPipController;

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mButtonMenuIsVisible:Z

    iput-boolean v0, v1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMoveMenuIsVisible:Z

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->showButtonsMenu(Z)V

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->showMovementHints(I)V

    iget-object p0, v1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMenuFrameView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public final onExitMoveMode()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCloseAfterExitMoveMenu:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->setInMoveMode(Z)V

    iput-boolean v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCloseAfterExitMoveMenu:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->closeMenu()V

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mInMoveMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->setInMoveMode(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->showButtonsMenu()V

    return v1

    :cond_1
    return v2
.end method

.method public final onFocusTaskChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, 0x6df92edf

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "TvPipMenuController"

    aput-object v3, v1, v2

    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onFullscreenButtonClick()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

    invoke-interface {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;->movePipToFullscreen()V

    return-void
.end method

.method public final onPipMovement(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mInMoveMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

    check-cast v0, Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip/tv/TvPipController;->movePip(I)V

    :cond_0
    iget-boolean p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mInMoveMode:Z

    return p0
.end method

.method public final onToggleExpandedMode()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

    invoke-interface {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;->togglePipExpansion()V

    return-void
.end method

.method public final resizePipMenu(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->maybeCreateSyncApplier()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->calculateMenuSurfaceBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/SystemWindows;->getViewSurface(Landroid/view/View;)Landroid/view/SurfaceControl;

    move-result-object v0

    new-instance v1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    invoke-direct {v1, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v1, p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/SystemWindows;->getViewSurface(Landroid/view/View;)Landroid/view/SurfaceControl;

    move-result-object v1

    new-instance v2, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    invoke-direct {v2, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v2, p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mBackgroundApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    if-eqz p3, :cond_2

    new-instance p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    invoke-direct {p1, p3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {p1, p2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMergeTransaction(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    aput-object v0, p2, v4

    aput-object p1, p2, v2

    invoke-virtual {p0, p2}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    new-array p1, v2, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    aput-object v0, p1, v4

    invoke-virtual {p0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    :goto_0
    return-void
.end method

.method public final setInMoveMode(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mInMoveMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mInMoveMode:Z

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;->onInMoveModeChanged()V

    :cond_1
    return-void
.end method

.method public final showMenuInternal()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCloseEduTextRunnable:Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCloseEduTextRunnable:Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCloseEduTextRunnable:Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda2;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda2;->run()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->maybeUpdateMenuViewActions()V

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->updateExpansionState()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->grantPipMenuFocus(Z)V

    iget-boolean v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mInMoveMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipMenuController$Delegate;

    check-cast v2, Lcom/android/wm/shell/pip/tv/TvPipController;

    iget-object v2, v2, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    iget v2, v2, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mButtonMenuIsVisible:Z

    iput-boolean v0, v1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMoveMenuIsVisible:Z

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->showButtonsMenu(Z)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->showMovementHints(I)V

    iget-object v1, v1, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMenuFrameView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->showButtonsMenu()V

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->updateBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final updateAdditionalActionsList(Ljava/util/List;Ljava/util/List;Landroid/app/RemoteAction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;",
            "Landroid/app/RemoteAction;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCloseAction:Landroid/app/RemoteAction;

    invoke-static {p3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCloseAction:Landroid/app/RemoteAction;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-lez v0, :cond_2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->maybeUpdateMenuViewActions()V

    return-void
.end method

.method public final updateExpansionState()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    iget-boolean v2, v1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvExpandedPipSupported:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v1, v1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDesiredTvExpandedAspectRatio:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mExpandButton:Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    iget-boolean p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    iget-object v1, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mExpandButton:Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    if-eqz p0, :cond_2

    const v2, 0x7f08078d

    goto :goto_2

    :cond_2
    const v2, 0x7f08078e

    :goto_2
    if-eqz v2, :cond_3

    iget-object v1, v1, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_3
    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mExpandButton:Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    if-eqz p0, :cond_4

    const p0, 0x7f130559

    goto :goto_4

    :cond_4
    const p0, 0x7f13055b

    :goto_4
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->mButtonView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateMenuBounds(Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->calculateMenuSurfaceBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    const-string v5, "PipBackgroundView"

    invoke-static {v5, v3, v4}, Lcom/android/wm/shell/pip/PipMenuController;->getPipMenuLayoutParams(Ljava/lang/String;II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/wm/shell/common/SystemWindows;->updateViewLayout(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const-string v4, "PipMenuView"

    invoke-static {v4, v3, v0}, Lcom/android/wm/shell/pip/PipMenuController;->getPipMenuLayoutParams(Ljava/lang/String;II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/common/SystemWindows;->updateViewLayout(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->updateBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
