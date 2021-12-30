.class public Lcom/android/settings/notification/zen/ZenRulePreference;
.super Lcom/android/settingslib/widget/TwoTargetPreference;
.source "ZenRulePreference.java"


# static fields
.field private static final CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;


# instance fields
.field final mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mChecked:Z

.field final mContext:Landroid/content/Context;

.field final mId:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field mName:Ljava/lang/CharSequence;

.field private mOnCheckBoxClickListener:Landroid/view/View$OnClickListener;

.field final mParent:Landroidx/fragment/app/Fragment;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mPref:Landroidx/preference/Preference;

.field mRule:Landroid/app/AutomaticZenRule;

.field final mServiceListing:Lcom/android/settings/utils/ZenServiceListing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->getConditionProviderConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/zen/ZenRulePreference;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map$Entry;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/notification/zen/ZenRulePreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/ZenRulePreference$2;-><init>(Lcom/android/settings/notification/zen/ZenRulePreference;)V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mOnCheckBoxClickListener:Landroid/view/View$OnClickListener;

    const v0, 0x7f06018f

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AutomaticZenRule;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mName:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mPm:Landroid/content/pm/PackageManager;

    new-instance p2, Lcom/android/settings/utils/ZenServiceListing;

    sget-object p3, Lcom/android/settings/notification/zen/ZenRulePreference;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    invoke-direct {p2, p1, p3}, Lcom/android/settings/utils/ZenServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings/utils/ManagedServiceSettings$Config;)V

    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    invoke-virtual {p2}, Lcom/android/settings/utils/ZenServiceListing;->reloadApprovedServices()V

    iput-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mPref:Landroidx/preference/Preference;

    iput-object p4, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mChecked:Z

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenRulePreference;->setAttributes(Landroid/app/AutomaticZenRule;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenRulePreference;->getSecondTargetResId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/zen/ZenRulePreference;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/zen/ZenRulePreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mChecked:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/zen/ZenRulePreference;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenRulePreference;->setChecked(Z)V

    return-void
.end method

.method private computeRuleSummary(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f041379

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f041378

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mChecked:Z

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mIntent:Landroid/content/Intent;

    if-eqz p0, :cond_0

    const p0, 0x7f0602c6

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/widget/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d05e3

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/android/settings/notification/zen/ZenRulePreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/ZenRulePreference$1;-><init>(Lcom/android/settings/notification/zen/ZenRulePreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const v0, 0x7f0d0148

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mOnCheckBoxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mChecked:Z

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method public onClick()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mOnCheckBoxClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method protected setAttributes(Landroid/app/AutomaticZenRule;)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;Z)Z

    move-result v0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenRulePreference;->computeRuleSummary(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setPersistent(Z)V

    if-eqz v0, :cond_0

    const-string v0, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "android.settings.ZEN_MODE_EVENT_RULE_SETTINGS"

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/utils/ZenServiceListing;->findService(Landroid/content/ComponentName;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v2, p1, v1}, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->getSettingsActivity(Landroid/content/pm/PackageManager;Landroid/app/AutomaticZenRule;Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mId:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->getRuleIntent(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mIntent:Landroid/content/Intent;

    :cond_2
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method public updatePreference(Landroid/app/AutomaticZenRule;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/zen/ZenRulePreference;->setChecked(Z)V

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenRulePreference;->computeRuleSummary(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    return-void
.end method
