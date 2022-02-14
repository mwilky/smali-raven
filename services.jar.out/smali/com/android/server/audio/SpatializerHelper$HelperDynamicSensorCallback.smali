.class final Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;
.super Landroid/hardware/SensorManager$DynamicSensorCallback;
.source "SpatializerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/SpatializerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HelperDynamicSensorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/SpatializerHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/SpatializerHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-direct {p0}, Landroid/hardware/SensorManager$DynamicSensorCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/SpatializerHelper;Lcom/android/server/audio/SpatializerHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;)V

    return-void
.end method


# virtual methods
.method public onDynamicSensorConnected(Landroid/hardware/Sensor;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->access$400(Lcom/android/server/audio/SpatializerHelper;)V

    return-void
.end method

.method public onDynamicSensorDisconnected(Landroid/hardware/Sensor;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->access$400(Lcom/android/server/audio/SpatializerHelper;)V

    return-void
.end method
