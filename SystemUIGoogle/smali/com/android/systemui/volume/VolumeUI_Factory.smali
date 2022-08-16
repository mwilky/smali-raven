.class public final Lcom/android/systemui/volume/VolumeUI_Factory;
.super Ljava/lang/Object;
.source "VolumeUI_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final contextProvider:Ljavax/inject/Provider;

.field public final volumeDialogComponentProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/volume/VolumeUI_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeUI_Factory;->volumeDialogComponentProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/systemui/volume/VolumeUI_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dump/DumpManager;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI_Factory;->volumeDialogComponentProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;-><init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/keyguard/KeyguardViewController;)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DeviceConfigProxy;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI_Factory;->volumeDialogComponentProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;-><init>(Lcom/android/systemui/util/DeviceConfigProxy;Landroid/content/Context;)V

    return-object v1

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/classifier/FalsingDataProvider;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI_Factory;->volumeDialogComponentProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DeviceConfigProxy;

    new-instance v1, Lcom/android/systemui/classifier/ZigZagClassifier;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/classifier/ZigZagClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/util/DeviceConfigProxy;)V

    return-object v1

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI_Factory;->volumeDialogComponentProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/VolumeDialogComponent;

    new-instance v1, Lcom/android/systemui/volume/VolumeUI;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/volume/VolumeUI;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDialogComponent;)V

    return-object v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/DisplayController;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI_Factory;->volumeDialogComponentProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/IWindowManager;

    new-instance v1, Lcom/android/wm/shell/common/SystemWindows;

    invoke-direct {v1, v0, p0}, Lcom/android/wm/shell/common/SystemWindows;-><init>(Lcom/android/wm/shell/common/DisplayController;Landroid/view/IWindowManager;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
