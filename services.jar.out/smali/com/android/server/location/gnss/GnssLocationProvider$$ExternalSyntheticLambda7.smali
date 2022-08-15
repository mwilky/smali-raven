.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda7;->f$1:Z

    iput-boolean p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda7;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda7;->f$1:Z

    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda7;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->$r8$lambda$3rW7AmVni1iChOJyvW5kh7lHy1g(Lcom/android/server/location/gnss/GnssLocationProvider;ZZ)V

    return-void
.end method
