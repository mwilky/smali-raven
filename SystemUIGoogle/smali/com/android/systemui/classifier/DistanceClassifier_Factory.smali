.class public final Lcom/android/systemui/classifier/DistanceClassifier_Factory;
.super Ljava/lang/Object;
.source "DistanceClassifier_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final dataProvider:Ljavax/inject/Provider;

.field public final deviceConfigProxyProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/classifier/DistanceClassifier_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/classifier/DistanceClassifier_Factory;->dataProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/classifier/DistanceClassifier_Factory;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/systemui/classifier/DistanceClassifier_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/classifier/DistanceClassifier_Factory;->dataProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/classifier/DistanceClassifier_Factory;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelUnfoldAnimationController;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelUnfoldAnimationController;-><init>(Landroid/content/Context;Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/classifier/DistanceClassifier_Factory;->dataProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    iget-object p0, p0, Lcom/android/systemui/classifier/DistanceClassifier_Factory;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;-><init>(Lcom/android/systemui/screenshot/ScreenshotSmartActions;Ljava/util/concurrent/Executor;)V

    return-object v1

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/classifier/DistanceClassifier_Factory;->dataProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/classifier/FalsingDataProvider;

    iget-object p0, p0, Lcom/android/systemui/classifier/DistanceClassifier_Factory;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DeviceConfigProxy;

    new-instance v1, Lcom/android/systemui/classifier/DistanceClassifier;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/classifier/DistanceClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/util/DeviceConfigProxy;)V

    return-object v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/classifier/DistanceClassifier_Factory;->dataProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object p0, p0, Lcom/android/systemui/classifier/DistanceClassifier_Factory;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isReverseSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    :goto_1
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
