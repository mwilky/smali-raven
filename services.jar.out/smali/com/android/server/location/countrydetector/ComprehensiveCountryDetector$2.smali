.class public Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;
.super Ljava/lang/Object;
.source "ComprehensiveCountryDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->runAfterDetectionAsync(Landroid/location/Country;Landroid/location/Country;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

.field public final synthetic val$country:Landroid/location/Country;

.field public final synthetic val$detectedCountry:Landroid/location/Country;

.field public final synthetic val$notifyChange:Z

.field public final synthetic val$startLocationBasedDetection:Z


# direct methods
.method public constructor <init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;Landroid/location/Country;Landroid/location/Country;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    iput-object p2, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$country:Landroid/location/Country;

    iput-object p3, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$detectedCountry:Landroid/location/Country;

    iput-boolean p4, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$notifyChange:Z

    iput-boolean p5, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$startLocationBasedDetection:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    iget-object v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$country:Landroid/location/Country;

    iget-object v2, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$detectedCountry:Landroid/location/Country;

    iget-boolean v3, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$notifyChange:Z

    iget-boolean p0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$startLocationBasedDetection:Z

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->runAfterDetection(Landroid/location/Country;Landroid/location/Country;ZZ)V

    return-void
.end method
