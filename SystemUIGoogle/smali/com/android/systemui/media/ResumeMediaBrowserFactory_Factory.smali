.class public final Lcom/android/systemui/media/ResumeMediaBrowserFactory_Factory;
.super Ljava/lang/Object;
.source "ResumeMediaBrowserFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final browserFactoryProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final loggerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/media/ResumeMediaBrowserFactory_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/media/ResumeMediaBrowserFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/media/ResumeMediaBrowserFactory_Factory;->browserFactoryProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/media/ResumeMediaBrowserFactory_Factory;->loggerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/systemui/media/ResumeMediaBrowserFactory_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowserFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v1, p0, Lcom/android/systemui/media/ResumeMediaBrowserFactory_Factory;->browserFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/time/SystemClock;

    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowserFactory_Factory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;)V

    return-object v2

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowserFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/media/ResumeMediaBrowserFactory_Factory;->browserFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaBrowserFactory;

    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowserFactory_Factory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/ResumeMediaBrowserLogger;

    new-instance v2, Lcom/android/systemui/media/ResumeMediaBrowserFactory;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/media/ResumeMediaBrowserFactory;-><init>(Landroid/content/Context;Lcom/android/systemui/media/MediaBrowserFactory;Lcom/android/systemui/media/ResumeMediaBrowserLogger;)V

    return-object v2

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowserFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/media/ResumeMediaBrowserFactory_Factory;->browserFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/pip/PipBoundsState;

    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowserFactory_Factory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    new-instance v2, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
