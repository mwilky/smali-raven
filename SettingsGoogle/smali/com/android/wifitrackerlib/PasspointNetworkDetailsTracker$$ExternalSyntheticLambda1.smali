.class public final synthetic Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;

    check-cast p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->$r8$lambda$kIKyFFp_tPQqRnx1jdrmfli3CQ4(Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;Landroid/net/wifi/hotspot2/PasspointConfiguration;)Z

    move-result p0

    return p0
.end method
