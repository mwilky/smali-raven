.class public final synthetic Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerService;

.field public final synthetic f$1:Lcom/android/server/pm/Computer;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/PackageInstallerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/pm/Computer;

    iput p3, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/PackageInstallerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/pm/Computer;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;->f$2:I

    check-cast p1, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/pm/PackageInstallerService;->$r8$lambda$e3GBWfp6y17JDWiQ8vFHE0WVXg0(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result p0

    return p0
.end method
