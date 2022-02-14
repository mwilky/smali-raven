.class final Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;
.super Ljava/lang/Object;
.source "AppCompatOverridesParser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/compat/overrides/AppCompatOverridesParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageOverrideComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/app/compat/PackageOverride;",
        ">;"
    }
.end annotation


# instance fields
.field private final mVersionCode:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->mVersionCode:J

    return-void
.end method

.method private static getVersionProximity(Landroid/app/compat/PackageOverride;J)J
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->isVersionAfterRange(Landroid/app/compat/PackageOverride;J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/compat/PackageOverride;->getMaxVersionCode()J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->isVersionBeforeRange(Landroid/app/compat/PackageOverride;J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/compat/PackageOverride;->getMinVersionCode()J

    move-result-wide v0

    sub-long/2addr v0, p1

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static isVersionAfterRange(Landroid/app/compat/PackageOverride;J)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/compat/PackageOverride;->getMaxVersionCode()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isVersionBeforeRange(Landroid/app/compat/PackageOverride;J)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/compat/PackageOverride;->getMinVersionCode()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isVersionInRange(Landroid/app/compat/PackageOverride;J)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/compat/PackageOverride;->getMinVersionCode()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/compat/PackageOverride;->getMaxVersionCode()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public compare(Landroid/app/compat/PackageOverride;Landroid/app/compat/PackageOverride;)I
    .locals 8

    iget-wide v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->mVersionCode:J

    invoke-static {p1, v0, v1}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->isVersionInRange(Landroid/app/compat/PackageOverride;J)Z

    move-result v0

    iget-wide v1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->mVersionCode:J

    invoke-static {p2, v1, v2}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->isVersionInRange(Landroid/app/compat/PackageOverride;J)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    iget-wide v4, p0, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->mVersionCode:J

    invoke-static {p1, v4, v5}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->isVersionAfterRange(Landroid/app/compat/PackageOverride;J)Z

    move-result v4

    iget-wide v5, p0, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->mVersionCode:J

    invoke-static {p2, v5, v6}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->isVersionAfterRange(Landroid/app/compat/PackageOverride;J)Z

    move-result v5

    if-eq v4, v5, :cond_3

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2

    :cond_3
    iget-wide v2, p0, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->mVersionCode:J

    invoke-static {p1, v2, v3}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->getVersionProximity(Landroid/app/compat/PackageOverride;J)J

    move-result-wide v2

    iget-wide v6, p0, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->mVersionCode:J

    invoke-static {p2, v6, v7}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->getVersionProximity(Landroid/app/compat/PackageOverride;J)J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Long;->compare(JJ)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/app/compat/PackageOverride;

    check-cast p2, Landroid/app/compat/PackageOverride;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->compare(Landroid/app/compat/PackageOverride;Landroid/app/compat/PackageOverride;)I

    move-result p1

    return p1
.end method
