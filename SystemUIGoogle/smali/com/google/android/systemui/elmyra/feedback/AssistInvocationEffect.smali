.class public final Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;
.super Ljava/lang/Object;
.source "AssistInvocationEffect.java"

# interfaces
.implements Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;


# instance fields
.field public final mAssistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

.field public final mOpaHomeButton:Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton;

.field public final mOpaLockscreen:Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/assist/AssistManagerGoogle;Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton;Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mAssistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mOpaHomeButton:Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mOpaLockscreen:Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;

    return-void
.end method


# virtual methods
.method public final onProgress(IF)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mAssistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    iget v0, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mNavigationMode:I

    invoke-static {v0}, Landroidx/preference/R$string;->isGesturalMode(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mOpaHomeButton:Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->onProgress(IF)V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mOpaLockscreen:Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->onProgress(IF)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mAssistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->onInvocationProgress(IF)V

    :goto_0
    return-void
.end method

.method public final onRelease()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mAssistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    iget v0, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mNavigationMode:I

    invoke-static {v0}, Landroidx/preference/R$string;->isGesturalMode(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mOpaHomeButton:Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->onRelease()V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mOpaLockscreen:Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->onRelease()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mAssistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->onInvocationProgress(IF)V

    :goto_0
    return-void
.end method

.method public final onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mAssistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    iget v0, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mNavigationMode:I

    invoke-static {v0}, Landroidx/preference/R$string;->isGesturalMode(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mOpaHomeButton:Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mOpaLockscreen:Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;->onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;->mAssistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    const/4 p1, 0x2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->onInvocationProgress(IF)V

    :goto_0
    return-void
.end method
