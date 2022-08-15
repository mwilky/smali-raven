.class public Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$2;
.super Ljava/util/TimerTask;
.source "LocationBasedCountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->detectCountry()Landroid/location/Country;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$2;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$2;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->stop()V

    iget-object p0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$2;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->-$$Nest$mqueryCountryCode(Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;Landroid/location/Location;)V

    return-void
.end method
