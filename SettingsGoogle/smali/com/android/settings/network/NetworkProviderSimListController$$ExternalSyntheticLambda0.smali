.class public final synthetic Lcom/android/settings/network/NetworkProviderSimListController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/NetworkProviderSimListController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/telephony/SubscriptionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/NetworkProviderSimListController;ILandroid/telephony/SubscriptionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSimListController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/NetworkProviderSimListController;

    iput p2, p0, Lcom/android/settings/network/NetworkProviderSimListController$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/settings/network/NetworkProviderSimListController$$ExternalSyntheticLambda0;->f$2:Landroid/telephony/SubscriptionInfo;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSimListController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/NetworkProviderSimListController;

    iget v1, p0, Lcom/android/settings/network/NetworkProviderSimListController$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSimListController$$ExternalSyntheticLambda0;->f$2:Landroid/telephony/SubscriptionInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/settings/network/NetworkProviderSimListController;->$r8$lambda$HJX5vYumPuqPIu_hZSFCEDla_fg(Lcom/android/settings/network/NetworkProviderSimListController;ILandroid/telephony/SubscriptionInfo;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
