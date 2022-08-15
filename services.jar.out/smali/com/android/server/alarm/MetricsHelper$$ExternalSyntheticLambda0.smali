.class public final synthetic Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/alarm/MetricsHelper;

.field public final synthetic f$1:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/MetricsHelper;Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/alarm/MetricsHelper;

    iput-object p2, p0, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/alarm/MetricsHelper;

    iget-object p0, p0, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Supplier;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/alarm/MetricsHelper;->$r8$lambda$3C8tzd-DjSGW_0qr6Lod5pR2PHY(Lcom/android/server/alarm/MetricsHelper;Ljava/util/function/Supplier;ILjava/util/List;)I

    move-result p0

    return p0
.end method
