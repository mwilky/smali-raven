.class public final Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardIndicationTextView.java"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method