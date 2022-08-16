.class public final Lcom/android/systemui/log/dagger/LogModule_ProvideLogcatEchoTrackerFactory;
.super Ljava/lang/Object;
.source "LogModule_ProvideLogcatEchoTrackerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/log/LogcatEchoTracker;",
        ">;"
    }
.end annotation


# instance fields
.field public final contentResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field public final looperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/dagger/LogModule_ProvideLogcatEchoTrackerFactory;->contentResolverProvider:Ljavax/inject/Provider;

    iput-object v0, p0, Lcom/android/systemui/log/dagger/LogModule_ProvideLogcatEchoTrackerFactory;->looperProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/log/dagger/LogModule_ProvideLogcatEchoTrackerFactory;->contentResolverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/systemui/log/dagger/LogModule_ProvideLogcatEchoTrackerFactory;->looperProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Looper;

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/log/LogcatEchoTrackerDebug;

    invoke-direct {v1, v0}, Lcom/android/systemui/log/LogcatEchoTrackerDebug;-><init>(Landroid/content/ContentResolver;)V

    const-string/jumbo v2, "systemui/buffer"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/android/systemui/log/LogcatEchoTrackerDebug$attach$1;

    invoke-direct {v4, v1, v3}, Lcom/android/systemui/log/LogcatEchoTrackerDebug$attach$1;-><init>(Lcom/android/systemui/log/LogcatEchoTrackerDebug;Landroid/os/Handler;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v2, "systemui/tag"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug$attach$2;

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/log/LogcatEchoTrackerDebug$attach$2;-><init>(Lcom/android/systemui/log/LogcatEchoTrackerDebug;Landroid/os/Handler;)V

    invoke-virtual {v0, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/log/LogcatEchoTrackerProd;

    invoke-direct {v1}, Lcom/android/systemui/log/LogcatEchoTrackerProd;-><init>()V

    :goto_0
    return-object v1
.end method
