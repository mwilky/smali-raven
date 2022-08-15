.class public final synthetic Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    check-cast p2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    invoke-static {p1, p2}, Lcom/android/server/job/JobConcurrencyManager;->$r8$lambda$neqqAqre06aYhSdsY9gZuDkQR8M(Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;)I

    move-result p0

    return p0
.end method
