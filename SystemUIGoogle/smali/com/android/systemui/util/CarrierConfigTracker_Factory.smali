.class public final Lcom/android/systemui/util/CarrierConfigTracker_Factory;
.super Ljava/lang/Object;
.source "CarrierConfigTracker_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final broadcastDispatcherProvider:Ljavax/inject/Provider;

.field public final carrierConfigManagerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/util/CarrierConfigTracker_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/util/CarrierConfigTracker_Factory;->carrierConfigManagerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/util/CarrierConfigTracker_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/android/systemui/util/CarrierConfigTracker_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker_Factory;->carrierConfigManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelStore;

    iget-object p0, p0, Lcom/android/systemui/util/CarrierConfigTracker_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    new-instance v2, Lcom/android/systemui/dreams/complication/dagger/DaggerViewModelProviderFactory;

    new-instance v3, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lcom/android/systemui/dreams/complication/dagger/DaggerViewModelProviderFactory;-><init>(Lcom/android/systemui/dreams/complication/dagger/DaggerViewModelProviderFactory$ViewModelCreator;)V

    invoke-direct {v1, v0, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class p0, Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel;

    invoke-virtual {v1, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker_Factory;->carrierConfigManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iget-object p0, p0, Lcom/android/systemui/util/CarrierConfigTracker_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v1, Lcom/android/systemui/util/CarrierConfigTracker;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/util/CarrierConfigTracker;-><init>(Landroid/telephony/CarrierConfigManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-object v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker_Factory;->carrierConfigManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationClickNotifier;

    iget-object p0, p0, Lcom/android/systemui/util/CarrierConfigTracker_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationInteractionTracker;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/statusbar/NotificationInteractionTracker;-><init>(Lcom/android/systemui/statusbar/NotificationClickNotifier;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
