.class public Lcom/google/android/settings/support/SupportFeatureProviderImpl;
.super Ljava/lang/Object;
.source "SupportFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/overlay/SupportFeatureProvider;


# static fields
.field static final ACCOUNT_TYPE:Ljava/lang/String; = "com.google"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getSupportEligibleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 0

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string p1, "com.google"

    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    return-object p0
.end method

.method public startSupport(Landroid/app/Activity;)V
    .locals 7

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/settings/support/SupportFeatureProviderImpl;->getSupportEligibleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object p0

    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    aget-object v0, p0, v2

    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.LAUNCH_HELP"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/settings/support/PsdValuesLoader;->getDeviceAgeInDays(Landroid/content/ContentResolver;)J

    move-result-wide v3

    const-wide/16 v5, 0x1e

    cmp-long v1, v3, v5

    if-gtz v1, :cond_1

    const-string v1, "1"

    goto :goto_0

    :cond_1
    const-string v1, "0"

    :goto_0
    const-string v3, "isYoungDevice"

    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v2}, Lcom/google/android/settings/support/PsdValuesLoader;->makePsdBundle(Landroid/content/Context;I)Lcom/google/android/settings/support/PsdBundle;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x1110000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    const-string v4, "sendPackageName"

    invoke-virtual {p0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/google/android/settings/support/PsdBundle;->getKeys()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "psdKeys"

    invoke-virtual {p0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/google/android/settings/support/PsdBundle;->getValues()[Ljava/lang/String;

    move-result-object v1

    const-string v3, "psdValues"

    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "account"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, p0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    return-void
.end method
