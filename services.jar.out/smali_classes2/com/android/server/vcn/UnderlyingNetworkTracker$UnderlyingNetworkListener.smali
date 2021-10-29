.class Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "UnderlyingNetworkTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/UnderlyingNetworkTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnderlyingNetworkListener"
.end annotation


# instance fields
.field private final mUnderlyingNetworkRecordBuilders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Network;",
            "Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/vcn/UnderlyingNetworkTracker;


# direct methods
.method constructor <init>(Lcom/android/server/vcn/UnderlyingNetworkTracker;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/UnderlyingNetworkTracker;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>(I)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;->mUnderlyingNetworkRecordBuilders:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;)Ljava/util/TreeSet;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;->getSortedUnderlyingNetworks()Ljava/util/TreeSet;

    move-result-object v0

    return-object v0
.end method

.method private getSortedUnderlyingNetworks()Ljava/util/TreeSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/UnderlyingNetworkTracker;

    invoke-static {v1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->access$300(Lcom/android/server/vcn/UnderlyingNetworkTracker;)Landroid/os/ParcelUuid;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/UnderlyingNetworkTracker;

    invoke-static {v2}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->access$400(Lcom/android/server/vcn/UnderlyingNetworkTracker;)Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/UnderlyingNetworkTracker;

    invoke-static {v3}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->access$500(Lcom/android/server/vcn/UnderlyingNetworkTracker;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/UnderlyingNetworkTracker;

    invoke-static {v4}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->access$600(Lcom/android/server/vcn/UnderlyingNetworkTracker;)Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->access$700(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;Landroid/os/PersistableBundle;)Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;->mUnderlyingNetworkRecordBuilders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;

    invoke-static {v2}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->access$800(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->access$900(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;)Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;->mUnderlyingNetworkRecordBuilders:Ljava/util/Map;

    new-instance v1, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;-><init>(Landroid/net/Network;Lcom/android/server/vcn/UnderlyingNetworkTracker$1;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onBlockedStatusChanged(Landroid/net/Network;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;->mUnderlyingNetworkRecordBuilders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got blocked status change for unknown key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->access$1200(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v0, p2}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->access$1500(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;Z)V

    invoke-static {v0}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->access$800(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/UnderlyingNetworkTracker;

    invoke-static {v1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->access$1100(Lcom/android/server/vcn/UnderlyingNetworkTracker;)V

    :cond_1
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;->mUnderlyingNetworkRecordBuilders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got capabilities change for unknown key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->access$1200(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v0, p2}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->access$1300(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;Landroid/net/NetworkCapabilities;)V

    invoke-static {v0}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->access$800(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/UnderlyingNetworkTracker;

    invoke-static {v1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->access$1100(Lcom/android/server/vcn/UnderlyingNetworkTracker;)V

    :cond_1
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;->mUnderlyingNetworkRecordBuilders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got link properties change for unknown key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->access$1200(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v0, p2}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->access$1400(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;Landroid/net/LinkProperties;)V

    invoke-static {v0}, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;->access$800(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord$Builder;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/UnderlyingNetworkTracker;

    invoke-static {v1}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->access$1100(Lcom/android/server/vcn/UnderlyingNetworkTracker;)V

    :cond_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;->mUnderlyingNetworkRecordBuilders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/UnderlyingNetworkTracker;

    invoke-static {v0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->access$1100(Lcom/android/server/vcn/UnderlyingNetworkTracker;)V

    return-void
.end method
