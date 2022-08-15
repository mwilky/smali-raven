.class public final synthetic Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda3;->f$0:Landroid/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda3;->f$0:Landroid/util/IndentingPrintWriter;

    check-cast p1, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    invoke-static {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->$r8$lambda$3fTsTfz5fg3tqIyK38o_S6M2TlQ(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobConcurrencyManager$PackageStats;)V

    return-void
.end method
