.class public Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;
.super Lcom/android/server/location/listeners/BinderListenerRegistration;
.source "GnssAntennaInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssAntennaInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AntennaInfoListenerRegistration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/listeners/BinderListenerRegistration<",
        "Ljava/lang/Void;",
        "Landroid/location/IGnssAntennaInfoListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;


# direct methods
.method protected constructor <init>(Lcom/android/server/location/gnss/GnssAntennaInfoProvider;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssAntennaInfoListener;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/location/listeners/BinderListenerRegistration;-><init>(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected getOwner()Lcom/android/server/location/gnss/GnssAntennaInfoProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    return-object v0
.end method

.method protected bridge synthetic getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->getOwner()Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    move-result-object v0

    return-object v0
.end method
