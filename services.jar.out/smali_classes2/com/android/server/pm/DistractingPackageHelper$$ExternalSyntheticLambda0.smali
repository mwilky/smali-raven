.class public final synthetic Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput p2, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget p0, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    invoke-static {v0, p0, p1}, Lcom/android/server/pm/DistractingPackageHelper;->$r8$lambda$NV5-83d2dpup4Qzr6CmT-5jI6Yg(Ljava/util/List;ILcom/android/server/pm/pkg/mutate/PackageStateMutator;)V

    return-void
.end method
