.class Lcom/android/settings/location/LocationInjectedServiceBasePreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationInjectedServiceBasePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationInjectedServiceBasePreferenceController;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationInjectedServiceBasePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationInjectedServiceBasePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/LocationInjectedServiceBasePreferenceController$1;->this$0:Lcom/android/settings/location/LocationInjectedServiceBasePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "LocationPrefCtrl"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received settings change intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/settings/location/LocationInjectedServiceBasePreferenceController$1;->this$0:Lcom/android/settings/location/LocationInjectedServiceBasePreferenceController;

    iget-object p0, p0, Lcom/android/settings/location/LocationInjectedServiceBasePreferenceController;->mInjector:Lcom/android/settings/location/AppSettingsInjector;

    invoke-virtual {p0}, Lcom/android/settingslib/location/SettingsInjector;->reloadStatusMessages()V

    return-void
.end method
