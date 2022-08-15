.class public Lcom/android/server/pm/PackageSessionVerifier$1;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "PackageSessionVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageSessionVerifier;->verifyAPK(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageSessionVerifier;

.field public final synthetic val$callback:Lcom/android/server/pm/PackageSessionVerifier$Callback;

.field public final synthetic val$session:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->this$0:Lcom/android/server/pm/PackageSessionVerifier;

    iput-object p2, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    iput-object p3, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->val$callback:Lcom/android/server/pm/PackageSessionVerifier$Callback;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result p1

    const/4 p4, 0x1

    if-eqz p1, :cond_0

    if-ne p2, p4, :cond_0

    iget-object p1, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->this$0:Lcom/android/server/pm/PackageSessionVerifier;

    iget-object p2, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    iget-object p2, p2, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->val$callback:Lcom/android/server/pm/PackageSessionVerifier$Callback;

    invoke-static {p1, p2, p0}, Lcom/android/server/pm/PackageSessionVerifier;->-$$Nest$mverifyStaged(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    return-void

    :cond_0
    if-eq p2, p4, :cond_1

    invoke-static {p2, p3}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p4, p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->val$callback:Lcom/android/server/pm/PackageSessionVerifier$Callback;

    invoke-interface {p0, p2, p3}, Lcom/android/server/pm/PackageSessionVerifier$Callback;->onResult(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->setSessionReady()V

    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->val$callback:Lcom/android/server/pm/PackageSessionVerifier$Callback;

    const/4 p1, 0x0

    invoke-interface {p0, p4, p1}, Lcom/android/server/pm/PackageSessionVerifier$Callback;->onResult(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
