.class public final Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventAnimator$onSystemEventAnimationBegin$1;
.super Ljava/lang/Object;
.source "StatusBarSystemEventAnimator.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventAnimator;->onSystemEventAnimationBegin()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventAnimator$onSystemEventAnimationBegin$1;->this$0:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventAnimator$onSystemEventAnimationBegin$1;->this$0:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventAnimator;->animatedView:Landroid/view/View;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventAnimator;->translationXIn:I

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr p1, p0

    neg-float p0, p1

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method