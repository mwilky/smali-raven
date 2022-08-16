.class public final enum Lcom/android/systemui/assist/AssistantInvocationEvent;
.super Ljava/lang/Enum;
.source "AssistantInvocationEvent.kt"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/assist/AssistantInvocationEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/assist/AssistantInvocationEvent;

.field public static final enum ASSISTANT_INVOCATION_HOME_LONG_PRESS:Lcom/android/systemui/assist/AssistantInvocationEvent;

.field public static final enum ASSISTANT_INVOCATION_HOTWORD:Lcom/android/systemui/assist/AssistantInvocationEvent;

.field public static final enum ASSISTANT_INVOCATION_PHYSICAL_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

.field public static final enum ASSISTANT_INVOCATION_POWER_LONG_PRESS:Lcom/android/systemui/assist/AssistantInvocationEvent;

.field public static final enum ASSISTANT_INVOCATION_QUICK_SEARCH_BAR:Lcom/android/systemui/assist/AssistantInvocationEvent;

.field public static final enum ASSISTANT_INVOCATION_START_PHYSICAL_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

.field public static final enum ASSISTANT_INVOCATION_START_TOUCH_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

.field public static final enum ASSISTANT_INVOCATION_START_UNKNOWN:Lcom/android/systemui/assist/AssistantInvocationEvent;

.field public static final enum ASSISTANT_INVOCATION_TOUCH_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

.field public static final enum ASSISTANT_INVOCATION_UNKNOWN:Lcom/android/systemui/assist/AssistantInvocationEvent;


# instance fields
.field private final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/systemui/assist/AssistantInvocationEvent;

    const-string v1, "ASSISTANT_INVOCATION_UNKNOWN"

    const/4 v2, 0x0

    const/16 v3, 0x1ba

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/assist/AssistantInvocationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_UNKNOWN:Lcom/android/systemui/assist/AssistantInvocationEvent;

    new-instance v1, Lcom/android/systemui/assist/AssistantInvocationEvent;

    const-string v3, "ASSISTANT_INVOCATION_TOUCH_GESTURE"

    const/4 v4, 0x1

    const/16 v5, 0x1bb

    invoke-direct {v1, v3, v4, v5}, Lcom/android/systemui/assist/AssistantInvocationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_TOUCH_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

    new-instance v3, Lcom/android/systemui/assist/AssistantInvocationEvent;

    const-string v5, "ASSISTANT_INVOCATION_TOUCH_GESTURE_ALT"

    const/4 v6, 0x2

    const/16 v7, 0x1bc

    invoke-direct {v3, v5, v6, v7}, Lcom/android/systemui/assist/AssistantInvocationEvent;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/android/systemui/assist/AssistantInvocationEvent;

    const-string v7, "ASSISTANT_INVOCATION_HOTWORD"

    const/4 v8, 0x3

    const/16 v9, 0x1bd

    invoke-direct {v5, v7, v8, v9}, Lcom/android/systemui/assist/AssistantInvocationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_HOTWORD:Lcom/android/systemui/assist/AssistantInvocationEvent;

    new-instance v7, Lcom/android/systemui/assist/AssistantInvocationEvent;

    const-string v9, "ASSISTANT_INVOCATION_QUICK_SEARCH_BAR"

    const/4 v10, 0x4

    const/16 v11, 0x1be

    invoke-direct {v7, v9, v10, v11}, Lcom/android/systemui/assist/AssistantInvocationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_QUICK_SEARCH_BAR:Lcom/android/systemui/assist/AssistantInvocationEvent;

    new-instance v9, Lcom/android/systemui/assist/AssistantInvocationEvent;

    const-string v11, "ASSISTANT_INVOCATION_HOME_LONG_PRESS"

    const/4 v12, 0x5

    const/16 v13, 0x1bf

    invoke-direct {v9, v11, v12, v13}, Lcom/android/systemui/assist/AssistantInvocationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_HOME_LONG_PRESS:Lcom/android/systemui/assist/AssistantInvocationEvent;

    new-instance v11, Lcom/android/systemui/assist/AssistantInvocationEvent;

    const-string v13, "ASSISTANT_INVOCATION_PHYSICAL_GESTURE"

    const/4 v14, 0x6

    const/16 v15, 0x1c0

    invoke-direct {v11, v13, v14, v15}, Lcom/android/systemui/assist/AssistantInvocationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_PHYSICAL_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

    new-instance v13, Lcom/android/systemui/assist/AssistantInvocationEvent;

    const-string v15, "ASSISTANT_INVOCATION_START_UNKNOWN"

    const/4 v14, 0x7

    const/16 v12, 0x212

    invoke-direct {v13, v15, v14, v12}, Lcom/android/systemui/assist/AssistantInvocationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_START_UNKNOWN:Lcom/android/systemui/assist/AssistantInvocationEvent;

    new-instance v12, Lcom/android/systemui/assist/AssistantInvocationEvent;

    const-string v15, "ASSISTANT_INVOCATION_START_TOUCH_GESTURE"

    const/16 v14, 0x8

    const/16 v10, 0x213

    invoke-direct {v12, v15, v14, v10}, Lcom/android/systemui/assist/AssistantInvocationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_START_TOUCH_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

    new-instance v10, Lcom/android/systemui/assist/AssistantInvocationEvent;

    const-string v15, "ASSISTANT_INVOCATION_START_PHYSICAL_GESTURE"

    const/16 v14, 0x9

    const/16 v8, 0x214

    invoke-direct {v10, v15, v14, v8}, Lcom/android/systemui/assist/AssistantInvocationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_START_PHYSICAL_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

    new-instance v8, Lcom/android/systemui/assist/AssistantInvocationEvent;

    const-string v15, "ASSISTANT_INVOCATION_POWER_LONG_PRESS"

    const/16 v14, 0xa

    const/16 v6, 0x2f6

    invoke-direct {v8, v15, v14, v6}, Lcom/android/systemui/assist/AssistantInvocationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_POWER_LONG_PRESS:Lcom/android/systemui/assist/AssistantInvocationEvent;

    const/16 v6, 0xb

    new-array v6, v6, [Lcom/android/systemui/assist/AssistantInvocationEvent;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v12, v6, v0

    const/16 v0, 0x9

    aput-object v10, v6, v0

    aput-object v8, v6, v14

    sput-object v6, Lcom/android/systemui/assist/AssistantInvocationEvent;->$VALUES:[Lcom/android/systemui/assist/AssistantInvocationEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/assist/AssistantInvocationEvent;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/assist/AssistantInvocationEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/assist/AssistantInvocationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistantInvocationEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/assist/AssistantInvocationEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/assist/AssistantInvocationEvent;->$VALUES:[Lcom/android/systemui/assist/AssistantInvocationEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/assist/AssistantInvocationEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/assist/AssistantInvocationEvent;->id:I

    return p0
.end method
