.class public final Lcom/android/systemui/DisplayCutoutBaseView$enableShowProtection$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DisplayCutoutBaseView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/DisplayCutoutBaseView;->enableShowProtection(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/DisplayCutoutBaseView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/DisplayCutoutBaseView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView$enableShowProtection$2;->this$0:Lcom/android/systemui/DisplayCutoutBaseView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/DisplayCutoutBaseView$enableShowProtection$2;->this$0:Lcom/android/systemui/DisplayCutoutBaseView;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionAnimator:Landroid/animation/ValueAnimator;

    iget-boolean p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->showProtection:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
