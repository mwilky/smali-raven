.class public final Lcom/android/server/pm/InstallRequest;
.super Ljava/lang/Object;
.source "InstallRequest.java"


# instance fields
.field public final mArgs:Lcom/android/server/pm/InstallArgs;

.field public final mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstallArgs;Lcom/android/server/pm/PackageInstalledInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mArgs:Lcom/android/server/pm/InstallArgs;

    iput-object p2, p0, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    return-void
.end method
