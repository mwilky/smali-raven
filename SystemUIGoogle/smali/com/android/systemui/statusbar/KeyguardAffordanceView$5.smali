.class public final Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardAffordanceView.java"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field public final synthetic val$mAnimationEndRunnable:Ljava/lang/Runnable;

.field public final synthetic val$maxCircleSize:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$2;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;->val$mAnimationEndRunnable:Ljava/lang/Runnable;

    iput p3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;->val$maxCircleSize:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;->val$mAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mFinishing:Z

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$5;->val$maxCircleSize:F

    iput p0, p1, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
