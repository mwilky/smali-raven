.class Lcom/android/settings/network/InternetUpdater$2;
.super Landroid/content/BroadcastReceiver;
.source "InternetUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/InternetUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/InternetUpdater;


# direct methods
.method constructor <init>(Lcom/android/settings/network/InternetUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/InternetUpdater$2;->this$0:Lcom/android/settings/network/InternetUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/network/InternetUpdater$2;->this$0:Lcom/android/settings/network/InternetUpdater;

    invoke-static {p1}, Lcom/android/settings/network/InternetUpdater;->access$000(Lcom/android/settings/network/InternetUpdater;)V

    iget-object p1, p0, Lcom/android/settings/network/InternetUpdater$2;->this$0:Lcom/android/settings/network/InternetUpdater;

    invoke-static {p1}, Lcom/android/settings/network/InternetUpdater;->access$100(Lcom/android/settings/network/InternetUpdater;)Lcom/android/settings/network/InternetUpdater$InternetChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/network/InternetUpdater$2;->this$0:Lcom/android/settings/network/InternetUpdater;

    invoke-static {p1}, Lcom/android/settings/network/InternetUpdater;->access$100(Lcom/android/settings/network/InternetUpdater;)Lcom/android/settings/network/InternetUpdater$InternetChangeListener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/network/InternetUpdater$2;->this$0:Lcom/android/settings/network/InternetUpdater;

    invoke-static {p0}, Lcom/android/settings/network/InternetUpdater;->access$200(Lcom/android/settings/network/InternetUpdater;)Landroid/net/wifi/WifiManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/settings/network/InternetUpdater$InternetChangeListener;->onWifiEnabledChanged(Z)V

    :cond_0
    return-void
.end method
