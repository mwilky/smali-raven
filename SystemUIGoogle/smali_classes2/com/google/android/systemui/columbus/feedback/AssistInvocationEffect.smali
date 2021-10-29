.class public final Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;
.super Ljava/lang/Object;
.source "AssistInvocationEffect.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$Companion;


# instance fields
.field private animation:Landroid/animation/Animator;

.field private final animatorListener:Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$animatorListener$1;

.field private final animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final assistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

.field private progress:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->Companion:Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/assist/AssistManager;)V
    .locals 1

    const-string v0, "assistManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    iput-object p1, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$animatorListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$animatorListener$1;-><init>(Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->animatorListener:Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$animatorListener$1;

    return-void
.end method

.method public static final synthetic access$setProgress$p(Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;F)V
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->progress:F

    return-void
.end method

.method public static final synthetic access$updateAssistManager(Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->updateAssistManager()V

    return-void
.end method

.method private final clear()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->animation:Landroid/animation/Animator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->animation:Landroid/animation/Animator;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->animation:Landroid/animation/Animator;

    return-void
.end method

.method private final onTrigger()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->clear()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->progress:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->animatorListener:Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect$animatorListener$1;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->animation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private final updateAssistManager()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->assistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    iget p0, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->progress:F

    invoke-virtual {v0, v1, p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->onInvocationProgress(IF)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onGestureDetected(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->onTrigger()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;->clear()V

    :goto_0
    return-void
.end method
