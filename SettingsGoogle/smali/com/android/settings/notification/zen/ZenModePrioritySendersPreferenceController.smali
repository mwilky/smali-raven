.class public Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenModePrioritySendersPreferenceController.java"


# static fields
.field private static final ALL_CONTACTS_INTENT:Landroid/content/Intent;

.field private static final FALLBACK_INTENT:Landroid/content/Intent;

.field static final KEY_ANY:Ljava/lang/String; = "senders_anyone"

.field static final KEY_CONTACTS:Ljava/lang/String; = "senders_contacts"

.field static final KEY_NONE:Ljava/lang/String; = "senders_none"

.field static final KEY_STARRED:Ljava/lang/String; = "senders_starred_contacts"

.field private static final STARRED_CONTACTS_INTENT:Landroid/content/Intent;


# instance fields
.field private final mIsMessages:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mRadioButtonClickListener:Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;

.field private mRadioButtonPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/widget/RadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.LIST_DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->ALL_CONTACTS_INTENT:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.LIST_STARRED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->STARRED_CONTACTS_INTENT:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->FALLBACK_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mRadioButtonPreferences:Ljava/util/List;

    new-instance p1, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController$1;-><init>(Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mRadioButtonClickListener:Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;

    iput-boolean p4, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mIsMessages:Z

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    sget-object p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->FALLBACK_INTENT:Landroid/content/Intent;

    const-string p1, "android.intent.category.APP_CONTACTS"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->keyToSetting(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->getPrioritySenders()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mIsMessages:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$400()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->STARRED_CONTACTS_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->ALL_CONTACTS_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->FALLBACK_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getPrioritySenders()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mIsMessages:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityMessageSenders()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityCallSenders()I

    move-result p0

    return p0
.end method

.method private getSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "senders_none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "senders_anyone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "senders_contacts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_3
    const-string v0, "senders_starred_contacts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mIsMessages:Z

    if-eqz p0, :cond_2

    const p0, 0x7f0417b8

    goto :goto_2

    :cond_2
    const p0, 0x7f0417b7

    :goto_2
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getContactsNumberSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getStarredContactsSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x444c2b2c -> :sswitch_3
        -0x7ef016c -> :sswitch_2
        0x66d5177b -> :sswitch_1
        0x695a95f9 -> :sswitch_0
    .end sparse-switch
.end method

.method private getWidgetClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 4

    const-string v0, "senders_contacts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "senders_starred_contacts"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->isStarredIntentValid()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->isContactsIntentValid()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v3

    :cond_2
    new-instance v0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController$2;-><init>(Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;Ljava/lang/String;)V

    return-object v0
.end method

.method private isContactsIntentValid()Z
    .locals 2

    sget-object v0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->ALL_CONTACTS_INTENT:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->FALLBACK_INTENT:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isStarredIntentValid()Z
    .locals 2

    sget-object v0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->STARRED_CONTACTS_INTENT:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->FALLBACK_INTENT:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static keyToSetting(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "senders_none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "senders_anyone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_2
    const-string v0, "senders_contacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_1

    :sswitch_3
    const-string v0, "senders_starred_contacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :cond_0
    :goto_0
    move p0, v2

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v4, :cond_2

    if-eq p0, v3, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    return v4

    :cond_3
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x444c2b2c -> :sswitch_3
        -0x7ef016c -> :sswitch_2
        0x66d5177b -> :sswitch_1
        0x695a95f9 -> :sswitch_0
    .end sparse-switch
.end method

.method private makeRadioPreference(Ljava/lang/String;I)Lcom/android/settingslib/widget/RadioButtonPreference;
    .locals 2

    new-instance v0, Lcom/android/settingslib/widget/RadioButtonPreference;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mRadioButtonClickListener:Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;

    invoke-virtual {v0, p2}, Lcom/android/settingslib/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;)V

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->getWidgetClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/RadioButtonPreference;->setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mRadioButtonPreferences:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private updateSummaries()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mRadioButtonPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->getSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v1, "senders_anyone"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x7f041817

    const-string v2, "senders_starred_contacts"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settingslib/widget/RadioButtonPreference;

    const v0, 0x7f041814

    const-string v2, "senders_contacts"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settingslib/widget/RadioButtonPreference;

    const v0, 0x7f041813

    invoke-direct {p0, v1, v0}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settingslib/widget/RadioButtonPreference;

    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mIsMessages:Z

    if-eqz v0, :cond_0

    const v0, 0x7f041823

    goto :goto_0

    :cond_0
    const v0, 0x7f041822

    :goto_0
    const-string v1, "senders_none"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->updateSummaries()V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->updateSummaries()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->getPrioritySenders()I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->mRadioButtonPreferences:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->keyToSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
