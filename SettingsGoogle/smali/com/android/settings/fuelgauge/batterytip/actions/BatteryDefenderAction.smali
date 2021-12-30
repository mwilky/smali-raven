.class public Lcom/android/settings/fuelgauge/batterytip/actions/BatteryDefenderAction;
.super Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;
.source "BatteryDefenderAction.java"


# instance fields
.field private mSettingsActivity:Lcom/android/settings/SettingsActivity;


# direct methods
.method public static synthetic $r8$lambda$0TJr71YmKBj3gk_y3LDaNsUAalg(Lcom/android/settings/fuelgauge/batterytip/actions/BatteryDefenderAction;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryDefenderAction;->lambda$handlePositiveAction$0(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryDefenderAction;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    return-void
.end method

.method private synthetic lambda$handlePositiveAction$0(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public handlePositiveAction(I)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getResumeChargeIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryDefenderAction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryDefenderAction$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batterytip/actions/BatteryDefenderAction;Landroid/content/Intent;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
