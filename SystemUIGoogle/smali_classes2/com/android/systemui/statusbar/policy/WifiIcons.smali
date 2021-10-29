.class public Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field public static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field public static final UNMERGED_WIFI:Lcom/android/settingslib/SignalIcon$IconGroup;

.field static final WIFI_FULL_ICONS:[I

.field static final WIFI_LEVEL_COUNT:I

.field private static final WIFI_NO_INTERNET_ICONS:[I

.field static final WIFI_SIGNAL_STRENGTH:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_FULL_ICONS:[I

    new-array v0, v0, [I

    sget v2, Lcom/android/settingslib/R$drawable;->ic_no_internet_wifi_signal_0:I

    const/4 v3, 0x0

    aput v2, v0, v3

    sget v2, Lcom/android/settingslib/R$drawable;->ic_no_internet_wifi_signal_1:I

    const/4 v4, 0x1

    aput v2, v0, v4

    sget v2, Lcom/android/settingslib/R$drawable;->ic_no_internet_wifi_signal_2:I

    const/4 v5, 0x2

    aput v2, v0, v5

    sget v2, Lcom/android/settingslib/R$drawable;->ic_no_internet_wifi_signal_3:I

    const/4 v6, 0x3

    aput v2, v0, v6

    sget v2, Lcom/android/settingslib/R$drawable;->ic_no_internet_wifi_signal_4:I

    const/4 v6, 0x4

    aput v2, v0, v6

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_INTERNET_ICONS:[I

    new-array v10, v5, [[I

    aput-object v0, v10, v3

    aput-object v1, v10, v4

    sput-object v10, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    sput-object v10, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v10, v3

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    new-instance v0, Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v11, Lcom/android/settingslib/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    sget v16, Lcom/android/settingslib/AccessibilityContentDescriptions;->WIFI_NO_CONNECTION:I

    const-string v8, "Wi-Fi Icons"

    const v12, 0x1080565

    const v13, 0x1080565

    const v14, 0x1080565

    const v15, 0x1080565

    move-object v7, v0

    move-object v9, v10

    invoke-direct/range {v7 .. v16}, Lcom/android/settingslib/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->UNMERGED_WIFI:Lcom/android/settingslib/SignalIcon$IconGroup;

    return-void

    :array_0
    .array-data 4
        0x1080565
        0x1080566
        0x1080567
        0x1080568
        0x1080569
    .end array-data
.end method
