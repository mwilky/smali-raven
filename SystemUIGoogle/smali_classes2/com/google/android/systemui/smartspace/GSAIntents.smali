.class public Lcom/google/android/systemui/smartspace/GSAIntents;
.super Ljava/lang/Object;
.source "GSAIntents.java"


# direct methods
.method public static varargs getGsaPackageFilter([Ljava/lang/String;)Landroid/content/IntentFilter;
    .locals 1

    const-string v0, "com.google.android.googlequicksearchbox"

    invoke-static {v0, p0}, Lcom/google/android/systemui/smartspace/GSAIntents;->getPackageFilter(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getPackageFilter(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/IntentFilter;
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "package"

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    return-object v0
.end method
