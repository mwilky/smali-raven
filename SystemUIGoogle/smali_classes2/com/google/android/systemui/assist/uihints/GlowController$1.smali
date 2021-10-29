.class Lcom/google/android/systemui/assist/uihints/GlowController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/assist/uihints/GlowController;->animateGlowTranslationY(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/assist/uihints/GlowController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/assist/uihints/GlowController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController$1;->this$0:Lcom/google/android/systemui/assist/uihints/GlowController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController$1;->this$0:Lcom/google/android/systemui/assist/uihints/GlowController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/systemui/assist/uihints/GlowController;->access$002(Lcom/google/android/systemui/assist/uihints/GlowController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    sget-object p1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->GONE:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController$1;->this$0:Lcom/google/android/systemui/assist/uihints/GlowController;

    invoke-static {v0}, Lcom/google/android/systemui/assist/uihints/GlowController;->access$100(Lcom/google/android/systemui/assist/uihints/GlowController;)Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController$1;->this$0:Lcom/google/android/systemui/assist/uihints/GlowController;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/google/android/systemui/assist/uihints/GlowController;->access$200(Lcom/google/android/systemui/assist/uihints/GlowController;I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController$1;->this$0:Lcom/google/android/systemui/assist/uihints/GlowController;

    invoke-static {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->access$300(Lcom/google/android/systemui/assist/uihints/GlowController;)V

    return-void
.end method
