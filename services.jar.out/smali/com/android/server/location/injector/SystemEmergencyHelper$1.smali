.class Lcom/android/server/location/injector/SystemEmergencyHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemEmergencyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/injector/SystemEmergencyHelper;->onSystemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;


# direct methods
.method constructor <init>(Lcom/android/server/location/injector/SystemEmergencyHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$1;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$1;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$1;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    iget-object v2, v1, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v3, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/location/injector/SystemEmergencyHelper;->mIsInEmergencyCall:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
