.class public interface abstract Lkotlinx/coroutines/CancellableContinuation;
.super Ljava/lang/Object;
.source "CancellableContinuation.kt"

# interfaces
.implements Lkotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract completeResume()V
.end method

.method public abstract tryResume(Ljava/lang/Object;Ljava/lang/Object;)Lkotlinx/coroutines/internal/Symbol;
.end method

.method public abstract tryResume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;
.end method

.method public abstract tryResumeWithException(Ljava/lang/Throwable;)Lkotlinx/coroutines/internal/Symbol;
.end method
