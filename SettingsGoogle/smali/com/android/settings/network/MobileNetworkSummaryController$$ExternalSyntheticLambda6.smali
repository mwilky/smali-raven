.class public final synthetic Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/MobileNetworkSummaryController;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/MobileNetworkSummaryController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda6;->f$0:Lcom/android/settings/network/MobileNetworkSummaryController;

    iput-object p2, p0, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda6;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda6;->f$0:Lcom/android/settings/network/MobileNetworkSummaryController;

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda6;->f$1:Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;->$r8$lambda$jVanGiy73oyHBB2K6OQtc03B9-Q(Lcom/android/settings/network/MobileNetworkSummaryController;Ljava/util/List;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
