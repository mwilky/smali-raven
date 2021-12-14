.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iput-wide p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda2;->f$1:J

    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-wide v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda2;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$startBatching$4$GnssLocationProvider(J)V

    return-void
.end method
