.class public final synthetic Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/PackageWatchdog;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/PackageWatchdog;

    iput p2, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/PackageWatchdog;

    iget v1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    invoke-static {v0, v1, p0}, Lcom/android/server/PackageWatchdog;->$r8$lambda$fYKatkyIvh8TGD9Az3K71owtuP4(Lcom/android/server/PackageWatchdog;ILjava/util/List;)V

    return-void
.end method
