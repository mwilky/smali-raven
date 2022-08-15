.class public Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "SystemEmergencyHelper.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/injector/SystemEmergencyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmergencyCallTelephonyCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/injector/SystemEmergencyHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .locals 3

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    iget-boolean v1, v0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mIsInEmergencyCall:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallEndRealtimeMs:J

    iget-object p0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mIsInEmergencyCall:Z

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
