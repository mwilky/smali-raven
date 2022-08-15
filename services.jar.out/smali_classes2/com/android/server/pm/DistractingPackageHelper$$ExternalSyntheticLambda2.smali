.class public final synthetic Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/DistractingPackageHelper;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/DistractingPackageHelper;Landroid/os/Bundle;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/DistractingPackageHelper;

    iput-object p2, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda2;->f$1:Landroid/os/Bundle;

    iput p3, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/DistractingPackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda2;->f$1:Landroid/os/Bundle;

    iget p0, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/pm/DistractingPackageHelper;->$r8$lambda$ak2Sc3ewILLlIHEElwNEbq4H7hI(Lcom/android/server/pm/DistractingPackageHelper;Landroid/os/Bundle;I)V

    return-void
.end method
