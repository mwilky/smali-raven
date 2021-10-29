.class Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"

# interfaces
.implements Lcom/android/server/PowerAllowlistInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalPowerAllowlistService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method private constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService;-><init>(Lcom/android/server/DeviceIdleController;)V

    return-void
.end method


# virtual methods
.method public registerTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0, p1}, Lcom/android/server/DeviceIdleController;->access$3200(Lcom/android/server/DeviceIdleController;Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V

    return-void
.end method

.method public unregisterTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0, p1}, Lcom/android/server/DeviceIdleController;->access$3300(Lcom/android/server/DeviceIdleController;Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V

    return-void
.end method
