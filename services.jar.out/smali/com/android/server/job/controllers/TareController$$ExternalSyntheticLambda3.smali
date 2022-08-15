.class public final synthetic Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/job/controllers/TareController;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/TareController;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/job/controllers/TareController;

    iput-wide p2, p0, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda3;->f$1:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/job/controllers/TareController;

    iget-wide v1, p0, Lcom/android/server/job/controllers/TareController$$ExternalSyntheticLambda3;->f$1:J

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/job/controllers/TareController;->$r8$lambda$f9Aq5NPseQLtcQ9JRfiKN556Y9k(Lcom/android/server/job/controllers/TareController;JLcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method
