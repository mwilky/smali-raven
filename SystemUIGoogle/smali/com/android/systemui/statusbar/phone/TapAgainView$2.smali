.class public final Lcom/android/systemui/statusbar/phone/TapAgainView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TapAgainView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/TapAgainView;->animateOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/TapAgainView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/TapAgainView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TapAgainView$2;->this$0:Lcom/android/systemui/statusbar/phone/TapAgainView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TapAgainView$2;->this$0:Lcom/android/systemui/statusbar/phone/TapAgainView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TapAgainView$2;->this$0:Lcom/android/systemui/statusbar/phone/TapAgainView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
