.class public final enum Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;
.super Ljava/lang/Enum;
.source "TranscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/uihints/TranscriptionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

.field public static final enum CHIPS:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

.field public static final enum GREETING:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

.field public static final enum NONE:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

.field public static final enum TRANSCRIPTION:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    const/4 v1, 0x0

    const-string v2, "TRANSCRIPTION"

    invoke-direct {v0, v1, v2}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->TRANSCRIPTION:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    new-instance v2, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    const/4 v3, 0x1

    const-string v4, "GREETING"

    invoke-direct {v2, v3, v4}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->GREETING:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    new-instance v4, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    const/4 v5, 0x2

    const-string v6, "CHIPS"

    invoke-direct {v4, v5, v6}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->CHIPS:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    new-instance v6, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    const/4 v7, 0x3

    const-string v8, "NONE"

    invoke-direct {v6, v7, v8}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->NONE:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->$VALUES:[Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;
    .locals 1

    const-class v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->$VALUES:[Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-virtual {v0}, [Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    return-object v0
.end method
