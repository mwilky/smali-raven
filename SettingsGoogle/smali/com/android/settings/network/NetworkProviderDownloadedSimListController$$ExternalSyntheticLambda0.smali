.class public final synthetic Lcom/android/settings/network/NetworkProviderDownloadedSimListController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/NetworkProviderDownloadedSimListController;

.field public final synthetic f$1:Landroid/telephony/SubscriptionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/NetworkProviderDownloadedSimListController;Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimListController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/NetworkProviderDownloadedSimListController;

    iput-object p2, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimListController$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/SubscriptionInfo;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimListController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/NetworkProviderDownloadedSimListController;

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimListController$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/SubscriptionInfo;

    invoke-static {v0, p0, p1}, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->$r8$lambda$y1f3MgF_yLVq951-RL0GxSSmF0Y(Lcom/android/settings/network/NetworkProviderDownloadedSimListController;Landroid/telephony/SubscriptionInfo;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
