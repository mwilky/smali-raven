.class final Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideUiBackgroundExecutorFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "SysUIConcurrencyModule_ProvideUiBackgroundExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideUiBackgroundExecutorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideUiBackgroundExecutorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideUiBackgroundExecutorFactory;

    invoke-direct {v0}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideUiBackgroundExecutorFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideUiBackgroundExecutorFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideUiBackgroundExecutorFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideUiBackgroundExecutorFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideUiBackgroundExecutorFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideUiBackgroundExecutorFactory;

    return-object v0
.end method
