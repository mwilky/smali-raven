.class public Lcom/google/android/settings/security/SecurityWarning;
.super Ljava/lang/Object;
.source "SecurityWarning.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/security/SecurityWarning$Builder;
    }
.end annotation


# instance fields
.field private mDismissButtonClickBundle:Landroid/os/Bundle;

.field private mPrimaryButtonClickBundle:Landroid/os/Bundle;

.field private mPrimaryButtonText:Ljava/lang/String;

.field private mSecondaryButtonClickBundle:Landroid/os/Bundle;

.field private mSecondaryButtonText:Ljava/lang/String;

.field private mSecurityLevel:Lcom/google/android/settings/security/SecurityLevel;

.field private mShowConfirmationDialogOnDismiss:Z

.field private mSubtitle:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/settings/security/SecurityWarning$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/settings/security/SecurityWarning$Builder;->access$000(Lcom/google/android/settings/security/SecurityWarning$Builder;)Lcom/google/android/settings/security/SecurityLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/security/SecurityWarning;->mSecurityLevel:Lcom/google/android/settings/security/SecurityLevel;

    invoke-static {p1}, Lcom/google/android/settings/security/SecurityWarning$Builder;->access$100(Lcom/google/android/settings/security/SecurityWarning$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/security/SecurityWarning;->mTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/settings/security/SecurityWarning$Builder;->access$200(Lcom/google/android/settings/security/SecurityWarning$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/security/SecurityWarning;->mSubtitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/settings/security/SecurityWarning$Builder;->access$300(Lcom/google/android/settings/security/SecurityWarning$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/security/SecurityWarning;->mSummary:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/settings/security/SecurityWarning$Builder;->access$400(Lcom/google/android/settings/security/SecurityWarning$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/security/SecurityWarning;->mPrimaryButtonText:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/settings/security/SecurityWarning$Builder;->access$500(Lcom/google/android/settings/security/SecurityWarning$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/security/SecurityWarning;->mSecondaryButtonText:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/settings/security/SecurityWarning$Builder;->access$600(Lcom/google/android/settings/security/SecurityWarning$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/security/SecurityWarning;->mPrimaryButtonClickBundle:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/settings/security/SecurityWarning$Builder;->access$700(Lcom/google/android/settings/security/SecurityWarning$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/security/SecurityWarning;->mSecondaryButtonClickBundle:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/settings/security/SecurityWarning$Builder;->access$800(Lcom/google/android/settings/security/SecurityWarning$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/security/SecurityWarning;->mDismissButtonClickBundle:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/settings/security/SecurityWarning$Builder;->access$900(Lcom/google/android/settings/security/SecurityWarning$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/settings/security/SecurityWarning;->mShowConfirmationDialogOnDismiss:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/settings/security/SecurityWarning$Builder;Lcom/google/android/settings/security/SecurityWarning$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/security/SecurityWarning;-><init>(Lcom/google/android/settings/security/SecurityWarning$Builder;)V

    return-void
.end method

.method public static builder()Lcom/google/android/settings/security/SecurityWarning$Builder;
    .locals 1

    new-instance v0, Lcom/google/android/settings/security/SecurityWarning$Builder;

    invoke-direct {v0}, Lcom/google/android/settings/security/SecurityWarning$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/settings/security/SecurityWarning;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/settings/security/SecurityWarning;

    iget-object v1, p0, Lcom/google/android/settings/security/SecurityWarning;->mSecurityLevel:Lcom/google/android/settings/security/SecurityLevel;

    invoke-virtual {p1}, Lcom/google/android/settings/security/SecurityWarning;->getSecurityLevel()Lcom/google/android/settings/security/SecurityLevel;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/settings/security/SecurityWarning;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/settings/security/SecurityWarning;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/settings/security/SecurityWarning;->mSubtitle:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/settings/security/SecurityWarning;->getSubtitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/settings/security/SecurityWarning;->mSummary:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/settings/security/SecurityWarning;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/settings/security/SecurityWarning;->mPrimaryButtonText:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/settings/security/SecurityWarning;->getPrimaryButtonText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/settings/security/SecurityWarning;->mPrimaryButtonClickBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/google/android/settings/security/SecurityWarning;->getPrimaryButtonClickBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/settings/security/SecurityWarning;->mSecondaryButtonText:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/settings/security/SecurityWarning;->getSecondaryButtonText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/settings/security/SecurityWarning;->mSecondaryButtonClickBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/google/android/settings/security/SecurityWarning;->getSecondaryButtonClickBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityWarning;->mDismissButtonClickBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/google/android/settings/security/SecurityWarning;->getDismissButtonClickBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getDismissButtonClickBundle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityWarning;->mDismissButtonClickBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getPrimaryButtonClickBundle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityWarning;->mPrimaryButtonClickBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getPrimaryButtonText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityWarning;->mPrimaryButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondaryButtonClickBundle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityWarning;->mSecondaryButtonClickBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getSecondaryButtonText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityWarning;->mSecondaryButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public getSecurityLevel()Lcom/google/android/settings/security/SecurityLevel;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityWarning;->mSecurityLevel:Lcom/google/android/settings/security/SecurityLevel;

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityWarning;->mSubtitle:Ljava/lang/String;

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityWarning;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityWarning;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/settings/security/SecurityWarning;->mSecurityLevel:Lcom/google/android/settings/security/SecurityLevel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/settings/security/SecurityWarning;->mTitle:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/settings/security/SecurityWarning;->mSubtitle:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/settings/security/SecurityWarning;->mSummary:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/settings/security/SecurityWarning;->mPrimaryButtonText:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/settings/security/SecurityWarning;->mPrimaryButtonClickBundle:Landroid/os/Bundle;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/settings/security/SecurityWarning;->mSecondaryButtonText:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/settings/security/SecurityWarning;->mSecondaryButtonClickBundle:Landroid/os/Bundle;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityWarning;->mDismissButtonClickBundle:Landroid/os/Bundle;

    const/16 v1, 0x8

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public showConfirmationDialogOnDismiss()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/settings/security/SecurityWarning;->mShowConfirmationDialogOnDismiss:Z

    return p0
.end method
