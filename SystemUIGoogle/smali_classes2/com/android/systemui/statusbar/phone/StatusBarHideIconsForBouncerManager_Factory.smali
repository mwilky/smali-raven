.class public final Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager_Factory;
.super Ljava/lang/Object;
.source "StatusBarHideIconsForBouncerManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;",
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

.field private final dumpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mainExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
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
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/dump/DumpManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dump/DumpManager;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager_Factory;->newInstance(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager_Factory;->get()Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    move-result-object p0

    return-object p0
.end method
