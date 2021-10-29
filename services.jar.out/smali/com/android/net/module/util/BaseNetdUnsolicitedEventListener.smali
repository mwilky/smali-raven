.class public Lcom/android/net/module/util/BaseNetdUnsolicitedEventListener;
.super Landroid/net/INetdUnsolicitedEventListener$Stub;
.source "BaseNetdUnsolicitedEventListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/net/INetdUnsolicitedEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    const-string v0, "850353de5d19a0dd718f8fd20791f0532e6a34c7"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public onInterfaceAdded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInterfaceAddressRemoved(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onInterfaceAddressUpdated(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onInterfaceChanged(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onInterfaceClassActivityChanged(ZIJI)V
    .locals 0

    return-void
.end method

.method public onInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onInterfaceRemoved(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onQuotaLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRouteChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStrictCleartextDetected(ILjava/lang/String;)V
    .locals 0

    return-void
.end method
