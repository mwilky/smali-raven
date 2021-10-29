.class public final Lcom/google/android/systemui/columbus/ColumbusContentObserver_Factory_Factory;
.super Ljava/lang/Object;
.source "ColumbusContentObserver_Factory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityManagerServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final contentResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ContentResolverWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ContentResolverWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/IActivityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver_Factory_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver_Factory_Factory;->activityManagerServiceProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver_Factory_Factory;->handlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/ColumbusContentObserver_Factory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ContentResolverWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/IActivityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/google/android/systemui/columbus/ColumbusContentObserver_Factory_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusContentObserver_Factory_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/columbus/ColumbusContentObserver_Factory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/google/android/systemui/columbus/ContentResolverWrapper;Landroid/app/IActivityManager;Landroid/os/Handler;)Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;-><init>(Lcom/google/android/systemui/columbus/ContentResolverWrapper;Landroid/app/IActivityManager;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver_Factory_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/ContentResolverWrapper;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver_Factory_Factory;->activityManagerServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusContentObserver_Factory_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-static {v0, v1, p0}, Lcom/google/android/systemui/columbus/ColumbusContentObserver_Factory_Factory;->newInstance(Lcom/google/android/systemui/columbus/ContentResolverWrapper;Landroid/app/IActivityManager;Landroid/os/Handler;)Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/ColumbusContentObserver_Factory_Factory;->get()Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;

    move-result-object p0

    return-object p0
.end method
