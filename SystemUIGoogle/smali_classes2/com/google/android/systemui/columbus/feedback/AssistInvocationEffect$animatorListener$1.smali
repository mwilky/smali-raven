.class public final Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$animatorListener$1;
.super Ljava/lang/Object;
.source "AssistInvocationEffect.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;-><init>(Lcom/android/systemui/assist/AssistManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$animatorListener$1;->this$0:Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$animatorListener$1;->this$0:Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->access$setProgress$p(Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$animatorListener$1;->this$0:Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->access$setProgress$p(Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
