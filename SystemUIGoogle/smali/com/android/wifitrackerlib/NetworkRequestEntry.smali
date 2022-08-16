.class public Lcom/android/wifitrackerlib/NetworkRequestEntry;
.super Lcom/android/wifitrackerlib/StandardWifiEntry;
.source "NetworkRequestEntry.java"


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Landroid/net/wifi/WifiManager;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/wifitrackerlib/StandardWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Landroid/net/wifi/WifiManager;Z)V

    return-void
.end method


# virtual methods
.method public final canConnect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final canSetAutoJoinEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final canSetMeteredChoice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final connect(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$WifiEntryConnectCallback;)V
    .locals 0

    return-void
.end method

.method public final getMeteredChoice()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAutoJoinEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isMetered()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isSaved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isSuggestion()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
