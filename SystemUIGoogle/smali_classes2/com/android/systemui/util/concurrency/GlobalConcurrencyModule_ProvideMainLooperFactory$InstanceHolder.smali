.class final Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "GlobalConcurrencyModule_ProvideMainLooperFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;

    invoke-direct {v0}, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;

    return-object v0
.end method
