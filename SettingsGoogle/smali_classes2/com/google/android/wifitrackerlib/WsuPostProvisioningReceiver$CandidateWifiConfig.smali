.class final Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;
.super Ljava/lang/Object;
.source "WsuPostProvisioningReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CandidateWifiConfig"
.end annotation


# instance fields
.field public bestScanResult:Landroid/net/wifi/ScanResult;

.field public isRoaming:Z

.field public priority:I

.field public wifiConfigFromSystem:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;->wifiConfigFromSystem:Landroid/net/wifi/WifiConfiguration;

    iput-object p2, p0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;->bestScanResult:Landroid/net/wifi/ScanResult;

    iput-boolean p3, p0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;->isRoaming:Z

    iput p4, p0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;->priority:I

    return-void
.end method
