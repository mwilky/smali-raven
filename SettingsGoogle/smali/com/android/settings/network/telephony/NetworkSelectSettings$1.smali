.class Lcom/android/settings/network/telephony/NetworkSelectSettings$1;
.super Landroid/os/Handler;
.source "NetworkSelectSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/NetworkSelectSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "NetworkSelectSettings"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_c

    const/4 v3, 0x2

    const v4, 0x7f040860

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    const-string v5, ", select request 0x"

    const-string v6, ", waiting for scan results = "

    if-eq v0, v3, :cond_3

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$000(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Network scan complete: scan request 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$100(Lcom/android/settings/network/telephony/NetworkSelectSettings;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$300(Lcom/android/settings/network/telephony/NetworkSelectSettings;)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$200(Lcom/android/settings/network/telephony/NetworkSelectSettings;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$100(Lcom/android/settings/network/telephony/NetworkSelectSettings;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$200(Lcom/android/settings/network/telephony/NetworkSelectSettings;)J

    move-result-wide v5

    cmp-long p1, v0, v5

    if-gez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$500(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_2
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    if-nez p1, :cond_f

    invoke-static {p0, v4}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$400(Lcom/android/settings/network/telephony/NetworkSelectSettings;I)V

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$000(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network scan failure "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": scan request 0x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$100(Lcom/android/settings/network/telephony/NetworkSelectSettings;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$300(Lcom/android/settings/network/telephony/NetworkSelectSettings;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$200(Lcom/android/settings/network/telephony/NetworkSelectSettings;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$100(Lcom/android/settings/network/telephony/NetworkSelectSettings;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$200(Lcom/android/settings/network/telephony/NetworkSelectSettings;)J

    move-result-wide v3

    cmp-long p1, v0, v3

    if-gez p1, :cond_4

    goto/16 :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$500(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_5
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    const p1, 0x7f040d9b

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$400(Lcom/android/settings/network/telephony/NetworkSelectSettings;I)V

    goto/16 :goto_2

    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$100(Lcom/android/settings/network/telephony/NetworkSelectSettings;)J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$200(Lcom/android/settings/network/telephony/NetworkSelectSettings;)J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-gez v0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CellInfoList (drop): "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/android/settings/network/telephony/CellInfoUtil;->cellInfoListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$310(Lcom/android/settings/network/telephony/NetworkSelectSettings;)J

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$300(Lcom/android/settings/network/telephony/NetworkSelectSettings;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-gtz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$000(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    :cond_8
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-virtual {v0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->doAggregation(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CellInfoList: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iget-object v0, v0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-static {v0}, Lcom/android/settings/network/telephony/CellInfoUtil;->cellInfoListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iget-object p1, p1, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-virtual {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->updateAllPreferenceCategory()Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iget-object v1, v0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    if-eqz v1, :cond_a

    iput-object p1, v0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iget-object p1, p1, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    const v0, 0x7f040d86

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_a
    :goto_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_b
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1, v4}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$400(Lcom/android/settings/network/telephony/NetworkSelectSettings;I)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-virtual {p0, v2}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    goto :goto_2

    :cond_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->access$000(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    if-eqz p0, :cond_e

    if-eqz p1, :cond_d

    const p1, 0x7f040d85

    goto :goto_1

    :cond_d
    const p1, 0x7f040d91

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_e
    const-string p0, "No preference to update!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_2
    return-void
.end method
