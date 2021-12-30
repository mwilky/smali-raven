.class public Lcom/android/settings/notification/app/PriorityConversationsPreferenceController;
.super Lcom/android/settings/notification/app/ConversationListPreferenceController;
.source "PriorityConversationsPreferenceController.java"


# instance fields
.field private mConversations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ConversationListPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "important_conversations"

    return-object p0
.end method

.method getSummaryPreference()Landroidx/preference/Preference;
    .locals 1

    new-instance v0, Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOrder(I)V

    const p0, 0x7f040a67

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-object v0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method matchesFilter(Landroid/service/notification/ConversationChannelWrapper;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationBackend;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/PriorityConversationsPreferenceController;->mConversations:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController;->mConversationComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/settings/notification/app/PriorityConversationsPreferenceController;->mConversations:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->populateList(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    return-void
.end method
