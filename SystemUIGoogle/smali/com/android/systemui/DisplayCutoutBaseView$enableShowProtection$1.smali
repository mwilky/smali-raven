.class public final Lcom/android/systemui/DisplayCutoutBaseView$enableShowProtection$1;
.super Ljava/lang/Object;
.source "DisplayCutoutBaseView.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView$enableShowProtection$1;->this$0:Lcom/android/systemui/DisplayCutoutBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView$enableShowProtection$1;->this$0:Lcom/android/systemui/DisplayCutoutBaseView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionProgress:F

    iget-object p0, p0, Lcom/android/systemui/DisplayCutoutBaseView$enableShowProtection$1;->this$0:Lcom/android/systemui/DisplayCutoutBaseView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method