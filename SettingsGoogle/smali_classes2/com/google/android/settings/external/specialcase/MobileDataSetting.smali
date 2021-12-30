.class public Lcom/google/android/settings/external/specialcase/MobileDataSetting;
.super Ljava/lang/Object;
.source "MobileDataSetting.java"

# interfaces
.implements Lcom/google/android/settings/external/Queryable;


# instance fields
.field private final OFF:I

.field private final ON:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/settings/external/specialcase/MobileDataSetting;->ON:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/settings/external/specialcase/MobileDataSetting;->OFF:I

    return-void
.end method

.method private getAvailability(Lcom/android/settingslib/net/DataUsageController;)I
    .locals 0

    invoke-virtual {p1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method private getCurrentValue(Lcom/android/settingslib/net/DataUsageController;)I
    .locals 0

    invoke-virtual {p1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result p0

    return p0
.end method

.method private getIconResource()I
    .locals 0

    const p0, 0x7f0202d6

    return p0
.end method

.method private getScreenTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f040754

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private validateInput(I)V
    .locals 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected value for mobile data mode. Expected 0 or 1, but found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getAccessCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/database/Cursor;
    .locals 4

    new-instance p2, Lcom/android/settingslib/net/DataUsageController;

    invoke-direct {p2, p1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/google/android/settings/external/specialcase/MobileDataSetting;->getCurrentValue(Lcom/android/settingslib/net/DataUsageController;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/google/android/settings/external/specialcase/MobileDataSetting;->getAvailability(Lcom/android/settingslib/net/DataUsageController;)I

    move-result p2

    const-class v1, Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0, p1}, Lcom/google/android/settings/external/specialcase/MobileDataSetting;->getScreenTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mobile_data"

    invoke-interface {p0, p1, v3, v1, v2}, Lcom/google/android/settings/external/Queryable;->getIntentString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/settings/external/specialcase/MobileDataSetting;->getIconResource()I

    move-result p0

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

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "availability"

    invoke-virtual {v0, v2, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    const-string v0, "intent"

    invoke-virtual {p2, v0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "icon"

    invoke-virtual {p1, p2, p0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v1
.end method

.method public getUpdateCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;I)Landroid/database/Cursor;
    .locals 5

    invoke-direct {p0, p3}, Lcom/google/android/settings/external/specialcase/MobileDataSetting;->validateInput(I)V

    new-instance p2, Lcom/android/settingslib/net/DataUsageController;

    invoke-direct {p2, p1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/google/android/settings/external/specialcase/MobileDataSetting;->getCurrentValue(Lcom/android/settingslib/net/DataUsageController;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/google/android/settings/external/specialcase/MobileDataSetting;->getAvailability(Lcom/android/settingslib/net/DataUsageController;)I

    move-result v1

    const-class v2, Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0, p1}, Lcom/google/android/settings/external/specialcase/MobileDataSetting;->getScreenTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-interface {p0, p1, v4, v2, v3}, Lcom/google/android/settings/external/Queryable;->getIntentString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/settings/external/specialcase/MobileDataSetting;->getIconResource()I

    move-result v2

    invoke-interface {p0, v1, v0, p3}, Lcom/google/android/settings/external/Queryable;->shouldChangeValue(III)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    if-ne p3, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p0}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_1
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p2, Lcom/google/android/settings/external/ExternalSettingsContract;->EXTERNAL_SETTINGS_UPDATE_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v3, "newValue"

    invoke-virtual {p2, v3, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "existing_value"

    invoke-virtual {p2, v0, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "availability"

    invoke-virtual {p2, v0, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    const-string p3, "intent"

    invoke-virtual {p2, p3, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "icon"

    invoke-virtual {p1, p3, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object p0
.end method
