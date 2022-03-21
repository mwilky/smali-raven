.class public Lcom/android/systemui/statusbar/connectivity/EthernetSignalController;
.super Lcom/android/systemui/statusbar/connectivity/SignalController;
.source "EthernetSignalController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/connectivity/SignalController<",
        "Lcom/android/systemui/statusbar/connectivity/ConnectivityState;",
        "Lcom/android/settingslib/SignalIcon$IconGroup;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;)V
    .locals 10

    const-string v1, "EthernetSignalController"

    const/4 v3, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/connectivity/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mLastState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    new-instance p2, Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v2, Lcom/android/systemui/statusbar/connectivity/EthernetIcons;->ETHERNET_ICONS:[[I

    sget-object v4, Lcom/android/settingslib/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    const/4 p3, 0x0

    aget v9, v4, p3

    const-string v1, "Ethernet Icons"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/settingslib/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iput-object p2, p1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    return-void
.end method


# virtual methods
.method public cleanState()Lcom/android/systemui/statusbar/connectivity/ConnectivityState;
    .locals 0

    new-instance p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;-><init>()V

    return-object p0
.end method

.method public getContentDescription()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getIcons()Lcom/android/settingslib/SignalIcon$IconGroup;

    move-result-object p0

    iget-object p0, p0, Lcom/android/settingslib/SignalIcon$IconGroup;->contentDesc:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getIcons()Lcom/android/settingslib/SignalIcon$IconGroup;

    move-result-object p0

    iget p0, p0, Lcom/android/settingslib/SignalIcon$IconGroup;->discContentDesc:I

    return p0
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/connectivity/SignalCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/EthernetSignalController;->getContentDescription()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/connectivity/IconState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getCurrentIconId()I

    move-result p0

    invoke-direct {v2, v0, p0, v1}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setEthernetIndicators(Lcom/android/systemui/statusbar/connectivity/IconState;)V

    return-void
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTransportType:I

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/connectivity/SignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    return-void
.end method
