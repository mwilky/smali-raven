.class final Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$animatorUpdateListener$1;
.super Ljava/lang/Object;
.source "AssistInvocationEffect.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;-><init>(Lcom/android/systemui/assist/AssistManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$animatorUpdateListener$1;->this$0:Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$animatorUpdateListener$1;->this$0:Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->access$setProgress$p(Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;F)V

    invoke-static {p0}, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->access$updateAssistManager(Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;)V

    :goto_0
    return-void
.end method
