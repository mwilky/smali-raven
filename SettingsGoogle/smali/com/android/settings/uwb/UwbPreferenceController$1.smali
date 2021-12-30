.class Lcom/android/settings/uwb/UwbPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "UwbPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/uwb/UwbPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/uwb/UwbPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/uwb/UwbPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/uwb/UwbPreferenceController$1;->this$0:Lcom/android/settings/uwb/UwbPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/uwb/UwbPreferenceController$1;->this$0:Lcom/android/settings/uwb/UwbPreferenceController;

    invoke-static {p1}, Lcom/android/settings/uwb/UwbPreferenceController;->access$000(Lcom/android/settings/uwb/UwbPreferenceController;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    move v1, v0

    :cond_0
    iput-boolean v1, p1, Lcom/android/settings/uwb/UwbPreferenceController;->mAirplaneModeOn:Z

    iget-object p0, p0, Lcom/android/settings/uwb/UwbPreferenceController$1;->this$0:Lcom/android/settings/uwb/UwbPreferenceController;

    invoke-static {p0}, Lcom/android/settings/uwb/UwbPreferenceController;->access$100(Lcom/android/settings/uwb/UwbPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/uwb/UwbPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
