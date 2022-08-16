.class public final Lcom/android/systemui/usb/UsbDebuggingActivity_Factory;
.super Ljava/lang/Object;
.source "UsbDebuggingActivity_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final broadcastDispatcherProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/usb/UsbDebuggingActivity_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const-class v0, Landroid/safetycenter/SafetyCenterManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/safetycenter/SafetyCenterManager;

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v0, Lcom/android/systemui/usb/UsbDebuggingActivity;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    new-instance v0, Lcom/android/systemui/screenshot/SmartActionsReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/SmartActionsReceiver;-><init>(Lcom/android/systemui/screenshot/ScreenshotSmartActions;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
