.class public final synthetic Lcom/google/android/settings/fuelgauge/BatteryBroadcastReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/settings/fuelgauge/BatteryBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/settings/fuelgauge/BatteryBroadcastReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/BatteryBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/BatteryBroadcastReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/google/android/settings/fuelgauge/BatteryBroadcastReceiver;->$r8$lambda$hXivAYsMRi0SFVbKWyMDhmZt7nA(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
