.class public final synthetic Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/vcn/VcnContext;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Landroid/os/ParcelUuid;

.field public final synthetic f$3:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field public final synthetic f$4:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

.field public final synthetic f$5:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vcn/VcnContext;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vcn/VcnContext;

    iput-object p2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$$ExternalSyntheticLambda0;->f$2:Landroid/os/ParcelUuid;

    iput-object p4, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iput-object p5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$$ExternalSyntheticLambda0;->f$4:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    iput-object p6, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$$ExternalSyntheticLambda0;->f$5:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8

    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vcn/VcnContext;

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$$ExternalSyntheticLambda0;->f$2:Landroid/os/ParcelUuid;

    iget-object v3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v4, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$$ExternalSyntheticLambda0;->f$4:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    iget-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$$ExternalSyntheticLambda0;->f$5:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    move-object v6, p1

    check-cast v6, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-object v7, p2

    check-cast v7, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    invoke-static/range {v0 .. v7}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->$r8$lambda$5FNNUjngY5ZLKel0p59PtDJdMKc(Lcom/android/server/vcn/VcnContext;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)I

    move-result p0

    return p0
.end method
