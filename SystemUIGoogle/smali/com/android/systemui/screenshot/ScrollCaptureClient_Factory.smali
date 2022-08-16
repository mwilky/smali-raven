.class public final Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;
.super Ljava/lang/Object;
.source "ScrollCaptureClient_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final bgExecutorProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final windowManagerServiceProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;->windowManagerServiceProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;->bgExecutorProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;->windowManagerServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;->bgExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance p0, Lcom/google/android/systemui/columbus/gates/UsbState;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/systemui/columbus/gates/UsbState;-><init>(Landroid/content/Context;Landroid/os/Handler;J)V

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;->windowManagerServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/UiEventLogger;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;->bgExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/dump/DumpManager;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/jank/InteractionJankMonitor;

    new-instance v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;-><init>(Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/internal/jank/InteractionJankMonitor;)V

    return-object v2

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;->windowManagerServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;->bgExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/screenshot/ScrollCaptureClient;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/screenshot/ScrollCaptureClient;-><init>(Landroid/view/IWindowManager;Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    return-object v2

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;->windowManagerServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;->bgExecutorProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05003a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_1
    check-cast p0, Lcom/android/systemui/dock/DockManager;

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
