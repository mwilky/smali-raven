.class public final enum Lcom/android/systemui/assist/AssistantSessionEvent;
.super Ljava/lang/Enum;
.source "AssistantSessionEvent.kt"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/assist/AssistantSessionEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/assist/AssistantSessionEvent;

.field public static final enum ASSISTANT_SESSION_CLOSE:Lcom/android/systemui/assist/AssistantSessionEvent;

.field public static final enum ASSISTANT_SESSION_INVOCATION_CANCELLED:Lcom/android/systemui/assist/AssistantSessionEvent;

.field public static final enum ASSISTANT_SESSION_INVOCATION_START:Lcom/android/systemui/assist/AssistantSessionEvent;

.field public static final enum ASSISTANT_SESSION_TIMEOUT_DISMISS:Lcom/android/systemui/assist/AssistantSessionEvent;

.field public static final enum ASSISTANT_SESSION_UNKNOWN:Lcom/android/systemui/assist/AssistantSessionEvent;

.field public static final enum ASSISTANT_SESSION_UPDATE:Lcom/android/systemui/assist/AssistantSessionEvent;

.field public static final enum ASSISTANT_SESSION_USER_DISMISS:Lcom/android/systemui/assist/AssistantSessionEvent;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/systemui/assist/AssistantSessionEvent;

    const-string v1, "ASSISTANT_SESSION_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/assist/AssistantSessionEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_UNKNOWN:Lcom/android/systemui/assist/AssistantSessionEvent;

    new-instance v1, Lcom/android/systemui/assist/AssistantSessionEvent;

    const-string v3, "ASSISTANT_SESSION_TIMEOUT_DISMISS"

    const/4 v4, 0x1

    const/16 v5, 0x20c

    invoke-direct {v1, v3, v4, v5}, Lcom/android/systemui/assist/AssistantSessionEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_TIMEOUT_DISMISS:Lcom/android/systemui/assist/AssistantSessionEvent;

    new-instance v3, Lcom/android/systemui/assist/AssistantSessionEvent;

    const-string v5, "ASSISTANT_SESSION_INVOCATION_START"

    const/4 v6, 0x2

    const/16 v7, 0x20d

    invoke-direct {v3, v5, v6, v7}, Lcom/android/systemui/assist/AssistantSessionEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_INVOCATION_START:Lcom/android/systemui/assist/AssistantSessionEvent;

    new-instance v5, Lcom/android/systemui/assist/AssistantSessionEvent;

    const-string v7, "ASSISTANT_SESSION_INVOCATION_CANCELLED"

    const/4 v8, 0x3

    const/16 v9, 0x20e

    invoke-direct {v5, v7, v8, v9}, Lcom/android/systemui/assist/AssistantSessionEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_INVOCATION_CANCELLED:Lcom/android/systemui/assist/AssistantSessionEvent;

    new-instance v7, Lcom/android/systemui/assist/AssistantSessionEvent;

    const-string v9, "ASSISTANT_SESSION_USER_DISMISS"

    const/4 v10, 0x4

    const/16 v11, 0x20f

    invoke-direct {v7, v9, v10, v11}, Lcom/android/systemui/assist/AssistantSessionEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_USER_DISMISS:Lcom/android/systemui/assist/AssistantSessionEvent;

    new-instance v9, Lcom/android/systemui/assist/AssistantSessionEvent;

    const-string v11, "ASSISTANT_SESSION_UPDATE"

    const/4 v12, 0x5

    const/16 v13, 0x210

    invoke-direct {v9, v11, v12, v13}, Lcom/android/systemui/assist/AssistantSessionEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_UPDATE:Lcom/android/systemui/assist/AssistantSessionEvent;

    new-instance v11, Lcom/android/systemui/assist/AssistantSessionEvent;

    const-string v13, "ASSISTANT_SESSION_CLOSE"

    const/4 v14, 0x6

    const/16 v15, 0x211

    invoke-direct {v11, v13, v14, v15}, Lcom/android/systemui/assist/AssistantSessionEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_CLOSE:Lcom/android/systemui/assist/AssistantSessionEvent;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/android/systemui/assist/AssistantSessionEvent;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/android/systemui/assist/AssistantSessionEvent;->$VALUES:[Lcom/android/systemui/assist/AssistantSessionEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/assist/AssistantSessionEvent;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/assist/AssistantSessionEvent;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/assist/AssistantSessionEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistantSessionEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/assist/AssistantSessionEvent;
    .locals 4

    sget-object v0, Lcom/android/systemui/assist/AssistantSessionEvent;->$VALUES:[Lcom/android/systemui/assist/AssistantSessionEvent;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/systemui/assist/AssistantSessionEvent;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/assist/AssistantSessionEvent;->id:I

    return p0
.end method
