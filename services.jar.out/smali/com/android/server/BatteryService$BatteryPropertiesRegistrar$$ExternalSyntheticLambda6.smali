.class public final synthetic Lcom/android/server/BatteryService$BatteryPropertiesRegistrar$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->lambda$scheduleUpdate$6$BatteryService$BatteryPropertiesRegistrar()V

    return-void
.end method
