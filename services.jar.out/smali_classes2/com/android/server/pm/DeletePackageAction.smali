.class public final Lcom/android/server/pm/DeletePackageAction;
.super Ljava/lang/Object;
.source "DeletePackageAction.java"


# instance fields
.field public final mDeletingPs:Lcom/android/server/pm/PackageSetting;

.field public final mDisabledPs:Lcom/android/server/pm/PackageSetting;

.field public final mFlags:I

.field public final mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

.field public final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageRemovedInfo;ILandroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DeletePackageAction;->mDeletingPs:Lcom/android/server/pm/PackageSetting;

    iput-object p2, p0, Lcom/android/server/pm/DeletePackageAction;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    iput-object p3, p0, Lcom/android/server/pm/DeletePackageAction;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iput p4, p0, Lcom/android/server/pm/DeletePackageAction;->mFlags:I

    iput-object p5, p0, Lcom/android/server/pm/DeletePackageAction;->mUser:Landroid/os/UserHandle;

    return-void
.end method
