.class public Lcom/android/server/timedetector/GnssTimeUpdateService$1;
.super Ljava/lang/Object;
.source "GnssTimeUpdateService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/timedetector/GnssTimeUpdateService;->requestGnssTimeUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/GnssTimeUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 11

    invoke-static {}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$sfgetD()Z

    move-result p1

    const-string v0, "GnssTimeUpdateService"

    if-eqz p1, :cond_0

    const-string p1, "onLocationChanged()"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-static {p1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$fgetmLocationManagerInternal(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/location/LocationManagerInternal;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/LocationManagerInternal;->getGnssTimeMillis()Landroid/location/LocationTime;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-static {v0, p1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$msuggestGnssTime(Lcom/android/server/timedetector/GnssTimeUpdateService;Landroid/location/LocationTime;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$sfgetD()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "getGnssTimeMillis() returned null"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-static {p1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$fgetmLocationManager(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/location/LocationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-static {v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$fgetmLocationListener(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/location/LocationListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$fputmLocationListener(Lcom/android/server/timedetector/GnssTimeUpdateService;Landroid/location/LocationListener;)V

    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    new-instance v0, Lcom/android/server/timedetector/GnssTimeUpdateService$1$1;

    invoke-direct {v0, p0}, Lcom/android/server/timedetector/GnssTimeUpdateService$1$1;-><init>(Lcom/android/server/timedetector/GnssTimeUpdateService$1;)V

    invoke-static {p1, v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$fputmAlarmListener(Lcom/android/server/timedetector/GnssTimeUpdateService;Landroid/app/AlarmManager$OnAlarmListener;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$sfgetGNSS_TIME_UPDATE_ALARM_INTERVAL()Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    add-long v6, v0, v2

    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-static {p1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$fgetmAlarmManager(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/app/AlarmManager;

    move-result-object v4

    const/4 v5, 0x2

    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-static {p0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$fgetmAlarmListener(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v9

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const-string v8, "GnssTimeUpdateService"

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method
