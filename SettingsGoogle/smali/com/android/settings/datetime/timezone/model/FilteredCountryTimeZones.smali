.class public Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;
.super Ljava/lang/Object;
.source "FilteredCountryTimeZones.java"


# instance fields
.field private final mAlternativeTimeZoneIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCountryTimeZones:Lcom/android/i18n/timezone/CountryTimeZones;

.field private final mPreferredTimeZoneIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/i18n/timezone/CountryTimeZones;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mCountryTimeZones:Lcom/android/i18n/timezone/CountryTimeZones;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p1}, Lcom/android/i18n/timezone/CountryTimeZones;->getTimeZoneMappings()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    sget-object v3, Landroid/util/TimeUtils;->MIN_USE_DATE_OF_TIMEZONE:Ljava/time/Instant;

    invoke-virtual {v2, v3}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->isShownInPickerAt(Ljava/time/Instant;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZoneId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->getAlternativeIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mPreferredTimeZoneIds:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mAlternativeTimeZoneIds:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getPreferredTimeZoneIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mPreferredTimeZoneIds:Ljava/util/List;

    return-object p0
.end method

.method public getRegionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mCountryTimeZones:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {p0}, Lcom/android/i18n/timezone/CountryTimeZones;->getCountryIso()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->normalizeRegionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mPreferredTimeZoneIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->mAlternativeTimeZoneIds:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

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
