.class Lcom/android/settings/wifi/slice/ConnectToWifiHandler$WifiEntryConnectCallback;
.super Ljava/lang/Object;
.source "ConnectToWifiHandler.java"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/slice/ConnectToWifiHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WifiEntryConnectCallback"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/slice/ConnectToWifiHandler$WifiEntryConnectCallback;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wifi/slice/ConnectToWifiHandler$WifiEntryConnectCallback;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-void
.end method


# virtual methods
.method public onConnectResult(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/wifi/slice/ConnectToWifiHandler$WifiEntryConnectCallback;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/wifi/WifiDialogActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/android/settings/wifi/slice/ConnectToWifiHandler$WifiEntryConnectCallback;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_chosen_wifientry_key"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/wifi/slice/ConnectToWifiHandler$WifiEntryConnectCallback;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/wifi/slice/ConnectToWifiHandler$WifiEntryConnectCallback;->mContext:Landroid/content/Context;

    const p1, 0x7f041673

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
