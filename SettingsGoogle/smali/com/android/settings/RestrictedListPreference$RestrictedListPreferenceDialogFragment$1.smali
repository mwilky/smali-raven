.class Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;
.super Ljava/lang/Object;
.source "RestrictedListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->getOnItemClickListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$0:Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$0:Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-static {v0}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->-$$Nest$mgetCustomizablePreference(Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;)Lcom/android/settings/RestrictedListPreference;

    move-result-object v0

    if-ltz p2, :cond_2

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-lt p2, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RestrictedListPreference;->-$$Nest$mgetRestrictedItemForEntryValue(Lcom/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;)Lcom/android/settings/RestrictedListPreference$RestrictedItem;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p2, p1

    check-cast p2, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p2

    iget-object v1, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$0:Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-static {v1}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->-$$Nest$mgetLastCheckedPosition(Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object p2, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$0:Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, v0, Lcom/android/settings/RestrictedListPreference$RestrictedItem;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p2, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$0:Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-virtual {v0, p2}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->setClickedDialogEntryIndex(I)V

    :goto_0
    iget-object p2, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$0:Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-static {p2}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->-$$Nest$mgetCustomizablePreference(Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;)Lcom/android/settings/RestrictedListPreference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/CustomListPreference;->isAutoClosePreference()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;->this$0:Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceDialogFragmentCompat;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method
