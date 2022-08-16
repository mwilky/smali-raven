.class public final Lcom/android/systemui/media/MediaControllerFactory_Factory;
.super Ljava/lang/Object;
.source "MediaControllerFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final contextProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/media/MediaControllerFactory_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/media/MediaControllerFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/systemui/media/MediaControllerFactory_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaControllerFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    new-instance v0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;

    invoke-direct {v0, p0}, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;-><init>(Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;)V

    return-object v0

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/media/MediaControllerFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/dreams/dagger/DreamOverlayModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/dreams/dagger/DreamOverlayModule$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    return-object v0

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/media/MediaControllerFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/media/MediaControllerFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaControllerFactory;-><init>(Landroid/content/Context;)V

    return-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaControllerFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v0, 0x7f0b00f2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
