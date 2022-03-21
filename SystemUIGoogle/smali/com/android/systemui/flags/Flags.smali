.class public Lcom/android/systemui/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field public static final CHARGING_RIPPLE:Lcom/android/systemui/flags/BooleanFlag;

.field public static final COMBINED_QS_HEADERS:Lcom/android/systemui/flags/BooleanFlag;

.field public static final COMBINED_STATUS_BAR_SIGNAL_ICONS:Lcom/android/systemui/flags/BooleanFlag;

.field public static final KEYGUARD_LAYOUT:Lcom/android/systemui/flags/BooleanFlag;

.field public static final LOCKSCREEN_ANIMATIONS:Lcom/android/systemui/flags/BooleanFlag;

.field public static final MONET:Lcom/android/systemui/flags/BooleanFlag;

.field public static final NEW_NOTIFICATION_PIPELINE:Lcom/android/systemui/flags/BooleanFlag;

.field public static final NEW_NOTIFICATION_PIPELINE_RENDERING:Lcom/android/systemui/flags/BooleanFlag;

.field public static final NEW_UNLOCK_SWIPE_ANIMATION:Lcom/android/systemui/flags/BooleanFlag;

.field public static final NEW_USER_SWITCHER:Lcom/android/systemui/flags/BooleanFlag;

.field public static final NOTIFICATION_UPDATES:Lcom/android/systemui/flags/BooleanFlag;

.field public static final ONGOING_CALL_IN_IMMERSIVE:Lcom/android/systemui/flags/BooleanFlag;

.field public static final ONGOING_CALL_IN_IMMERSIVE_CHIP_TAP:Lcom/android/systemui/flags/BooleanFlag;

.field public static final ONGOING_CALL_STATUS_BAR_CHIP:Lcom/android/systemui/flags/BooleanFlag;

.field public static final PEOPLE_TILE:Lcom/android/systemui/flags/BooleanFlag;

.field public static final POWER_MENU_LITE:Lcom/android/systemui/flags/BooleanFlag;

.field public static final SMARTSPACE:Lcom/android/systemui/flags/BooleanFlag;

.field public static final SMARTSPACE_DEDUPING:Lcom/android/systemui/flags/BooleanFlag;

.field public static final SMARTSPACE_SHARED_ELEMENT_TRANSITION_ENABLED:Lcom/android/systemui/flags/BooleanFlag;

.field public static final TEAMFOOD:Lcom/android/systemui/flags/BooleanFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->TEAMFOOD:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v3, 0x64

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->NEW_NOTIFICATION_PIPELINE:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v3, 0x65

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->NEW_NOTIFICATION_PIPELINE_RENDERING:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v3, 0x66

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->NOTIFICATION_UPDATES:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v3, 0xc8

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->KEYGUARD_LAYOUT:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v3, 0xc9

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->LOCKSCREEN_ANIMATIONS:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v3, 0xca

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->NEW_UNLOCK_SWIPE_ANIMATION:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    sget v3, Lcom/android/systemui/R$bool;->flag_charging_ripple:I

    const/16 v4, 0xcb

    invoke-direct {v0, v4, v2, v3}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZI)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->CHARGING_RIPPLE:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v3, 0x12c

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->POWER_MENU_LITE:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v3, 0x190

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->SMARTSPACE_DEDUPING:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v3, 0x191

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->SMARTSPACE_SHARED_ELEMENT_TRANSITION_ENABLED:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    sget v3, Lcom/android/systemui/R$bool;->flag_smartspace:I

    const/16 v4, 0x192

    invoke-direct {v0, v4, v2, v3}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZI)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->SMARTSPACE:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v3, 0x1f4

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->NEW_USER_SWITCHER:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v3, 0x1f5

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->COMBINED_QS_HEADERS:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    sget v3, Lcom/android/systemui/R$bool;->flag_conversations:I

    const/16 v4, 0x1f6

    invoke-direct {v0, v4, v2, v3}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZI)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->PEOPLE_TILE:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v3, 0x259

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->COMBINED_STATUS_BAR_SIGNAL_ICONS:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v2, 0x2bc

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->ONGOING_CALL_STATUS_BAR_CHIP:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v2, 0x2bd

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->ONGOING_CALL_IN_IMMERSIVE:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v2, 0x2be

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->ONGOING_CALL_IN_IMMERSIVE_CHIP_TAP:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    sget v2, Lcom/android/systemui/R$bool;->flag_monet:I

    const/16 v3, 0x320

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZI)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->MONET:Lcom/android/systemui/flags/BooleanFlag;

    return-void
.end method
