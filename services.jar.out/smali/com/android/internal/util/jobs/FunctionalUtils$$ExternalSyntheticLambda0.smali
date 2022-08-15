.class public final synthetic Lcom/android/internal/util/jobs/FunctionalUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingRunnable;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/jobs/FunctionalUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingRunnable;

    iput-object p2, p0, Lcom/android/internal/util/jobs/FunctionalUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/jobs/FunctionalUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingRunnable;

    iget-object p0, p0, Lcom/android/internal/util/jobs/FunctionalUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, p0}, Lcom/android/internal/util/jobs/FunctionalUtils;->$r8$lambda$gXIRCSzw5Y9U2VbyWH1YKKdariA(Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)V

    return-void
.end method
