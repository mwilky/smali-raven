.class public final synthetic Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;

.field public final synthetic f$1:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda10;->f$0:Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;

    iput-object p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda10;->f$1:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda10;->f$0:Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;

    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda10;->f$1:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    invoke-static {v0, p0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->$r8$lambda$Nm5pvG-loZhYTPlBNqGQ2uCxb2o(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)V

    return-void
.end method
