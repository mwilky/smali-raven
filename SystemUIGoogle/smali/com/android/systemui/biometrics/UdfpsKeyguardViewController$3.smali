.class public final Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;
.super Ljava/lang/Object;
.source "UdfpsKeyguardViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;


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

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "UdfpsKeyguardViewController"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final hideAlternateAuthBouncer()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->-$$Nest$mshowUdfpsBouncer(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z

    move-result p0

    return p0
.end method

.method public final isShowingAlternateAuthBouncer()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    iget-boolean p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    return p0
.end method

.method public final onBouncerVisibilityChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->updateGenericBouncerVisibility()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->updateAlpha()V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    return-void
.end method

.method public final onTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mTransitionToFullShadeProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v2, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestId:J

    invoke-virtual {p0, v2, v3, p1, v1}, Lcom/android/systemui/biometrics/UdfpsController;->onTouch(JLandroid/view/MotionEvent;Z)Z

    move-result v1

    :cond_3
    :goto_1
    return v1
.end method

.method public final requestUdfps(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    iput-boolean p1, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsRequested:Z

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    iput-boolean p1, v1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mUdfpsRequested:Z

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->updateAlpha()V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    return-void
.end method

.method public final setBouncerExpansionChanged(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    iput p1, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->updateAlpha()V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    return-void
.end method

.method public final setQsExpansion(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    iput p1, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mQsExpansion:F

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->updateAlpha()V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    return-void
.end method

.method public final showAlternateAuthBouncer()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->-$$Nest$mshowUdfpsBouncer(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z

    move-result p0

    return p0
.end method
