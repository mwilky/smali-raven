.class public Lcom/android/settings/notification/app/ConversationListSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConversationListSettings.java"


# instance fields
.field private mAllConversationsController:Lcom/android/settings/notification/app/AllConversationsPreferenceController;

.field mBackend:Lcom/android/settings/notification/NotificationBackend;

.field protected mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mNoConversationsController:Lcom/android/settings/notification/app/NoConversationsPreferenceController;

.field private mPriorityConversationsController:Lcom/android/settings/notification/app/PriorityConversationsPreferenceController;

.field mPs:Landroid/app/people/IPeopleManager;

.field private mRecentConversationsController:Lcom/android/settings/notification/app/RecentConversationsPreferenceController;

.field private mUpdatedInOnCreate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mControllers:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mUpdatedInOnCreate:Z

    const-string v0, "people"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/people/IPeopleManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/people/IPeopleManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mPs:Landroid/app/people/IPeopleManager;

    return-void
.end method

.method private update()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationBackend;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mPriorityConversationsController:Lcom/android/settings/notification/app/PriorityConversationsPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->updateList(Ljava/util/List;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mAllConversationsController:Lcom/android/settings/notification/app/AllConversationsPreferenceController;

    invoke-virtual {v2, v0}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->updateList(Ljava/util/List;)Z

    move-result v0

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mRecentConversationsController:Lcom/android/settings/notification/app/RecentConversationsPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;->updateList()Z

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mNoConversationsController:Lcom/android/settings/notification/app/NoConversationsPreferenceController;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/app/NoConversationsPreferenceController;->setAvailable(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mNoConversationsController:Lcom/android/settings/notification/app/NoConversationsPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mControllers:Ljava/util/List;

    new-instance v0, Lcom/android/settings/notification/app/NoConversationsPreferenceController;

    invoke-direct {v0, p1}, Lcom/android/settings/notification/app/NoConversationsPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mNoConversationsController:Lcom/android/settings/notification/app/NoConversationsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/settings/notification/app/PriorityConversationsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/notification/app/PriorityConversationsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mPriorityConversationsController:Lcom/android/settings/notification/app/PriorityConversationsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/settings/notification/app/AllConversationsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/notification/app/AllConversationsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mAllConversationsController:Lcom/android/settings/notification/app/AllConversationsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mPs:Landroid/app/people/IPeopleManager;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/notification/app/RecentConversationsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/app/people/IPeopleManager;)V

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mRecentConversationsController:Lcom/android/settings/notification/app/RecentConversationsPreferenceController;

    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mControllers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mControllers:Ljava/util/List;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ConvoListSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x72a

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f150050

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/notification/app/ConversationListSettings;->update()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mUpdatedInOnCreate:Z

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    iget-boolean v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mUpdatedInOnCreate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/app/ConversationListSettings;->mUpdatedInOnCreate:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/app/ConversationListSettings;->update()V

    :goto_0
    return-void
.end method
