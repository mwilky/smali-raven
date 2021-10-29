.class public Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;
.super Ljava/lang/Object;
.source "AssistInvocationEffect.java"

# interfaces
.implements Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;


# instance fields
.field private final mAssistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

.field private final mOpaHomeButton:Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

.field private final mOpaLockscreen:Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/assist/AssistManagerGoogle;Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton;Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mAssistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mOpaHomeButton:Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mOpaLockscreen:Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    return-void
.end method


# virtual methods
.method public onProgress(FI)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mAssistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->shouldUseHomeButtonAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mOpaHomeButton:Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    invoke-interface {v0, p1, p2}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onProgress(FI)V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mOpaLockscreen:Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    invoke-interface {p0, p1, p2}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onProgress(FI)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mAssistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->onInvocationProgress(IF)V

    :goto_0
    return-void
.end method

.method public onRelease()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mAssistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->shouldUseHomeButtonAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mOpaHomeButton:Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    invoke-interface {v0}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onRelease()V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mOpaLockscreen:Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    invoke-interface {p0}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onRelease()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mAssistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->onInvocationProgress(IF)V

    :goto_0
    return-void
.end method

.method public onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mAssistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->shouldUseHomeButtonAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mOpaHomeButton:Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    invoke-interface {v0, p1}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mOpaLockscreen:Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    invoke-interface {p0, p1}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mAssistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    const/4 p1, 0x2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->onInvocationProgress(IF)V

    :goto_0
    return-void
.end method
