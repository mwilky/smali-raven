.class public final Lkotlinx/coroutines/Dispatchers;
.super Ljava/lang/Object;
.source "Dispatchers.kt"


# static fields
.field public static final Default:Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

.field public static final IO:Lkotlinx/coroutines/scheduling/LimitingDispatcher;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lkotlinx/coroutines/CoroutineContextKt;->useCoroutinesScheduler:Z

    if-eqz v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlinx/coroutines/CommonPool;->INSTANCE:Lkotlinx/coroutines/CommonPool;

    :goto_0
    sput-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    sget v0, Lkotlinx/coroutines/Unconfined;->$r8$clinit:I

    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultScheduler;->IO:Lkotlinx/coroutines/scheduling/LimitingDispatcher;

    sput-object v0, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/LimitingDispatcher;

    return-void
.end method
