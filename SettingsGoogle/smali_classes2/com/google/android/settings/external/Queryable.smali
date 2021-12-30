.class public interface abstract Lcom/google/android/settings/external/Queryable;
.super Ljava/lang/Object;
.source "Queryable.java"


# virtual methods
.method public getIntentString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 p3, 0x409

    invoke-static {p1, p0, p2, p4, p3}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUpdateCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;I)Landroid/database/Cursor;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Method not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUpdateCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/settings/external/Queryable;->getUpdateCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;I)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p1, Lcom/google/android/settings/external/ExternalSettingsContract;->EXTERNAL_SETTINGS_UPDATE_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object p0
.end method

.method public shouldChangeValue(III)Z
    .locals 0

    if-nez p1, :cond_0

    if-eq p2, p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
