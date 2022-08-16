.class public final Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;
.super Ljava/lang/Object;
.source "UdfpsKeyguardViewController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDozeAmountChanged(FF)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    iget v1, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLastDozeAmount:F

    cmpg-float v1, v1, p1

    if-gez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->-$$Nest$mshowUdfpsBouncer(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUnlockedScreenOffDozeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isAnimationPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    iget-object p2, p2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUnlockedScreenOffDozeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAnimationType:I

    iput p2, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mInterpolatedDarkAmount:F

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->updateAlpha()I

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLastDozeAmount:F

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    return-void
.end method

.method public final onStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    iput p1, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStatusBarState:I

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->updateAlpha()V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    return-void
.end method
