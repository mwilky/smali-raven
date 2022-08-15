.class public final Lcom/android/server/pm/PackageInstalledInfo;
.super Ljava/lang/Object;
.source "PackageInstalledInfo.java"


# instance fields
.field public mFreezer:Lcom/android/server/pm/PackageFreezer;

.field public mInstallerPackageName:Ljava/lang/String;

.field public mLibraryConsumers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field public mName:Ljava/lang/String;

.field public mNewUsers:[I

.field public mOrigPackage:Ljava/lang/String;

.field public mOrigPermission:Ljava/lang/String;

.field public mOrigUsers:[I

.field public mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field public mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

.field public mReturnCode:I

.field public mReturnMsg:Ljava/lang/String;

.field public mUid:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mUid:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iput-object p1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    return-void
.end method


# virtual methods
.method public setError(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstalledInfo;->setReturnCode(I)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageInstalledInfo;->setReturnMessage(Ljava/lang/String;)V

    const-string p0, "PackageManager"

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    .locals 1

    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->error:I

    iput v0, p0, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstalledInfo;->setReturnMessage(Ljava/lang/String;)V

    const-string p0, "PackageManager"

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setReturnCode(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    return-void
.end method

.method public final setReturnMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mReturnMsg:Ljava/lang/String;

    return-void
.end method
