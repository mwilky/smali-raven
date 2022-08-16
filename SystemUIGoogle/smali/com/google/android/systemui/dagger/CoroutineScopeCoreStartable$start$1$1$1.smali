.class final Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "InitializerModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.dagger.CoroutineScopeCoreStartable$start$1$1$1"
    f = "InitializerModule.kt"
    l = {
        0x27
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $it:Lcom/google/android/systemui/dagger/CoroutineInitializer;

.field public label:I


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dagger/CoroutineInitializer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/dagger/CoroutineInitializer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1$1$1;->$it:Lcom/google/android/systemui/dagger/CoroutineInitializer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
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

    new-instance p1, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1$1$1;

    iget-object p0, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1$1$1;->$it:Lcom/google/android/systemui/dagger/CoroutineInitializer;

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1$1$1;-><init>(Lcom/google/android/systemui/dagger/CoroutineInitializer;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1$1$1;->$it:Lcom/google/android/systemui/dagger/CoroutineInitializer;

    iput v2, p0, Lcom/google/android/systemui/dagger/CoroutineScopeCoreStartable$start$1$1$1;->label:I

    invoke-interface {p1, p0}, Lcom/google/android/systemui/dagger/CoroutineInitializer;->initialize(Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method
