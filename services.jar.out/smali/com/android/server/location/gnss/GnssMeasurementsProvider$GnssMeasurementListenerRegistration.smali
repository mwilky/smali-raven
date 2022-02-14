.class Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;
.super Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
.source "GnssMeasurementsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssMeasurementsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnssMeasurementListenerRegistration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
        "Landroid/location/GnssMeasurementRequest;",
        "Landroid/location/IGnssMeasurementsListener;",
        "Landroid/location/GnssMeasurementRequest;",
        ">.Gnss",
        "ListenerRegistration;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;


# direct methods
.method protected constructor <init>(Lcom/android/server/location/gnss/GnssMeasurementsProvider;Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;-><init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    return-void
.end method

.method static synthetic lambda$onGnssListenerRegister$0(Landroid/location/IGnssMeasurementsListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/location/IGnssMeasurementsListener;->onStatusChanged(I)V

    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->access$000(Lcom/android/server/location/gnss/GnssMeasurementsProvider;)Lcom/android/server/location/injector/LocationAttributionHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/LocationAttributionHelper;->reportHighPowerLocationStart(Landroid/location/util/identity/CallerIdentity;)V

    return-void
.end method

.method protected onGnssListenerRegister()V
    .locals 1

    sget-object v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void
.end method

.method protected onInactive()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->access$000(Lcom/android/server/location/gnss/GnssMeasurementsProvider;)Lcom/android/server/location/injector/LocationAttributionHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/LocationAttributionHelper;->reportHighPowerLocationStop(Landroid/location/util/identity/CallerIdentity;)V

    return-void
.end method
