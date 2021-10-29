.class public final Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "TimeZoneDetectorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezonedetector/TimeZoneDetectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    nop

    invoke-static {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getInstance(Landroid/content/Context;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    move-result-object v2

    nop

    invoke-static {v0, v1, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->create(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/ServiceConfigAccessor;)Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    move-result-object v3

    new-instance v4, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;

    invoke-direct {v4, v0, v1, v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)V

    const-class v5, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    invoke-virtual {p0, v5, v4}, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {v0, v1, v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->access$000(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    move-result-object v5

    const-string v6, "time_zone_detector"

    invoke-virtual {p0, v6, v5}, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
