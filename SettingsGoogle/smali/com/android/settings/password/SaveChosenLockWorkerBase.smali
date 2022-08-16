.class abstract Lcom/android/settings/password/SaveChosenLockWorkerBase;
.super Landroidx/fragment/app/Fragment;
.source "SaveChosenLockWorkerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;,
        Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;
    }
.end annotation


# instance fields
.field private mBlocking:Z

.field private mFinished:Z

.field private mListener:Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;

.field protected mRequestGatekeeperPassword:Z

.field private mResultData:Landroid/content/Intent;

.field protected mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

.field protected mUnificationProfileId:I

.field protected mUserId:I

.field protected mUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mWasSecureBefore:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUnificationProfileId:I

    return-void
.end method


# virtual methods
.method protected finish(Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mFinished:Z

    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mWasSecureBefore:Z

    invoke-interface {v0, v1, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;->onChosenLockSaveFinished(ZLandroid/content/Intent;)V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/safetycenter/LockScreenSafetySource;->onLockScreenChange(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method protected prepare(Lcom/android/internal/widget/LockPatternUtils;ZZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput p4, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    iput-boolean p3, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mRequestGatekeeperPassword:Z

    invoke-virtual {p1, p4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mWasSecureBefore:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iget p3, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    invoke-virtual {p1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mFinished:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    return-void
.end method

.method protected abstract saveAndVerifyInBackground()Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end method

.method public setBlocking(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mBlocking:Z

    return-void
.end method

.method public setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;

    iget-boolean v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mFinished:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mWasSecureBefore:Z

    iget-object p0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    invoke-interface {p1, v0, p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;->onChosenLockSaveFinished(ZLandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public setProfileToUnify(ILcom/android/internal/widget/LockscreenCredential;)V
    .locals 0

    iput p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUnificationProfileId:I

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    return-void
.end method

.method protected start()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mBlocking:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->saveAndVerifyInBackground()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->finish(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;-><init>(Lcom/android/settings/password/SaveChosenLockWorkerBase;Lcom/android/settings/password/SaveChosenLockWorkerBase$Task-IA;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method protected unifyProfileCredentialIfRequested()V
    .locals 3

    iget v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUnificationProfileId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v1, v0, v2, p0}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V

    :cond_0
    return-void
.end method
