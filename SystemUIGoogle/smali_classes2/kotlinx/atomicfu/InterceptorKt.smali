.class public final Lkotlinx/atomicfu/InterceptorKt;
.super Ljava/lang/Object;
.source "Interceptor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Interceptor.kt\nkotlinx/atomicfu/InterceptorKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,47:1\n1#2:48\n*E\n"
.end annotation


# static fields
.field private static interceptor:Lkotlinx/atomicfu/AtomicOperationInterceptor;

.field private static final interceptorLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/atomicfu/DefaultInterceptor;->INSTANCE:Lkotlinx/atomicfu/DefaultInterceptor;

    sput-object v0, Lkotlinx/atomicfu/InterceptorKt;->interceptor:Lkotlinx/atomicfu/AtomicOperationInterceptor;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lkotlinx/atomicfu/InterceptorKt;->interceptorLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public static final getInterceptor()Lkotlinx/atomicfu/AtomicOperationInterceptor;
    .locals 1

    sget-object v0, Lkotlinx/atomicfu/InterceptorKt;->interceptor:Lkotlinx/atomicfu/AtomicOperationInterceptor;

    return-object v0
.end method
