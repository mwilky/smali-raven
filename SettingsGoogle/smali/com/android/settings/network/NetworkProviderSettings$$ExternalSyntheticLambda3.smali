.class public final synthetic Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/settingslib/wifi/WifiEntryPreference$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/NetworkProviderSettings;

.field public final synthetic f$1:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/network/NetworkProviderSettings;

    iput-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda3;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    return-void
.end method


# virtual methods
.method public final onButtonClick(Lcom/android/settingslib/wifi/WifiEntryPreference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/network/NetworkProviderSettings;

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda3;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {v0, p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->$r8$lambda$0nI1LM9X74gYUyLCvjy_vq2lftA(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settingslib/wifi/WifiEntryPreference;)V

    return-void
.end method
