.class public final Lcom/android/server/timedetector/GnssTimeUpdateService;
.super Landroid/os/Binder;
.source "GnssTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timedetector/GnssTimeUpdateService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ATTRIBUTION_TAG:Ljava/lang/String; = "GnssTimeUpdateService"

.field private static final D:Z

.field private static final GNSS_TIME_UPDATE_ALARM_INTERVAL:Ljava/time/Duration;

.field private static final TAG:Ljava/lang/String; = "GnssTimeUpdateService"


# instance fields
.field private mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private mLastSuggestedGnssTime:Landroid/os/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationListener:Landroid/location/LocationListener;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mLocationManagerInternal:Landroid/location/LocationManagerInternal;

.field private final mTimeDetector:Landroid/app/timedetector/TimeDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GnssTimeUpdateService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/timedetector/GnssTimeUpdateService;->D:Z

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/timedetector/GnssTimeUpdateService;->GNSS_TIME_UPDATE_ALARM_INTERVAL:Ljava/time/Duration;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "GnssTimeUpdateService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/timedetector/TimeDetector;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/timedetector/TimeDetector;

    iput-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mTimeDetector:Landroid/app/timedetector/TimeDetector;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    const-class v0, Landroid/location/LocationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManagerInternal;

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/timedetector/GnssTimeUpdateService;->D:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/location/LocationManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/timedetector/GnssTimeUpdateService;Landroid/location/LocationTime;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->suggestGnssTime(Landroid/location/LocationTime;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/timedetector/GnssTimeUpdateService;Landroid/location/LocationListener;)Landroid/location/LocationListener;
    .locals 0

    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/app/AlarmManager$OnAlarmListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/timedetector/GnssTimeUpdateService;Landroid/app/AlarmManager$OnAlarmListener;)Landroid/app/AlarmManager$OnAlarmListener;
    .locals 0

    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    return-object p1
.end method

.method static synthetic access$600()Ljava/time/Duration;
    .locals 1

    sget-object v0, Lcom/android/server/timedetector/GnssTimeUpdateService;->GNSS_TIME_UPDATE_ALARM_INTERVAL:Ljava/time/Duration;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/app/AlarmManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method private suggestGnssTime(Landroid/location/LocationTime;)V
    .locals 7

    sget-boolean v0, Lcom/android/server/timedetector/GnssTimeUpdateService;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssTimeUpdateService"

    const-string v1, "suggestGnssTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/location/LocationTime;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/LocationTime;->getElapsedRealtimeNanos()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    new-instance v4, Landroid/os/TimestampedValue;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    iput-object v4, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLastSuggestedGnssTime:Landroid/os/TimestampedValue;

    new-instance v5, Landroid/app/timedetector/GnssTimeSuggestion;

    invoke-direct {v5, v4}, Landroid/app/timedetector/GnssTimeSuggestion;-><init>(Landroid/os/TimestampedValue;)V

    iget-object v6, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mTimeDetector:Landroid/app/timedetector/TimeDetector;

    invoke-interface {v6, v5}, Landroid/app/timedetector/TimeDetector;->suggestGnssTime(Landroid/app/timedetector/GnssTimeSuggestion;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mContext:Landroid/content/Context;

    const-string v1, "GnssTimeUpdateService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastSuggestedGnssTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLastSuggestedGnssTime:Landroid/os/TimestampedValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    const-string v0, "time updates enabled"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "alarm enabled"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method requestGnssTimeUpdates()V
    .locals 5

    sget-boolean v0, Lcom/android/server/timedetector/GnssTimeUpdateService;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssTimeUpdateService"

    const-string v1, "requestGnssTimeUpdates()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;

    invoke-direct {v0, p0}, Lcom/android/server/timedetector/GnssTimeUpdateService$1;-><init>(Lcom/android/server/timedetector/GnssTimeUpdateService;)V

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    new-instance v1, Landroid/location/LocationRequest$Builder;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v1, v2, v3}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v1

    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    const-string v4, "gps"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    return-void
.end method
