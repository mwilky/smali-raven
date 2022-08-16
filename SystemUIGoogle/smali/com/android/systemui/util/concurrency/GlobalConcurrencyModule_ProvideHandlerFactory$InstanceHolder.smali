.class public final Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideHandlerFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "GlobalConcurrencyModule_ProvideHandlerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideHandlerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideHandlerFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideHandlerFactory;

    invoke-direct {v0}, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideHandlerFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideHandlerFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideHandlerFactory;

    return-void
.end method
