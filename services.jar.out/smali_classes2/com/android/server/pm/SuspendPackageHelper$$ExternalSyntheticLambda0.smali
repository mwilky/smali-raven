.class public final synthetic Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/SuspendPackageHelper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/Bundle;

.field public final synthetic f$3:[I

.field public final synthetic f$4:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/SuspendPackageHelper;Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/SuspendPackageHelper;

    iput-object p2, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$3:[I

    iput-object p5, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$4:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/SuspendPackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$3:[I

    iget-object p0, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$4:Landroid/util/SparseArray;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/pm/SuspendPackageHelper;->$r8$lambda$xoXctDtUuiXfv2cpIdOn1J4kKpk(Lcom/android/server/pm/SuspendPackageHelper;Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;)V

    return-void
.end method
