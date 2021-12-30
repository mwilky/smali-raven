.class public final enum Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;
.super Ljava/lang/Enum;
.source "QuestionRating.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/hats20/model/QuestionRating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sprite"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

.field public static final enum SMILEYS:Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

.field public static final enum STARS:Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    const-string v1, "STARS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;->STARS:Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    new-instance v1, Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    const-string v3, "SMILEYS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;->SMILEYS:Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;->$VALUES:[Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;
    .locals 1

    const-class v0, Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;->$VALUES:[Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    invoke-virtual {v0}, [Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    return-object v0
.end method
