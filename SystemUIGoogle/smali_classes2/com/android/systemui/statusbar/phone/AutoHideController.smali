.class public Lcom/android/systemui/statusbar/phone/AutoHideController;
.super Ljava/lang/Object;
.source "AutoHideController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;
    }
.end annotation


# instance fields
.field private final mAutoHide:Ljava/lang/Runnable;

.field private mAutoHideSuspended:Z

.field private mDisplayId:I

.field private final mHandler:Landroid/os/Handler;

.field private mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

.field private mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

.field private final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public static synthetic $r8$lambda$0CJU6rijI6TTA9m1alRCadn6198(Lcom/android/systemui/statusbar/phone/AutoHideController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->lambda$getCheckBarModesRunnable$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$51yxTBOfPdmJcNGQJkzQf14VYd0(Lcom/android/systemui/statusbar/phone/AutoHideController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$KUlOhDliIYqm-7CVFNH9UWFs3K0(Lcom/android/systemui/statusbar/phone/AutoHideController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->lambda$getCheckBarModesRunnable$2()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IWindowManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mDisplayId:I

    return-void
.end method

.method private cancelAutoHide()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getCheckBarModesRunnable()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private hideTransientBars()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mWindowManagerService:Landroid/view/IWindowManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->hideTransientBars(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AutoHideController"

    const-string v1, "Cannot get WindowManager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->hide()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->hide()V

    :cond_1
    return-void
.end method

.method private isAnyTransientBarShown()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$getCheckBarModesRunnable$1()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->synchronizeState()V

    return-void
.end method

.method private synthetic lambda$getCheckBarModesRunnable$2()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->synchronizeState()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->isAnyTransientBarShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hideTransientBars()V

    :cond_0
    return-void
.end method

.method private scheduleAutoHide()V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->cancelAutoHide()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    const-wide/16 v1, 0x8ca

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private userAutoHide()V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->cancelAutoHide()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public checkUserAutoHide(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->isAnyTransientBarShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->shouldHideOnTouch()Z

    move-result v0

    and-int/2addr p1, v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->shouldHideOnTouch()Z

    move-result v0

    and-int/2addr p1, v0

    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->userAutoHide()V

    :cond_3
    return-void
.end method

.method public resumeSuspendedAutoHide()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->scheduleAutoHide()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getCheckBarModesRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setNavigationBar(Lcom/android/systemui/statusbar/AutoHideUiElement;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/AutoHideUiElement;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    return-void
.end method

.method public suspendAutoHide()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getCheckBarModesRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->isAnyTransientBarShown()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    return-void
.end method

.method public touchAutoHide()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->isAnyTransientBarShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->scheduleAutoHide()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->cancelAutoHide()V

    :goto_0
    return-void
.end method
