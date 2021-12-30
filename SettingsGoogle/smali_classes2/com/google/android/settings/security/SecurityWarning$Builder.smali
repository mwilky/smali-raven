.class public Lcom/google/android/settings/security/SecurityWarning$Builder;
.super Ljava/lang/Object;
.source "SecurityWarning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/settings/security/SecurityWarning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/settings/security/SecurityWarning$Builder;)Lcom/google/android/settings/security/SecurityLevel;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityWarning$Builder;->mSecurityLevel:Lcom/google/android/settings/security/SecurityLevel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/settings/security/SecurityWarning$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityWarning$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/settings/security/SecurityWarning$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityWarning$Builder;->mSubtitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/settings/security/SecurityWarning$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityWarning$Builder;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/settings/security/SecurityWarning$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityWarning$Builder;->mPrimaryButtonText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/settings/security/SecurityWarning$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityWarning$Builder;->mSecondaryButtonText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/settings/security/SecurityWarning$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityWarning$Builder;->mPrimaryButtonClickBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/settings/security/SecurityWarning$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityWarning$Builder;->mSecondaryButtonClickBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/settings/security/SecurityWarning$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityWarning$Builder;->mDismissButtonClickBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/settings/security/SecurityWarning$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/settings/security/SecurityWarning$Builder;->mShowConfirmationDialogOnDismiss:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/google/android/settings/security/SecurityWarning;
    .locals 2

    new-instance v0, Lcom/google/android/settings/security/SecurityWarning;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/settings/security/SecurityWarning;-><init>(Lcom/google/android/settings/security/SecurityWarning$Builder;Lcom/google/android/settings/security/SecurityWarning$1;)V

    return-object v0
.end method

.method public setDismissButtonClickBundle(Landroid/os/Bundle;)Lcom/google/android/settings/security/SecurityWarning$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/security/SecurityWarning$Builder;->mDismissButtonClickBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public setPrimaryButtonClickBundle(Landroid/os/Bundle;)Lcom/google/android/settings/security/SecurityWarning$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/security/SecurityWarning$Builder;->mPrimaryButtonClickBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public setPrimaryButtonText(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityWarning$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/security/SecurityWarning$Builder;->mPrimaryButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public setSecondaryButtonClickBundle(Landroid/os/Bundle;)Lcom/google/android/settings/security/SecurityWarning$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/security/SecurityWarning$Builder;->mSecondaryButtonClickBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public setSecondaryButtonText(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityWarning$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/security/SecurityWarning$Builder;->mSecondaryButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public setSecurityLevel(Lcom/google/android/settings/security/SecurityLevel;)Lcom/google/android/settings/security/SecurityWarning$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/security/SecurityWarning$Builder;->mSecurityLevel:Lcom/google/android/settings/security/SecurityLevel;

    return-object p0
.end method

.method public setShowConfirmationDialogOnDismiss(Z)Lcom/google/android/settings/security/SecurityWarning$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/settings/security/SecurityWarning$Builder;->mShowConfirmationDialogOnDismiss:Z

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityWarning$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/security/SecurityWarning$Builder;->mSubtitle:Ljava/lang/String;

    return-object p0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityWarning$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/security/SecurityWarning$Builder;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityWarning$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/security/SecurityWarning$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method
