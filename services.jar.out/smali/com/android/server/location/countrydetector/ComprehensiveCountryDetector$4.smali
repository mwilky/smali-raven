.class Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;
.super Landroid/telephony/PhoneStateListener;
.source "ComprehensiveCountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->addPhoneStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;


# direct methods
.method constructor <init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    invoke-static {v0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->access$308(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)I

    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    invoke-static {v0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->access$408(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)I

    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    invoke-static {v0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->access$500(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->access$100(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;ZZ)Landroid/location/Country;

    return-void
.end method
