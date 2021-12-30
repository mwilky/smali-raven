.class public Lcom/android/settings/notification/app/ChannelListPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "ChannelListPreferenceController.java"


# instance fields
.field private mChannelGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mPreference:Landroidx/preference/PreferenceCategory;


# direct methods
.method public static synthetic $r8$lambda$Li9K-7r5milXeDSQTHk57-TSiwo(Lcom/android/settings/notification/app/ChannelListPreferenceController;Landroid/app/NotificationChannelGroup;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->lambda$addOrUpdateGroupToggle$0(Landroid/app/NotificationChannelGroup;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$W4YVx9aTc-mgSMqNPjRhZVTmwTg(Lcom/android/settings/notification/app/ChannelListPreferenceController;Landroid/app/NotificationChannel;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->lambda$updateSingleChannelPrefs$1(Landroid/app/NotificationChannel;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/app/ChannelListPreferenceController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController;->mChannelGroupList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settings/notification/app/ChannelListPreferenceController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController;->mChannelGroupList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/notification/app/ChannelListPreferenceController;)Landroidx/preference/PreferenceCategory;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method private addOrUpdateGroupToggle(Landroidx/preference/PreferenceGroup;Landroid/app/NotificationChannelGroup;)Landroidx/preference/Preference;
    .locals 8

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    move v3, v2

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    move v3, v1

    :goto_0
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f040e80

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v4, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isChannelGroupBlockable(Landroid/app/NotificationChannelGroup;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    new-instance v1, Lcom/android/settings/notification/app/ChannelListPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/notification/app/ChannelListPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/app/ChannelListPreferenceController;Landroid/app/NotificationChannelGroup;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    if-eqz v3, :cond_2

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-object v0
.end method

.method private findOrCreateChannelPrefForKey(Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Lcom/android/settings/widget/PrimarySwitchPreference;
    .locals 4

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    invoke-virtual {p1, p3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/settings/widget/PrimarySwitchPreference;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p3}, Landroidx/preference/Preference;->setOrder(I)V

    check-cast v2, Lcom/android/settings/widget/PrimarySwitchPreference;

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/settings/widget/PrimarySwitchPreference;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/PrimarySwitchPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method

.method private findOrCreateGroupCategoryForKey(Landroidx/preference/PreferenceCategory;Ljava/lang/String;I)Landroidx/preference/PreferenceCategory;
    .locals 4

    if-nez p2, :cond_0

    const-string p2, "categories"

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge p3, v0, :cond_1

    invoke-virtual {p1, p3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    return-object v1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, p3}, Landroidx/preference/Preference;->setOrder(I)V

    check-cast v2, Landroidx/preference/PreferenceCategory;

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method

.method private getAlertingIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f0202e8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-object v0
.end method

.method private synthetic lambda$addOrUpdateGroupToggle$0(Landroid/app/NotificationChannelGroup;Landroidx/preference/Preference;)Z
    .locals 3

    check-cast p2, Landroidx/preference/SwitchPreference;

    invoke-virtual {p2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    iget-object p2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p2, v2, v1, p1}, Lcom/android/settings/notification/NotificationBackend;->updateChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->onGroupBlockStateChanged(Landroid/app/NotificationChannelGroup;)V

    return v0
.end method

.method private synthetic lambda$updateSingleChannelPrefs$1(Landroid/app/NotificationChannel;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v0, 0x2

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result p3

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Landroid/app/NotificationChannel;->setImportance(I)V

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/app/NotificationChannel;->lockFields(I)V

    check-cast p2, Lcom/android/settings/widget/PrimarySwitchPreference;

    const p3, 0x7f020125

    invoke-virtual {p2, p3}, Landroidx/preference/Preference;->setIcon(I)V

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p3

    if-le p3, v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->getAlertingIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object p2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object p3, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p2, p3, p0, p1}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    const/4 p0, 0x1

    return p0
.end method

.method private updateGroupList(Landroidx/preference/PreferenceCategory;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceCategory;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v5}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6, v4}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->findOrCreateGroupCategoryForKey(Landroidx/preference/PreferenceCategory;Ljava/lang/String;I)Landroidx/preference/PreferenceCategory;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v5, v6}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->updateGroupPreferences(Landroid/app/NotificationChannelGroup;Landroidx/preference/PreferenceGroup;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    const/4 p2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v0, :cond_1

    move v1, p2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-eq p0, v0, :cond_2

    move v3, p2

    :cond_2
    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method private updateGroupPreferences(Landroid/app/NotificationChannelGroup;Landroidx/preference/PreferenceGroup;)V
    .locals 9

    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const v2, 0x7f040e29

    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p2, p1}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->addOrUpdateGroupToggle(Landroidx/preference/PreferenceGroup;Landroid/app/NotificationChannelGroup;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v3

    :goto_2
    sget-object v6, Lcom/android/settings/notification/app/NotificationPreferenceController;->CHANNEL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {p0, p2, v7, v8}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->findOrCreateChannelPrefForKey(Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Lcom/android/settings/widget/PrimarySwitchPreference;

    move-result-object v7

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v8

    invoke-direct {p0, v7, v6, v8}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->updateSingleChannelPrefs(Lcom/android/settings/widget/PrimarySwitchPreference;Landroid/app/NotificationChannel;Z)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez v2, :cond_5

    if-eq v0, p1, :cond_5

    move v0, v4

    goto :goto_4

    :cond_5
    move v0, v5

    :goto_4
    if-eq p0, p1, :cond_6

    goto :goto_5

    :cond_6
    move v4, v5

    :goto_5
    if-nez v0, :cond_7

    if-eqz v4, :cond_8

    :cond_7
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_6

    :cond_8
    return-void
.end method

.method private updateSingleChannelPrefs(Lcom/android/settings/widget/PrimarySwitchPreference;Landroid/app/NotificationChannel;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isChannelBlockable(Landroid/app/NotificationChannel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isChannelConfigurable(Landroid/app/NotificationChannel;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    invoke-virtual {p1, p3}, Lcom/android/settings/widget/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p3

    const/4 v0, 0x2

    if-le p3, v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->getAlertingIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    const p3, 0x7f020125

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setIcon(I)V

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/TwoTargetPreference;->setIconSize(I)V

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByChannel:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    invoke-static {p3, v0, v2}, Lcom/android/settings/notification/NotificationBackend;->getSentSummary(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;Z)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p3

    if-eqz p3, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/settings/widget/PrimarySwitchPreference;->setChecked(Z)V

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    const-string v2, "uid"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    const-string v2, "package"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fromSettings"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p3

    const v0, 0x7f040e27

    invoke-virtual {p3, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p3

    const/16 v0, 0x48

    invoke-virtual {p3, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    new-instance p3, Lcom/android/settings/notification/app/ChannelListPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2}, Lcom/android/settings/notification/app/ChannelListPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/app/ChannelListPreferenceController;Landroid/app/NotificationChannel;)V

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "channels"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "miscellaneous"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method isIncludedInFilter()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onGroupBlockStateChanged(Landroid/app/NotificationChannelGroup;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->updateGroupPreferences(Landroid/app/NotificationChannelGroup;Landroidx/preference/PreferenceGroup;)V

    :cond_1
    return-void
.end method

.method updateFullList(Landroidx/preference/PreferenceCategory;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceCategory;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p2

    const/4 v0, 0x1

    const v1, 0x7f040df0

    const-string v2, "zeroCategories"

    const v3, 0x7f040e28

    const/4 v4, 0x0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {p0, v4}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    new-instance p2, Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    new-instance p1, Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->updateGroupList(Landroidx/preference/PreferenceCategory;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    new-instance p1, Lcom/android/settings/notification/app/ChannelListPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/app/ChannelListPreferenceController$1;-><init>(Lcom/android/settings/notification/app/ChannelListPreferenceController;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
