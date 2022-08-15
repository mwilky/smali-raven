.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/FileUtils$ProgressListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerSession;

.field public final synthetic f$1:Landroid/system/Int64Ref;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/system/Int64Ref;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;->f$1:Landroid/system/Int64Ref;

    return-void
.end method


# virtual methods
.method public final onProgress(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;->f$1:Landroid/system/Int64Ref;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->$r8$lambda$EIoXzbluZ_RWC_7xNPTngWTxt7c(Lcom/android/server/pm/PackageInstallerSession;Landroid/system/Int64Ref;J)V

    return-void
.end method
