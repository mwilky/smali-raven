.class public final enum Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;
.super Ljava/lang/Enum;
.source "AssistantModeChangeEvent.kt"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

.field public static final enum ASSISTANT_SESSION_MODE_FULFILL_BOTTOM:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

.field public static final enum ASSISTANT_SESSION_MODE_FULFILL_PERIMETER:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

.field public static final enum ASSISTANT_SESSION_MODE_FULL_LISTENING:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

.field public static final enum ASSISTANT_SESSION_MODE_GONE:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

.field public static final enum ASSISTANT_SESSION_MODE_HALF_LISTENING:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

.field public static final enum ASSISTANT_SESSION_MODE_UNKNOWN:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;


# instance fields
.field private final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    const-string v1, "ASSISTANT_SESSION_MODE_GONE"

    const/4 v2, 0x0

    const/16 v3, 0x249

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->ASSISTANT_SESSION_MODE_GONE:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    const-string v3, "ASSISTANT_SESSION_MODE_HALF_LISTENING"

    const/4 v4, 0x1

    const/16 v5, 0x24a

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->ASSISTANT_SESSION_MODE_HALF_LISTENING:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    new-instance v3, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    const-string v5, "ASSISTANT_SESSION_MODE_FULL_LISTENING"

    const/4 v6, 0x2

    const/16 v7, 0x24b

    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->ASSISTANT_SESSION_MODE_FULL_LISTENING:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    new-instance v5, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    const-string v7, "ASSISTANT_SESSION_MODE_FULFILL_BOTTOM"

    const/4 v8, 0x3

    const/16 v9, 0x24c

    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->ASSISTANT_SESSION_MODE_FULFILL_BOTTOM:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    new-instance v7, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    const-string v9, "ASSISTANT_SESSION_MODE_FULFILL_PERIMETER"

    const/4 v10, 0x4

    const/16 v11, 0x24d

    invoke-direct {v7, v9, v10, v11}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->ASSISTANT_SESSION_MODE_FULFILL_PERIMETER:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    new-instance v9, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    const-string v11, "ASSISTANT_SESSION_MODE_UNKNOWN"

    const/4 v12, 0x5

    const/16 v13, 0x24e

    invoke-direct {v9, v11, v12, v13}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->ASSISTANT_SESSION_MODE_UNKNOWN:Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->$VALUES:[Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

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

    iput p3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;
    .locals 1

    const-class v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->$VALUES:[Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/AssistantModeChangeEvent;->id:I

    return p0
.end method
