.class public Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WsuPostProvisioningReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;
    }
.end annotation


# instance fields
.field mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$GxTnsmuYZzXivF_f_Mx0q2DNsXI(Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$ScanResultsCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;->lambda$onReceive$0(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$ScanResultsCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hp-FM2cYV8RYKjQhsmBJz0pMRds(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;->lambda$getSuggestedNonPasspointCandidates$4(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$L-glu7Oo-XMttF9u6Lb5c-fbN3E(Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;->lambda$getConnectingCandidate$2(Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Mt9TqvBqY5Q-zYE0XlOa5fc5iCQ(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;->lambda$getSavedNonPasspointCandidates$3(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lU6UaVaWOiOhptmEq19e5e88BSo(Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;->lambda$connectToCandidate$1(Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;Ljava/util/Optional;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;->connectToCandidate(Ljava/util/Optional;Ljava/lang/String;)V

    return-void
.end method

.method private connectToCandidate(Ljava/util/Optional;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance p2, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private getHomeCandidateIfMatched(Landroid/net/wifi/WifiConfiguration;Ljava/util/Map$Entry;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/Map$Entry<",
            "Landroid/net/wifi/WifiNetworkSuggestion;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;)",
            "Ljava/util/Optional<",
            "Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiNetworkSuggestion;

    invoke-virtual {p0}, Landroid/net/wifi/WifiNetworkSuggestion;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/android/wifitrackerlib/Utils;->getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiNetworkSuggestion;

    invoke-virtual {p2}, Landroid/net/wifi/WifiNetworkSuggestion;->getPriority()I

    move-result p2

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;-><init>(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;ZI)V

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$connectToCandidate$1(Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p1, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;->wifiConfigFromSystem:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying connect to network"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;->wifiConfigFromSystem:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", network id: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;->wifiConfigFromSystem:Landroid/net/wifi/WifiConfiguration;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WsuPostProvisioningReceiver"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$getConnectingCandidate$2(Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;)I
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;->isRoaming:Z

    if-nez v0, :cond_0

    iget-boolean v1, p1, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;->isRoaming:Z

    if-eqz v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;->isRoaming:Z

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget v0, p0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;->priority:I

    iget v1, p1, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;->priority:I

    if-eq v0, v1, :cond_2

    sub-int/2addr v1, v0

    return v1

    :cond_2
    iget-object p1, p1, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;->bestScanResult:Landroid/net/wifi/ScanResult;

    iget p1, p1, Landroid/net/wifi/ScanResult;->level:I

    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;->bestScanResult:Landroid/net/wifi/ScanResult;

    iget p0, p0, Landroid/net/wifi/ScanResult;->level:I

    sub-int/2addr p1, p0

    return p1
.end method

.method private static synthetic lambda$getSavedNonPasspointCandidates$3(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getSuggestedNonPasspointCandidates$4(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onReceive$0(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$ScanResultsCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->registerScanResultsCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$ScanResultsCallback;)V

    return-void
.end method


# virtual methods
.method getConnectingCandidate(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiNetworkSuggestion;",
            ">;Z)",
            "Ljava/util/Optional<",
            "Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;->getPasspointCandidates(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;->getSuggestedNonPasspointCandidates(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;->getSavedNonPasspointCandidates(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "WsuPostProvisioningReceiver"

    const-string p1, "There is no any matched candidate network for connecting."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$$ExternalSyntheticLambda1;->INSTANCE:Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$$ExternalSyntheticLambda1;

    invoke-interface {v1, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    const/4 p0, 0x0

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method getPasspointCandidates(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiNetworkSuggestion;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p3}, Landroid/net/wifi/WifiManager;->getAllMatchingWifiConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiNetworkSuggestion;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNetworkSuggestion;->getPasspointConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    new-instance v8, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;

    invoke-static {v5}, Lcom/android/wifitrackerlib/Utils;->getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/WifiNetworkSuggestion;->getPriority()I

    move-result v9

    invoke-direct {v8, v4, v5, v6, v9}, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;-><init>(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;ZI)V

    invoke-interface {p3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;

    invoke-static {v3}, Lcom/android/wifitrackerlib/Utils;->getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiNetworkSuggestion;->getPriority()I

    move-result v6

    invoke-direct {v5, v4, v3, v7, v6}, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;-><init>(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;ZI)V

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object p3
.end method

.method getSavedNonPasspointCandidates(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiNetworkSuggestion;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p2, p3}, Landroid/net/wifi/WifiManager;->getMatchingScanResults(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v1, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiNetworkSuggestion;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNetworkSuggestion;->getPasspointConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v2, p3}, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;->getHomeCandidateIfMatched(Landroid/net/wifi/WifiConfiguration;Ljava/util/Map$Entry;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "matched a saved network: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "WsuPostProvisioningReceiver"

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method getSuggestedNonPasspointCandidates(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiNetworkSuggestion;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p2, p3}, Landroid/net/wifi/WifiManager;->getMatchingScanResults(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p3}, Landroid/net/wifi/WifiManager;->getWifiConfigForMatchedNetworkSuggestionsSharedWithUser(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v1, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "matched suggestions size "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "WsuPostProvisioningReceiver"

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiNetworkSuggestion;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNetworkSuggestion;->getPasspointConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v2, p3}, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;->getHomeCandidateIfMatched(Landroid/net/wifi/WifiConfiguration;Ljava/util/Map$Entry;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.wsu.action.WSU_POST_PROVISIONING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WsuPostProvisioningReceiver"

    const-string v1, "process the provisioned profiles, connect to the best available network."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "provisioned_profiles"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v1, 0x0

    const-string v2, "using_suggestion_api"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez p1, :cond_2

    const-string p0, "WifiManger is not available."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v7

    new-instance p1, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$1;

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$1;-><init>(Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;Ljava/lang/String;Ljava/util/List;ZLandroid/content/BroadcastReceiver$PendingResult;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$ScanResultsCallback;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "Invalid data received, do nothing."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
