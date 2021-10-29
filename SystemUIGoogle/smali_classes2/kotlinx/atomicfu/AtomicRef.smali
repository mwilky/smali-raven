.class public final Lkotlinx/atomicfu/AtomicRef;
.super Ljava/lang/Object;
.source "AtomicFU.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/atomicfu/AtomicRef$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final Companion:Lkotlinx/atomicfu/AtomicRef$Companion;

.field private static final FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lkotlinx/atomicfu/AtomicRef<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private volatile value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/atomicfu/AtomicRef$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/atomicfu/AtomicRef$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/atomicfu/AtomicRef;->Companion:Lkotlinx/atomicfu/AtomicRef$Companion;

    const-class v0, Lkotlinx/atomicfu/AtomicRef;

    const-class v1, Ljava/lang/Object;

    const-string v2, "value"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/atomicfu/AtomicRef;->FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    invoke-static {}, Lkotlinx/atomicfu/InterceptorKt;->getInterceptor()Lkotlinx/atomicfu/AtomicOperationInterceptor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lkotlinx/atomicfu/AtomicOperationInterceptor;->beforeUpdate(Lkotlinx/atomicfu/AtomicRef;)V

    sget-object v0, Lkotlinx/atomicfu/AtomicRef;->FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlinx/atomicfu/InterceptorKt;->getInterceptor()Lkotlinx/atomicfu/AtomicOperationInterceptor;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lkotlinx/atomicfu/AtomicOperationInterceptor;->afterRMW(Lkotlinx/atomicfu/AtomicRef;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method public final getAndSet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/atomicfu/InterceptorKt;->getInterceptor()Lkotlinx/atomicfu/AtomicOperationInterceptor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lkotlinx/atomicfu/AtomicOperationInterceptor;->beforeUpdate(Lkotlinx/atomicfu/AtomicRef;)V

    sget-object v0, Lkotlinx/atomicfu/AtomicRef;->FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/atomicfu/InterceptorKt;->getInterceptor()Lkotlinx/atomicfu/AtomicOperationInterceptor;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Lkotlinx/atomicfu/AtomicOperationInterceptor;->afterRMW(Lkotlinx/atomicfu/AtomicRef;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lkotlinx/atomicfu/InterceptorKt;->getInterceptor()Lkotlinx/atomicfu/AtomicOperationInterceptor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lkotlinx/atomicfu/AtomicOperationInterceptor;->beforeUpdate(Lkotlinx/atomicfu/AtomicRef;)V

    iput-object p1, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/atomicfu/InterceptorKt;->getInterceptor()Lkotlinx/atomicfu/AtomicOperationInterceptor;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lkotlinx/atomicfu/AtomicOperationInterceptor;->afterSet(Lkotlinx/atomicfu/AtomicRef;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
