.class Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageListenerRegistration;
.super Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
.source "GnssNavigationMessageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssNavigationMessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnssNavigationMessageListenerRegistration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
        "Ljava/lang/Void;",
        "Landroid/location/IGnssNavigationMessageListener;",
        "Ljava/lang/Void;",
        ">.Gnss",
        "ListenerRegistration;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;


# direct methods
.method protected constructor <init>(Lcom/android/server/location/gnss/GnssNavigationMessageProvider;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssNavigationMessageListener;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;-><init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    return-void
.end method

.method static synthetic lambda$onGnssListenerRegister$0(Landroid/location/IGnssNavigationMessageListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/location/IGnssNavigationMessageListener;->onStatusChanged(I)V

    return-void
.end method


# virtual methods
.method protected onGnssListenerRegister()V
    .locals 1

    sget-object v0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageListenerRegistration$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageListenerRegistration$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void
.end method
