.class Lcom/android/settings/notification/app/NotificationSoundPreference$1;
.super Landroid/os/AsyncTask;
.source "NotificationSoundPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/app/NotificationSoundPreference;->updateRingtoneName(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/app/NotificationSoundPreference;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/app/NotificationSoundPreference;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/app/NotificationSoundPreference;

    iput-object p2, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->val$uri:Landroid/net/Uri;

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/app/NotificationSoundPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x1040796

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/app/NotificationSoundPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f040ea3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.resource"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/app/NotificationSoundPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f040eae

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/app/NotificationSoundPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->val$uri:Landroid/net/Uri;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p0, v0, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/app/NotificationSoundPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->onPostExecute(Ljava/lang/CharSequence;)V

    return-void
.end method
