.class Lcom/android/keyguard/LockIconViewController$6;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LockIconViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/LockIconViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/LockIconViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/LockIconViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private onAffordanceClick()Z
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {v0}, Lcom/android/keyguard/LockIconViewController;->access$3000(Lcom/android/keyguard/LockIconViewController;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/LockIconViewController;->access$1102(Lcom/android/keyguard/LockIconViewController;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {v0}, Lcom/android/keyguard/LockIconViewController;->access$900(Lcom/android/keyguard/LockIconViewController;)V

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {v0}, Lcom/android/keyguard/LockIconViewController;->access$3100(Lcom/android/keyguard/LockIconViewController;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {v0}, Lcom/android/keyguard/LockIconViewController;->access$3100(Lcom/android/keyguard/LockIconViewController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p0}, Lcom/android/keyguard/LockIconViewController;->access$1200(Lcom/android/keyguard/LockIconViewController;)Lcom/android/keyguard/KeyguardViewController;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/keyguard/KeyguardViewController;->showBouncer(Z)V

    return v1
.end method

.method private wasClickableOnDownEvent()Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p0}, Lcom/android/keyguard/LockIconViewController;->access$2500(Lcom/android/keyguard/LockIconViewController;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/keyguard/LockIconViewController;->access$2402(Lcom/android/keyguard/LockIconViewController;Z)Z

    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p1}, Lcom/android/keyguard/LockIconViewController;->access$200(Lcom/android/keyguard/LockIconViewController;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p0, v0}, Lcom/android/keyguard/LockIconViewController;->access$2502(Lcom/android/keyguard/LockIconViewController;Z)Z

    return v0

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p1}, Lcom/android/keyguard/LockIconViewController;->access$2600(Lcom/android/keyguard/LockIconViewController;)Landroid/os/Vibrator;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p1}, Lcom/android/keyguard/LockIconViewController;->access$2500(Lcom/android/keyguard/LockIconViewController;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p1}, Lcom/android/keyguard/LockIconViewController;->access$2600(Lcom/android/keyguard/LockIconViewController;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p1}, Lcom/android/keyguard/LockIconViewController;->access$2700(Lcom/android/keyguard/LockIconViewController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/biometrics/UdfpsController;->EFFECT_CLICK:Landroid/os/VibrationEffect;

    invoke-static {}, Lcom/android/keyguard/LockIconViewController;->access$2800()Landroid/media/AudioAttributes;

    move-result-object v5

    const-string v4, "lockIcon-onDown"

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/keyguard/LockIconViewController;->access$2502(Lcom/android/keyguard/LockIconViewController;Z)Z

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController$6;->wasClickableOnDownEvent()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController$6;->onAffordanceClick()Z

    const/4 p0, 0x1

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController$6;->wasClickableOnDownEvent()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/keyguard/LockIconViewController;->access$2402(Lcom/android/keyguard/LockIconViewController;Z)Z

    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController$6;->onAffordanceClick()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p1}, Lcom/android/keyguard/LockIconViewController;->access$2600(Lcom/android/keyguard/LockIconViewController;)Landroid/os/Vibrator;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p1}, Lcom/android/keyguard/LockIconViewController;->access$2600(Lcom/android/keyguard/LockIconViewController;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$6;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p0}, Lcom/android/keyguard/LockIconViewController;->access$2900(Lcom/android/keyguard/LockIconViewController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/biometrics/UdfpsController;->EFFECT_CLICK:Landroid/os/VibrationEffect;

    invoke-static {}, Lcom/android/keyguard/LockIconViewController;->access$2800()Landroid/media/AudioAttributes;

    move-result-object v5

    const-string v4, "lockIcon-onLongPress"

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    :cond_1
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController$6;->wasClickableOnDownEvent()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController$6;->onAffordanceClick()Z

    const/4 p0, 0x1

    return p0
.end method
