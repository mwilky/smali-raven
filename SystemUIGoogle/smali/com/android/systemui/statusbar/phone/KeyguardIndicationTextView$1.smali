.class public final Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardIndicationTextView.java"


# instance fields
.field public final synthetic val$onAnimationEndCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile$$ExternalSyntheticLambda0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$1;->val$onAnimationEndCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$1;->val$onAnimationEndCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
