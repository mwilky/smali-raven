.class public Lcom/google/android/libraries/hats20/IdleResourceManager;
.super Ljava/lang/Object;
.source "IdleResourceManager.java"


# instance fields
.field private isMultipleChoiceSelectionAnimating:Z

.field private isThankYouAnimating:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private transitionToIdle()V
    .locals 0

    return-void
.end method


# virtual methods
.method public isIdleNow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/hats20/IdleResourceManager;->isMultipleChoiceSelectionAnimating:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/libraries/hats20/IdleResourceManager;->isThankYouAnimating:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setIsMultipleChoiceSelectionAnimating(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/IdleResourceManager;->isIdleNow()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/android/libraries/hats20/IdleResourceManager;->isMultipleChoiceSelectionAnimating:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/IdleResourceManager;->isIdleNow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/libraries/hats20/IdleResourceManager;->transitionToIdle()V

    :cond_0
    return-void
.end method

.method public setIsThankYouAnimating(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/IdleResourceManager;->isIdleNow()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/android/libraries/hats20/IdleResourceManager;->isThankYouAnimating:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/IdleResourceManager;->isIdleNow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/libraries/hats20/IdleResourceManager;->transitionToIdle()V

    :cond_0
    return-void
.end method
