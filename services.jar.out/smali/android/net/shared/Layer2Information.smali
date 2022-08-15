.class public Landroid/net/shared/Layer2Information;
.super Ljava/lang/Object;
.source "Layer2Information.java"


# instance fields
.field public final mBssid:Landroid/net/MacAddress;

.field public final mCluster:Ljava/lang/String;

.field public final mL2Key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/MacAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/shared/Layer2Information;->mL2Key:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/shared/Layer2Information;->mCluster:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/shared/Layer2Information;->mBssid:Landroid/net/MacAddress;

    return-void
.end method

.method public static fromStableParcelable(Landroid/net/Layer2InformationParcelable;)Landroid/net/shared/Layer2Information;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/net/shared/Layer2Information;

    iget-object v1, p0, Landroid/net/Layer2InformationParcelable;->l2Key:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/Layer2InformationParcelable;->cluster:Ljava/lang/String;

    iget-object p0, p0, Landroid/net/Layer2InformationParcelable;->bssid:Landroid/net/MacAddress;

    invoke-direct {v0, v1, v2, p0}, Landroid/net/shared/Layer2Information;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/MacAddress;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/net/shared/Layer2Information;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/net/shared/Layer2Information;

    iget-object v0, p0, Landroid/net/shared/Layer2Information;->mL2Key:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/shared/Layer2Information;->mL2Key:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/shared/Layer2Information;->mCluster:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/shared/Layer2Information;->mCluster:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/net/shared/Layer2Information;->mBssid:Landroid/net/MacAddress;

    iget-object p1, p1, Landroid/net/shared/Layer2Information;->mBssid:Landroid/net/MacAddress;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/shared/Layer2Information;->mL2Key:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/shared/Layer2Information;->mCluster:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/net/shared/Layer2Information;->mBssid:Landroid/net/MacAddress;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toStableParcelable()Landroid/net/Layer2InformationParcelable;
    .locals 2

    new-instance v0, Landroid/net/Layer2InformationParcelable;

    invoke-direct {v0}, Landroid/net/Layer2InformationParcelable;-><init>()V

    iget-object v1, p0, Landroid/net/shared/Layer2Information;->mL2Key:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/Layer2InformationParcelable;->l2Key:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/shared/Layer2Information;->mCluster:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/Layer2InformationParcelable;->cluster:Ljava/lang/String;

    iget-object p0, p0, Landroid/net/shared/Layer2Information;->mBssid:Landroid/net/MacAddress;

    iput-object p0, v0, Landroid/net/Layer2InformationParcelable;->bssid:Landroid/net/MacAddress;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "L2Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/shared/Layer2Information;->mL2Key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", Cluster: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/shared/Layer2Information;->mCluster:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", bssid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Landroid/net/shared/Layer2Information;->mBssid:Landroid/net/MacAddress;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
