.class public Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;
.super Ljava/lang/Object;
.source "GnssNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/hal/GnssNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GnssHal"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected addGeofence(IDDDIIII)Z
    .locals 1

    invoke-static/range {p1 .. p11}, Lcom/android/server/location/gnss/hal/GnssNative;->access$3200(IDDDIIII)Z

    move-result v0

    return v0
.end method

.method protected classInitOnce()V
    .locals 0

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$000()V

    return-void
.end method

.method protected cleanup()V
    .locals 0

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$400()V

    return-void
.end method

.method protected cleanupBatching()V
    .locals 0

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$2700()V

    return-void
.end method

.method protected deleteAidingData(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->access$900(I)V

    return-void
.end method

.method protected flushBatch()V
    .locals 0

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$2900()V

    return-void
.end method

.method protected getBatchSize()I
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$2500()I

    move-result v0

    return v0
.end method

.method protected getInternalState()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$800()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$300()Z

    move-result v0

    return v0
.end method

.method protected initBatching()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$2600()Z

    move-result v0

    return v0
.end method

.method protected initOnce(Lcom/android/server/location/gnss/hal/GnssNative;Z)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->access$200(Lcom/android/server/location/gnss/hal/GnssNative;Z)V

    return-void
.end method

.method protected injectBestLocation(IDDDFFFFFFJIJD)V
    .locals 0

    invoke-static/range {p1 .. p20}, Lcom/android/server/location/gnss/hal/GnssNative;->access$1200(IDDDFFFFFFJIJD)V

    return-void
.end method

.method protected injectLocation(DDF)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/location/gnss/hal/GnssNative;->access$1100(DDF)V

    return-void
.end method

.method protected injectMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->access$2400(Landroid/location/GnssMeasurementCorrections;)Z

    move-result v0

    return v0
.end method

.method protected injectPsdsData([BII)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->access$4300([BII)V

    return-void
.end method

.method protected injectTime(JJI)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/location/gnss/hal/GnssNative;->access$1300(JJI)V

    return-void
.end method

.method protected isAntennaInfoSupported()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$1700()Z

    move-result v0

    return v0
.end method

.method protected isGeofencingSupported()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$3100()Z

    move-result v0

    return v0
.end method

.method protected isGnssVisibilityControlSupported()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$3600()Z

    move-result v0

    return v0
.end method

.method protected isMeasurementCorrectionsSupported()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$2300()Z

    move-result v0

    return v0
.end method

.method protected isMeasurementSupported()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$2000()Z

    move-result v0

    return v0
.end method

.method protected isNavigationMessageCollectionSupported()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$1400()Z

    move-result v0

    return v0
.end method

.method protected isPsdsSupported()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$4200()Z

    move-result v0

    return v0
.end method

.method protected isSupported()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$100()Z

    move-result v0

    return v0
.end method

.method protected pauseGeofence(I)Z
    .locals 1

    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->access$3400(I)Z

    move-result v0

    return v0
.end method

.method protected readNmea([BI)I
    .locals 1

    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->access$1000([BI)I

    move-result v0

    return v0
.end method

.method protected removeGeofence(I)Z
    .locals 1

    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->access$3500(I)Z

    move-result v0

    return v0
.end method

.method protected requestPowerStats()V
    .locals 0

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$3800()V

    return-void
.end method

.method protected resumeGeofence(II)Z
    .locals 1

    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->access$3300(II)Z

    move-result v0

    return v0
.end method

.method protected sendNiResponse(II)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->access$3700(II)V

    return-void
.end method

.method protected setAgpsReferenceLocationCellId(IIIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/location/gnss/hal/GnssNative;->access$4100(IIIII)V

    return-void
.end method

.method protected setAgpsServer(ILjava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->access$3900(ILjava/lang/String;I)V

    return-void
.end method

.method protected setAgpsSetId(ILjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->access$4000(ILjava/lang/String;)V

    return-void
.end method

.method protected setPositionMode(IIIIIZ)Z
    .locals 1

    invoke-static/range {p1 .. p6}, Lcom/android/server/location/gnss/hal/GnssNative;->access$700(IIIIIZ)Z

    move-result v0

    return v0
.end method

.method protected start()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$500()Z

    move-result v0

    return v0
.end method

.method protected startAntennaInfoListening()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$1800()Z

    move-result v0

    return v0
.end method

.method protected startBatch(JZ)Z
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->access$2800(JZ)Z

    move-result v0

    return v0
.end method

.method protected startMeasurementCollection(ZZ)Z
    .locals 1

    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->access$2100(ZZ)Z

    move-result v0

    return v0
.end method

.method protected startNavigationMessageCollection()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$1500()Z

    move-result v0

    return v0
.end method

.method protected stop()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$600()Z

    move-result v0

    return v0
.end method

.method protected stopAntennaInfoListening()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$1900()Z

    move-result v0

    return v0
.end method

.method protected stopBatch()V
    .locals 0

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$3000()Z

    return-void
.end method

.method protected stopMeasurementCollection()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$2200()Z

    move-result v0

    return v0
.end method

.method protected stopNavigationMessageCollection()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->access$1600()Z

    move-result v0

    return v0
.end method
