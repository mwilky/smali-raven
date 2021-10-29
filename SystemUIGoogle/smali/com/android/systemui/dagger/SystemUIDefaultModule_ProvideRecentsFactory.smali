.class public final Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideRecentsFactory;
.super Ljava/lang/Object;
.source "SystemUIDefaultModule_ProvideRecentsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/recents/Recents;",
        ">;"
    }
.end annotation


# instance fields
.field private final commandQueueProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final recentsImplementationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/RecentsImplementation;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/RecentsImplementation;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideRecentsFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideRecentsFactory;->recentsImplementationProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideRecentsFactory;->commandQueueProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideRecentsFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/RecentsImplementation;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;)",
            "Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideRecentsFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideRecentsFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideRecentsFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideRecents(Landroid/content/Context;Lcom/android/systemui/recents/RecentsImplementation;Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/recents/Recents;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/dagger/SystemUIDefaultModule;->provideRecents(Landroid/content/Context;Lcom/android/systemui/recents/RecentsImplementation;Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/recents/Recents;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/Recents;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/recents/Recents;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideRecentsFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideRecentsFactory;->recentsImplementationProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/RecentsImplementation;

    iget-object p0, p0, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideRecentsFactory;->commandQueueProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideRecentsFactory;->provideRecents(Landroid/content/Context;Lcom/android/systemui/recents/RecentsImplementation;Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/recents/Recents;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideRecentsFactory;->get()Lcom/android/systemui/recents/Recents;

    move-result-object p0

    return-object p0
.end method
