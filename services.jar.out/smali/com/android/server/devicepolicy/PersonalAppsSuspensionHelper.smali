.class public final Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;
.super Ljava/lang/Object;
.source "PersonalAppsSuspensionHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DevicePolicyManager"

.field private static final PACKAGE_QUERY_FLAGS:I = 0xc0000


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public static forUser(Landroid/content/Context;I)Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;
    .locals 3

    new-instance v0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getAccessibilityServices()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    :goto_0
    new-instance v2, Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-direct {v2, v3, v1, v4}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->removeClient()Z

    nop

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    nop

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_1

    :cond_2
    return-object v4

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->removeClient()Z

    throw v3
.end method

.method private getCriticalPackages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getInputMethodPackages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getEnabledInputMethodListAsUser(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getSettingsPackageName()Ljava/lang/String;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v2, 0xc0000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private getSystemLauncherPackages()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v3, 0xc0000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "DevicePolicyManager"

    if-eqz v6, :cond_3

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :try_start_0
    iget-object v10, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v6, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v10}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v10

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v7

    const-string v7, "Could not find application info for launcher app: %s"

    invoke-static {v9, v7, v8}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    goto :goto_0

    :cond_3
    :goto_2
    new-array v6, v8, [Ljava/lang/Object;

    aput-object v5, v6, v7

    const-string v7, "Could not find package name for launcher app %s"

    invoke-static {v9, v7, v6}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private hasLauncherIntent(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v2, 0xc0000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method dump(Landroid/util/IndentingPrintWriter;)V
    .locals 4

    const-string v0, "PersonalAppsSuspensionHelper"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-direct {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getCriticalPackages()Ljava/util/List;

    move-result-object v0

    const-string v1, "critical packages"

    invoke-static {p1, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpApps(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getSystemLauncherPackages()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "launcher packages"

    invoke-static {p1, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpApps(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/util/List;)V

    nop

    invoke-direct {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getAccessibilityServices()Ljava/util/List;

    move-result-object v0

    const-string v1, "accessibility services"

    invoke-static {p1, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpApps(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getInputMethodPackages()Ljava/util/List;

    move-result-object v0

    const-string v1, "input method packages"

    invoke-static {p1, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpApps(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/util/List;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "SMS package: %s\n"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getSettingsPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Settings package: %s\n"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    nop

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getPersonalAppsForSuspension()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "Packages subject to suspension"

    invoke-static {p1, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpApps(Landroid/util/IndentingPrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method getPersonalAppsForSuspension()[Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0xc0000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->hasLauncherIntent(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getCriticalPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getSystemLauncherPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getAccessibilityServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getInputMethodPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getSettingsPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getUnsuspendablePackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v2, v5

    invoke-interface {v1, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x4

    const-string v5, "DevicePolicyManager"

    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, ","

    invoke-static {v6, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    const-string v6, "Packages subject to suspension: %s"

    invoke-static {v5, v6, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method
