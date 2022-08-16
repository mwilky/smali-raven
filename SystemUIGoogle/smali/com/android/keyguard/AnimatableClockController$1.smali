.class public final Lcom/android/keyguard/AnimatableClockController$1;
.super Ljava/lang/Object;
.source "AnimatableClockController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/AnimatableClockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/AnimatableClockController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/AnimatableClockController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/AnimatableClockController$1;->this$0:Lcom/android/keyguard/AnimatableClockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBatteryLevelChanged(IZZ)V
    .locals 9

    iget-object p1, p0, Lcom/android/keyguard/AnimatableClockController$1;->this$0:Lcom/android/keyguard/AnimatableClockController;

    iget-boolean p2, p1, Lcom/android/keyguard/AnimatableClockController;->mKeyguardShowing:Z

    if-eqz p2, :cond_5

    iget-boolean p2, p1, Lcom/android/keyguard/AnimatableClockController;->mIsCharging:Z

    if-nez p2, :cond_5

    if-eqz p3, :cond_5

    iget-object p2, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v0, p2

    check-cast v0, Lcom/android/keyguard/AnimatableClockView;

    iget-object p1, p1, Lcom/android/keyguard/AnimatableClockController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/keyguard/AnimatableClockController$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/keyguard/AnimatableClockController$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/android/keyguard/AnimatableClockView;->textAnimator:Lcom/android/keyguard/TextAnimator;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/android/keyguard/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_3

    :cond_0
    new-instance v8, Lcom/android/keyguard/AnimatableClockView$animateCharge$startAnimPhase2$1;

    invoke-direct {v8, v0, p2}, Lcom/android/keyguard/AnimatableClockView$animateCharge$startAnimPhase2$1;-><init>(Lcom/android/keyguard/AnimatableClockView;Lcom/android/keyguard/AnimatableClockController$1$$ExternalSyntheticLambda0;)V

    invoke-virtual {p2}, Lcom/android/keyguard/AnimatableClockController$1$$ExternalSyntheticLambda0;->isDozing()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-le p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    iget p1, v0, Lcom/android/keyguard/AnimatableClockView;->lockScreenWeightInternal:I

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-le p1, v2, :cond_3

    goto :goto_1

    :cond_3
    move p2, v1

    :goto_1
    iget p1, v0, Lcom/android/keyguard/AnimatableClockView;->dozingWeightInternal:I

    if-eqz p2, :cond_4

    :goto_2
    add-int/lit8 p1, p1, 0x64

    :cond_4
    move v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x1f4

    iget p1, v0, Lcom/android/keyguard/AnimatableClockView;->chargeAnimationDelay:I

    int-to-long v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/keyguard/AnimatableClockView;->setTextStyle(ILjava/lang/Integer;ZJJLcom/android/keyguard/AnimatableClockView$animateCharge$startAnimPhase2$1;)V

    :cond_5
    :goto_3
    iget-object p0, p0, Lcom/android/keyguard/AnimatableClockController$1;->this$0:Lcom/android/keyguard/AnimatableClockController;

    iput-boolean p3, p0, Lcom/android/keyguard/AnimatableClockController;->mIsCharging:Z

    return-void
.end method
