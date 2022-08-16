.class final Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;
.super Lcom/android/systemui/CoreStartable;
.source "InitializerModule.kt"


# instance fields
.field public final coroutineInitializers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/dagger/CoroutineInitializer;",
            ">;"
        }
    .end annotation
.end field

.field public job:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final scope:Lkotlinx/coroutines/internal/ContextScope;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/dagger/CoroutineInitializer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/CoreStartable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;->coroutineInitializers:Ljava/util/Set;

    new-instance p1, Lkotlinx/coroutines/internal/ContextScope;

    new-instance p2, Lkotlinx/coroutines/SupervisorJobImpl;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lkotlinx/coroutines/SupervisorJobImpl;-><init>(Lkotlinx/coroutines/Job;)V

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-static {p2, v0}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlinx/coroutines/internal/ContextScope;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    iput-object p1, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;->scope:Lkotlinx/coroutines/internal/ContextScope;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;->job:Lkotlinx/coroutines/StandaloneCoroutine;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;->scope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v1, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;-><init>(Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable;->job:Lkotlinx/coroutines/StandaloneCoroutine;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already started"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
