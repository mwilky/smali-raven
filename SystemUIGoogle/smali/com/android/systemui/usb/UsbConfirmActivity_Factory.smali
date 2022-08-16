.class public final Lcom/android/systemui/usb/UsbConfirmActivity_Factory;
.super Ljava/lang/Object;
.source "UsbConfirmActivity_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final usbAudioWarningDialogMessageProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/usb/UsbConfirmActivity_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/usb/UsbConfirmActivity_Factory;->usbAudioWarningDialogMessageProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/systemui/usb/UsbConfirmActivity_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/usb/UsbConfirmActivity_Factory;->usbAudioWarningDialogMessageProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SharedCoordinatorLogger;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SharedCoordinatorLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    return-object v0

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/usb/UsbConfirmActivity_Factory;->usbAudioWarningDialogMessageProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dump/DumpHandler;

    new-instance v0, Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService;

    invoke-direct {v0, p0}, Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService;-><init>(Lcom/android/systemui/dump/DumpHandler;)V

    return-object v0

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/usb/UsbConfirmActivity_Factory;->usbAudioWarningDialogMessageProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/usb/UsbConfirmActivity_Factory;->provideResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/usb/UsbConfirmActivity_Factory;->usbAudioWarningDialogMessageProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/classifier/FalsingDataProvider;

    new-instance v0, Lcom/android/systemui/classifier/PointerCountClassifier;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/PointerCountClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V

    return-object v0

    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/usb/UsbConfirmActivity_Factory;->usbAudioWarningDialogMessageProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;

    new-instance v0, Lcom/android/systemui/usb/UsbConfirmActivity;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/UsbConfirmActivity;-><init>(Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;)V

    return-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/usb/UsbConfirmActivity_Factory;->usbAudioWarningDialogMessageProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mImpl:Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
