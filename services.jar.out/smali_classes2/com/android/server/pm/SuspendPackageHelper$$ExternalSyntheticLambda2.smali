.class public final synthetic Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/SuspendPackageHelper;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:[Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/SuspendPackageHelper;ZI[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/SuspendPackageHelper;

    iput-boolean p2, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda2;->f$1:Z

    iput p3, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda2;->f$3:[Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/SuspendPackageHelper;

    iget-boolean v1, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda2;->f$1:Z

    iget v2, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda2;->f$2:I

    iget-object v3, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda2;->f$3:[Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/pm/SuspendPackageHelper;->$r8$lambda$DiG1oDRWb4wb1DGaTlfdBYjEN-Q(Lcom/android/server/pm/SuspendPackageHelper;ZI[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
