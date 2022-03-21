.class final Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;
.super Lkotlinx/coroutines/internal/AtomicOp;
.source "Select.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/selects/SelectBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AtomicSelectOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/internal/AtomicOp<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,441:1\n93#2,2:442\n*E\n*S KotlinDebug\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp\n*L\n387#1,2:442\n*E\n"
.end annotation


# instance fields
.field public final desc:Lkotlinx/coroutines/internal/AtomicDesc;

.field final synthetic this$0:Lkotlinx/coroutines/selects/SelectBuilderImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/selects/SelectBuilderImpl;Lkotlinx/coroutines/internal/AtomicDesc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/AtomicDesc;",
            ")V"
        }
    .end annotation

    const-string v0, "desc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->this$0:Lkotlinx/coroutines/selects/SelectBuilderImpl;

    invoke-direct {p0}, Lkotlinx/coroutines/internal/AtomicOp;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->desc:Lkotlinx/coroutines/internal/AtomicDesc;

    return-void
.end method

.method private final completeSelect(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->this$0:Lkotlinx/coroutines/selects/SelectBuilderImpl;

    :goto_1
    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->this$0:Lkotlinx/coroutines/selects/SelectBuilderImpl;

    sget-object v2, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->this$0:Lkotlinx/coroutines/selects/SelectBuilderImpl;

    invoke-static {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->access$doAfterSelect(Lkotlinx/coroutines/selects/SelectBuilderImpl;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2}, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->completeSelect(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->desc:Lkotlinx/coroutines/internal/AtomicDesc;

    invoke-virtual {p1, p0, p2}, Lkotlinx/coroutines/internal/AtomicDesc;->complete(Lkotlinx/coroutines/internal/AtomicOp;Ljava/lang/Object;)V

    return-void
.end method

.method public prepare(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->prepareIfNotSelected()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->desc:Lkotlinx/coroutines/internal/AtomicDesc;

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/internal/AtomicDesc;->prepare(Lkotlinx/coroutines/internal/AtomicOp;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final prepareIfNotSelected()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->this$0:Lkotlinx/coroutines/selects/SelectBuilderImpl;

    :cond_0
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state:Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne v1, p0, :cond_1

    return-object v2

    :cond_1
    instance-of v3, v1, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v3, :cond_2

    check-cast v1, Lkotlinx/coroutines/internal/OpDescriptor;

    iget-object v2, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->this$0:Lkotlinx/coroutines/selects/SelectBuilderImpl;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->this$0:Lkotlinx/coroutines/selects/SelectBuilderImpl;

    if-ne v1, v3, :cond_3

    sget-object v1, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v3, v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_3
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
