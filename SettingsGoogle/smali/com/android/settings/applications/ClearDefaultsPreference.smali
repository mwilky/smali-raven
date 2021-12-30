.class public Lcom/android/settings/applications/ClearDefaultsPreference;
.super Landroidx/preference/Preference;
.source "ClearDefaultsPreference.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mActivitiesButton:Landroid/widget/Button;

.field protected mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private final mAppsControlDisallowedBySystem:Z

.field private mPackageName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/ClearDefaultsPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f050330

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p2, 0x7f060050

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    const-string p1, "usb"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    const-string p3, "no_control_apps"

    invoke-static {p1, p3, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppsControlDisallowedBySystem:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-static {p1, p3, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ClearDefaultsPreference;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/ClearDefaultsPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppsControlDisallowedBySystem:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/hardware/usb/IUsbManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/ClearDefaultsPreference;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/appwidget/AppWidgetManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/ClearDefaultsPreference;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->resetLaunchDefaultsUi(Landroid/widget/TextView;)V

    return-void
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;)V
    .locals 1

    const v0, 0x7f0402cb

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0d0155

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/applications/ClearDefaultsPreference$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/applications/ClearDefaultsPreference$1;-><init>(Lcom/android/settings/applications/ClearDefaultsPreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->updateUI(Landroidx/preference/PreferenceViewHolder;)Z

    return-void
.end method

.method public setAppEntry(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public updateUI(Landroidx/preference/PreferenceViewHolder;)Z
    .locals 11

    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f0d00b8

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settingslib/applications/AppUtils;->hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/android/settingslib/applications/AppUtils;->isDefaultBrowser(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iget-object v4, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/android/settingslib/applications/AppUtils;->hasUsbDefaults(Landroid/hardware/usb/IUsbManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->resetLaunchDefaultsUi(Landroid/widget/TextView;)V

    goto/16 :goto_5

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    if-eqz v0, :cond_4

    const v5, 0x7f0402ce

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_4
    const v5, 0x7f0402cd

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b01b4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v8, 0x2

    const-string v9, "\n"

    if-eqz v1, :cond_6

    const v1, 0x7f0402cc

    invoke-virtual {v5, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v4, :cond_5

    new-instance v10, Landroid/text/style/BulletSpan;

    invoke-direct {v10, v7}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v6, v10, v3, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    new-array v1, v8, [Ljava/lang/CharSequence;

    aput-object v6, v1, v3

    aput-object v9, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    :cond_6
    if-eqz v0, :cond_9

    const v0, 0x7f0401f0

    invoke-virtual {v5, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v4, :cond_7

    new-instance v4, Landroid/text/style/BulletSpan;

    invoke-direct {v4, v7}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, v4, v3, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    if-nez v6, :cond_8

    new-array v0, v8, [Ljava/lang/CharSequence;

    aput-object v1, v0, v3

    aput-object v9, v0, v2

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    :cond_8
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object v6, v0, v3

    aput-object v9, v0, v2

    aput-object v1, v0, v8

    const/4 v1, 0x3

    aput-object v9, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_4
    move-object v6, v0

    :cond_9
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_5
    return v2
.end method
