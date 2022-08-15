.class public final synthetic Lcom/android/server/job/controllers/ComponentController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/job/controllers/ComponentController$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/android/server/job/controllers/ComponentController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/ComponentController$$ExternalSyntheticLambda0;->f$0:I

    iget-object p0, p0, Lcom/android/server/job/controllers/ComponentController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-static {v0, p0, p1}, Lcom/android/server/job/controllers/ComponentController;->$r8$lambda$v6Vbuajvb3gA09PkxiqxJDp3HnE(ILjava/lang/String;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method
