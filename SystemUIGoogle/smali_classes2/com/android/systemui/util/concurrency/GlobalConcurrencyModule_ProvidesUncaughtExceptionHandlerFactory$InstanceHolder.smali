.class final Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvidesUncaughtExceptionHandlerFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "GlobalConcurrencyModule_ProvidesUncaughtExceptionHandlerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvidesUncaughtExceptionHandlerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvidesUncaughtExceptionHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvidesUncaughtExceptionHandlerFactory;

    invoke-direct {v0}, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvidesUncaughtExceptionHandlerFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvidesUncaughtExceptionHandlerFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvidesUncaughtExceptionHandlerFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvidesUncaughtExceptionHandlerFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvidesUncaughtExceptionHandlerFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvidesUncaughtExceptionHandlerFactory;

    return-object v0
.end method
