.class public final synthetic Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/dreams/DreamOverlayService;

.field public final synthetic f$1:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/DreamOverlayService;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/dreams/DreamOverlayService;

    iput-object p2, p0, Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda0;->f$1:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/dreams/DreamOverlayService;

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda0;->f$1:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v1, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mDestroyed:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    invoke-virtual {v0}, Landroid/service/dreams/DreamOverlayService;->shouldShowComplications()Z

    move-result v2

    iget-object v3, v1, Lcom/android/systemui/dreams/DreamOverlayStateController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, v5}, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;ZI)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    const-string v3, "DreamOverlay"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, p0, v3, v4}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    iget-object p0, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/high16 v1, -0x80000000

    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object p0, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object p0, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p0, v4}, Landroid/view/Window;->requestFeature(I)Z

    iget-object p0, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-interface {p0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    iget-object p0, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p0, v5}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    sget-boolean p0, Lcom/android/systemui/dreams/DreamOverlayService;->DEBUG:Z

    const-string v1, "DreamOverlayService"

    if-eqz p0, :cond_1

    const-string p0, "adding overlay window to dream"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayContainerViewController:Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object p0, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayContainerViewController:Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v3, "Removing dream overlay container view parent!"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    iget-object p0, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayContainerViewController:Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    iget-object p0, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    iget-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    iget-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/qs/tiles/DataSaverTile$$ExternalSyntheticLambda0;

    invoke-direct {v2, v4, v0, p0}, Lcom/android/systemui/qs/tiles/DataSaverTile$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    invoke-virtual {p0, v4}, Lcom/android/systemui/dreams/DreamOverlayStateController;->setOverlayActive(Z)V

    iget-object p0, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/dreams/DreamOverlayService$DreamOverlayEvent;->DREAM_OVERLAY_COMPLETE_START:Lcom/android/systemui/dreams/DreamOverlayService$DreamOverlayEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :goto_1
    return-void
.end method
