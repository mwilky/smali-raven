.class public Lcom/google/android/settings/external/ExternalSettingsContract;
.super Ljava/lang/Object;
.source "ExternalSettingsContract.java"


# static fields
.field private static CONTENT_BASE_URI:Landroid/net/Uri;

.field public static final DEVICE_SIGNALS_COLUMNS:[Ljava/lang/String;

.field public static final DEVICE_SIGNALS_URI:Landroid/net/Uri;

.field public static final EXTERNAL_SETTINGS_QUERY_COLUMNS:[Ljava/lang/String;

.field public static final EXTERNAL_SETTINGS_QUERY_COLUMNS_WITH_SUPPORTED_VALUES:[Ljava/lang/String;

.field public static final EXTERNAL_SETTINGS_QUERY_RANGE_COLUMNS:[Ljava/lang/String;

.field public static final EXTERNAL_SETTINGS_UPDATE_COLUMNS:[Ljava/lang/String;

.field public static final SETTINGS_MANAGER_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "content://com.google.android.settings.external"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/external/ExternalSettingsContract;->CONTENT_BASE_URI:Landroid/net/Uri;

    const-string v1, "settings_manager"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/external/ExternalSettingsContract;->SETTINGS_MANAGER_URI:Landroid/net/Uri;

    sget-object v0, Lcom/google/android/settings/external/ExternalSettingsContract;->CONTENT_BASE_URI:Landroid/net/Uri;

    const-string v1, "signals"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/external/ExternalSettingsContract;->DEVICE_SIGNALS_URI:Landroid/net/Uri;

    const-string v0, "existing_value"

    const-string v1, "availability"

    const-string v2, "intent"

    const-string v3, "icon"

    const-string v4, "dependent_setting"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/external/ExternalSettingsContract;->EXTERNAL_SETTINGS_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v1, "existing_value"

    const-string v2, "availability"

    const-string v3, "intent"

    const-string v4, "min_value"

    const-string v5, "max_value"

    const-string v6, "icon"

    const-string v7, "dependent_setting"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/external/ExternalSettingsContract;->EXTERNAL_SETTINGS_QUERY_RANGE_COLUMNS:[Ljava/lang/String;

    const-string v1, "existing_value"

    const-string v2, "availability"

    const-string v3, "intent"

    const-string v4, "icon"

    const-string v5, "supported_values"

    const-string v6, "dependent_setting"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/external/ExternalSettingsContract;->EXTERNAL_SETTINGS_QUERY_COLUMNS_WITH_SUPPORTED_VALUES:[Ljava/lang/String;

    const-string v1, "newValue"

    const-string v2, "existing_value"

    const-string v3, "availability"

    const-string v4, "intent"

    const-string v5, "icon"

    const-string v6, "dependent_setting"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/external/ExternalSettingsContract;->EXTERNAL_SETTINGS_UPDATE_COLUMNS:[Ljava/lang/String;

    const-string v0, "signal_key"

    const-string v1, "signal_value"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/external/ExternalSettingsContract;->DEVICE_SIGNALS_COLUMNS:[Ljava/lang/String;

    return-void
.end method
