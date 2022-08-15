.class public Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;
.super Ljava/lang/Object;
.source "DefaultCrossProfileIntentFiltersUtils.java"


# static fields
.field public static final ACTION_PICK_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final ACTION_PICK_IMAGES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final ACTION_PICK_IMAGES_WITH_DATA_TYPES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final ACTION_PICK_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final ACTION_SEND:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CALL_BUTTON:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final EMERGENCY_CALL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final EMERGENCY_CALL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final GET_CONTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final HOME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final MOBILE_NETWORK_SETTINGS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final OPEN_DOCUMENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final RECOGNIZE_SPEECH:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final SET_ALARM:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final USB_DEVICE_ATTACHED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v3, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v7, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v9, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v9}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v10, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v10}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v11, "vnd.android.cursor.item/calls"

    invoke-virtual {v0, v11}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v3, "tel"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v4, "sip"

    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v12, "voicemail"

    invoke-virtual {v0, v12}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v13, 0x4

    invoke-direct {v0, v1, v13, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v14, "android.intent.action.DIAL"

    invoke-virtual {v0, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v15, "android.intent.action.VIEW"

    invoke-virtual {v0, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v13, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    invoke-virtual {v0, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v13, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    invoke-virtual {v0, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v13, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v3, "android.intent.action.CALL_BUTTON"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_BUTTON:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    invoke-virtual {v0, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v3, "android.intent.action.SENDTO"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v3, "sms"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v3, "smsto"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v3, "mms"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v3, "mmsto"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v3, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v3, "android.settings.NETWORK_OPERATOR_SETTINGS"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->MOBILE_NETWORK_SETTINGS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->HOME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v3, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v4, "*/*"

    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->GET_CONTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v1, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v6, "android.provider.action.PICK_IMAGES"

    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_IMAGES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v1, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "image/*"

    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "video/*"

    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_IMAGES_WITH_DATA_TYPES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v1, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v6, "android.intent.action.OPEN_DOCUMENT"

    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->OPEN_DOCUMENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v1, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v1, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v13, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->RECOGNIZE_SPEECH:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v13, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v3, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v3, "android.provider.MediaStore.RECORD_SOUND"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v3, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v1, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v3, "android.intent.action.SET_ALARM"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v3, "android.intent.action.SHOW_ALARMS"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v3, "android.intent.action.SET_TIMER"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SET_ALARM:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v2, v1, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_SEND:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v2, v1, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->USB_DEVICE_ATTACHED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    return-void
.end method

.method public static getDefaultManagedProfileFilters()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/DefaultCrossProfileIntentFilter;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_BUTTON:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SET_ALARM:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->RECOGNIZE_SPEECH:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_IMAGES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_IMAGES_WITH_DATA_TYPES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->OPEN_DOCUMENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->GET_CONTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->USB_DEVICE_ATTACHED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_SEND:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->HOME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->MOBILE_NETWORK_SETTINGS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
