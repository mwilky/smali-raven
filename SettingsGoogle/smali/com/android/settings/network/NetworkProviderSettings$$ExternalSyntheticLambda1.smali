.class public final synthetic Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/NetworkProviderSettings;

.field public final synthetic f$1:Lcom/android/wifitrackerlib/WifiEntry;

.field public final synthetic f$2:Lcom/android/settings/wifi/ConnectedWifiEntryPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/network/NetworkProviderSettings;

    iput-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda1;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    iput-object p3, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda1;->f$2:Lcom/android/settings/wifi/ConnectedWifiEntryPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/network/NetworkProviderSettings;

    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda1;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda1;->f$2:Lcom/android/settings/wifi/ConnectedWifiEntryPreference;

    invoke-static {v0, v1, p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->$r8$lambda$lMwL8anD-XaT7T1-lveagp8XMFw(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
