.class public final Lcom/android/systemui/usb/UsbPermissionActivity_Factory;
.super Ljava/lang/Object;
.source "UsbPermissionActivity_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final usbAudioWarningDialogMessageProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/usb/UsbPermissionActivity_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/usb/UsbPermissionActivity_Factory;->usbAudioWarningDialogMessageProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/systemui/usb/UsbPermissionActivity_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/usb/UsbPermissionActivity_Factory;->usbAudioWarningDialogMessageProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;

    new-instance v0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;-><init>(Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;)V

    return-object v0

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/usb/UsbPermissionActivity_Factory;->usbAudioWarningDialogMessageProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/ExtensionController;

    new-instance v0, Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionController;)V

    return-object v0

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/usb/UsbPermissionActivity_Factory;->usbAudioWarningDialogMessageProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutManager;

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/usb/UsbPermissionActivity_Factory;->usbAudioWarningDialogMessageProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;

    new-instance v0, Lcom/android/systemui/usb/UsbPermissionActivity;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/UsbPermissionActivity;-><init>(Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;)V

    return-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/usb/UsbPermissionActivity_Factory;->usbAudioWarningDialogMessageProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Resources;

    const v0, 0x7f0c0077

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
