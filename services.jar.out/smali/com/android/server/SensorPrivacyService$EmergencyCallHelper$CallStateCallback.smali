.class Lcom/android/server/SensorPrivacyService$EmergencyCallHelper$CallStateCallback;
.super Landroid/telephony/TelephonyCallback;
.source "SensorPrivacyService.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper$CallStateCallback;->this$1:Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;Lcom/android/server/SensorPrivacyService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper$CallStateCallback;-><init>(Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper$CallStateCallback;->this$1:Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;

    invoke-static {v0}, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->access$3600(Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;)V

    :cond_0
    return-void
.end method
