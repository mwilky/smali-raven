.class public Lcom/google/android/settings/external/specialcase/SliceBasedSetting;
.super Ljava/lang/Object;
.source "SliceBasedSetting.java"

# interfaces
.implements Lcom/google/android/settings/external/Queryable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIntentString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x409

    invoke-static {p0, p2, p1, p3, v0}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static mapAvailability(I)I
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x6

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getAccessCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/database/Cursor;
    .locals 4

    invoke-static {p1, p2}, Lcom/android/settings/slices/SliceBuilderUtils;->getPreferenceController(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p0

    instance-of v0, p0, Lcom/android/settings/core/TogglePreferenceController;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/settings/core/TogglePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/core/TogglePreferenceController;->isChecked()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/google/android/settings/external/ExternalSettingsContract;->EXTERNAL_SETTINGS_QUERY_COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "existing_value"

    invoke-virtual {v2, v3, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/settings/external/specialcase/SliceBasedSetting;->mapAvailability(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "availability"

    invoke-virtual {v0, v2, p0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getFragmentClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getScreenTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/settings/external/specialcase/SliceBasedSetting;->getIntentString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "intent"

    invoke-virtual {p0, v0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getIconResource()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "icon"

    invoke-virtual {p0, p2, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v1
.end method

.method public getUpdateCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;I)Landroid/database/Cursor;
    .locals 5

    invoke-static {p1, p2}, Lcom/android/settings/slices/SliceBuilderUtils;->getPreferenceController(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0

    instance-of v1, v0, Lcom/android/settings/core/TogglePreferenceController;

    if-nez v1, :cond_0

    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p1, Lcom/google/android/settings/external/ExternalSettingsContract;->EXTERNAL_SETTINGS_UPDATE_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object p0

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/settings/core/TogglePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/core/TogglePreferenceController;->isChecked()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result v0

    invoke-interface {p0, v0, v2, p3}, Lcom/google/android/settings/external/Queryable;->shouldChangeValue(III)Z

    move-result p0

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    if-ne p3, p0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v3

    :goto_0
    invoke-virtual {v1, p0}, Lcom/android/settings/core/TogglePreferenceController;->setChecked(Z)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move p3, v2

    :goto_1
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/google/android/settings/external/ExternalSettingsContract;->EXTERNAL_SETTINGS_UPDATE_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v4, "newValue"

    invoke-virtual {v1, v4, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "existing_value"

    invoke-virtual {p3, v2, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "availability"

    invoke-virtual {p3, v1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p3

    invoke-static {p1, p2}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "intent"

    invoke-virtual {p3, v0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getIconResource()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "icon"

    invoke-virtual {p1, p3, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object p0
.end method
