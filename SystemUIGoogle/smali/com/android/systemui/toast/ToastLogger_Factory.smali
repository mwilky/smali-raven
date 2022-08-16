.class public final Lcom/android/systemui/toast/ToastLogger_Factory;
.super Ljava/lang/Object;
.source "ToastLogger_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final bufferProvider:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/toast/ToastLogger_Factory;->$r8$classId:I

    iput-object p2, p0, Lcom/android/systemui/toast/ToastLogger_Factory;->bufferProvider:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/systemui/toast/ToastLogger_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/toast/ToastLogger_Factory;->bufferProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const-class v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/usb/UsbManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/toast/ToastLogger_Factory;->bufferProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    return-object v0

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/toast/ToastLogger_Factory;->bufferProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/logging/UiEventLogger;

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    return-object v0

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/toast/ToastLogger_Factory;->bufferProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    new-instance v0, Lcom/android/systemui/media/MediaTimeoutLogger;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaTimeoutLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    return-object v0

    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/toast/ToastLogger_Factory;->bufferProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogBufferFactory;

    const/16 v0, 0x1f4

    const/4 v1, 0x0

    const-string v2, "BroadcastDispatcherLog"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/systemui/log/LogBufferFactory;->create(ILjava/lang/String;Z)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/toast/ToastLogger_Factory;->bufferProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    new-instance v0, Lcom/android/systemui/toast/ToastLogger;

    invoke-direct {v0, p0}, Lcom/android/systemui/toast/ToastLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    return-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/toast/ToastLogger_Factory;->bufferProvider:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/dagger/SharedLibraryModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
