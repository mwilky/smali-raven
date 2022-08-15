.class public abstract Lcom/android/server/pm/HandlerParams;
.super Ljava/lang/Object;
.source "HandlerParams.java"


# instance fields
.field public final mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public mTraceCookie:I

.field public mTraceMethod:Ljava/lang/String;

.field public final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/HandlerParams;->mUser:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance p1, Lcom/android/server/pm/InstallPackageHelper;

    invoke-direct {p1, p2}, Lcom/android/server/pm/InstallPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object p1, p0, Lcom/android/server/pm/HandlerParams;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    return-void
.end method


# virtual methods
.method public getUser()Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method public abstract handleReturnCode()V
.end method

.method public abstract handleStartCopy()V
.end method

.method public setTraceCookie(I)Lcom/android/server/pm/HandlerParams;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/HandlerParams;->mTraceCookie:I

    return-object p0
.end method

.method public setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/HandlerParams;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/HandlerParams;->mTraceMethod:Ljava/lang/String;

    return-object p0
.end method

.method public final startCopy()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/HandlerParams;->handleStartCopy()V

    invoke-virtual {p0}, Lcom/android/server/pm/HandlerParams;->handleReturnCode()V

    return-void
.end method
