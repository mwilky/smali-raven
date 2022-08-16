.class final Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "InitializerModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInitializerModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializerModule.kt\ncom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,56:1\n1849#2,2:57\n*S KotlinDebug\n*F\n+ 1 InitializerModule.kt\ncom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1\n*L\n39#1:57,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.dagger.CoroutineScopeCoreStartable$start$1"
    f = "InitializerModule.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;->this$0:Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;

    iget-object p0, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;->this$0:Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;

    invoke-direct {v0, p0, p2}, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;-><init>(Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;->this$0:Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;

    iget-object p0, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;->coroutineInitializers:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/dagger/CoroutineInitializer;

    new-instance v1, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1$1$1;-><init>(Lcom/google/android/systemui/dagger/CoroutineInitializer;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {p1, v2, v1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
