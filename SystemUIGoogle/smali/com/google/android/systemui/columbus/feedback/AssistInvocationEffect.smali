.class public final Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;
.super Ljava/lang/Object;
.source "AssistInvocationEffect.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;


# instance fields
.field public animation:Landroid/animation/ValueAnimator;

.field public final animatorListener:Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$animatorListener$1;

.field public final animatorUpdateListener:Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$animatorUpdateListener$1;

.field public final assistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

.field public progress:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/assist/AssistManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/google/android/systemui/assist/AssistManagerGoogle;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/systemui/assist/AssistManagerGoogle;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->assistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    new-instance p1, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$animatorUpdateListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$animatorUpdateListener$1;-><init>(Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->animatorUpdateListener:Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$animatorUpdateListener$1;

    new-instance p1, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$animatorListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$animatorListener$1;-><init>(Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->animatorListener:Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$animatorListener$1;

    return-void
.end method


# virtual methods
.method public final onGestureDetected(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_0

    goto :goto_5

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->animation:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-ne p1, v1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v0

    :goto_1
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->animation:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_4
    :goto_2
    iput-object p2, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->animation:Landroid/animation/ValueAnimator;

    const/4 p1, 0x2

    new-array p1, p1, [F

    iget p2, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->progress:F

    aput p2, p1, v0

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->animatorUpdateListener:Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$animatorUpdateListener$1;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->animatorListener:Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$animatorListener$1;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    :cond_5
    iget-object p1, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->animation:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-ne p1, v1, :cond_7

    move v0, v1

    :cond_7
    :goto_3
    if-eqz v0, :cond_9

    iget-object p1, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->animation:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_9
    :goto_4
    iput-object p2, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->animation:Landroid/animation/ValueAnimator;

    :goto_5
    return-void
.end method
