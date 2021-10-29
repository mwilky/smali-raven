.class public Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
.super Ljava/lang/Object;
.source "ConfigurationInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezonedetector/ConfigurationInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAutoDetectionEnabled:Z

.field private mGeoDetectionEnabled:Z

.field private mGeoDetectionSupported:Z

.field private mLocationEnabled:Z

.field private mTelephonyDetectionSupported:Z

.field private mUserConfigAllowed:Z

.field private final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/timezonedetector/ConfigurationInternal;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->access$700(Lcom/android/server/timezonedetector/ConfigurationInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserId:I

    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->access$800(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->access$900(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mTelephonyDetectionSupported:Z

    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->access$1000(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionSupported:Z

    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->access$1100(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabled:Z

    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->access$1200(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mLocationEnabled:Z

    invoke-static {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->access$1300(Lcom/android/server/timezonedetector/ConfigurationInternal;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mTelephonyDetectionSupported:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionSupported:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mLocationEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionEnabled:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/android/server/timezonedetector/ConfigurationInternal;
    .locals 2

    new-instance v0, Lcom/android/server/timezonedetector/ConfigurationInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal;-><init>(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;Lcom/android/server/timezonedetector/ConfigurationInternal$1;)V

    return-object v0
.end method

.method public setAutoDetectionEnabled(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabled:Z

    return-object p0
.end method

.method public setGeoDetectionEnabled(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionEnabled:Z

    return-object p0
.end method

.method public setGeoDetectionFeatureSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionSupported:Z

    return-object p0
.end method

.method public setLocationEnabled(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mLocationEnabled:Z

    return-object p0
.end method

.method public setTelephonyDetectionFeatureSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mTelephonyDetectionSupported:Z

    return-object p0
.end method

.method public setUserConfigAllowed(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    return-object p0
.end method
