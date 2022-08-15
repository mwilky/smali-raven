.class public final synthetic Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/util/ArraySet;

.field public final synthetic f$4:Landroid/util/SparseArrayMap;


# direct methods
.method public synthetic constructor <init>(IZZLandroid/util/ArraySet;Landroid/util/SparseArrayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$0:I

    iput-boolean p2, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$1:Z

    iput-boolean p3, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$2:Z

    iput-object p4, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$3:Landroid/util/ArraySet;

    iput-object p5, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$4:Landroid/util/SparseArrayMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$0:I

    iget-boolean v1, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$1:Z

    iget-boolean v2, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$2:Z

    iget-object v3, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$3:Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$4:Landroid/util/SparseArrayMap;

    move-object v5, p1

    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/UserSystemPackageInstaller;->$r8$lambda$C5yebDxPGXmKR4VGzEos-EC4N4g(IZZLandroid/util/ArraySet;Landroid/util/SparseArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    return-void
.end method
