.class final enum Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;
.super Ljava/lang/Enum;
.source "FullListening.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

.field public static final enum EXPANDING_TO_WIDTH:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

.field public static final enum LISTENING_TO_SPEECH:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

.field public static final enum NOT_STARTED:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

.field public static final enum WAITING_FOR_ENDPOINTER:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

.field public static final enum WAITING_FOR_SPEECH:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->NOT_STARTED:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    const-string v3, "EXPANDING_TO_WIDTH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->EXPANDING_TO_WIDTH:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    new-instance v3, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    const-string v5, "WAITING_FOR_SPEECH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->WAITING_FOR_SPEECH:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    new-instance v5, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    const-string v7, "LISTENING_TO_SPEECH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->LISTENING_TO_SPEECH:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    new-instance v7, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    const-string v9, "WAITING_FOR_ENDPOINTER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->WAITING_FOR_ENDPOINTER:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->$VALUES:[Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;
    .locals 1

    const-class v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->$VALUES:[Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    invoke-virtual {v0}, [Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    return-object v0
.end method
