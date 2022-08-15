.class public final synthetic Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/ArraySet;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/android/server/pm/pkg/SuspendParams;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;IZLjava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;->f$0:Landroid/util/ArraySet;

    iput p2, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;->f$2:Z

    iput-object p4, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/pm/pkg/SuspendParams;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;->f$0:Landroid/util/ArraySet;

    iget v1, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;->f$2:Z

    iget-object v3, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/pm/pkg/SuspendParams;

    move-object v5, p1

    check-cast v5, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/SuspendPackageHelper;->$r8$lambda$q8yyKm6etC93i5lkgJcTbAozJFk(Landroid/util/ArraySet;IZLjava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V

    return-void
.end method
