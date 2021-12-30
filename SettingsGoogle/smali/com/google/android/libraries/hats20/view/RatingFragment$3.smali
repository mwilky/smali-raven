.class synthetic Lcom/google/android/libraries/hats20/view/RatingFragment$3;
.super Ljava/lang/Object;
.source "RatingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/hats20/view/RatingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$libraries$hats20$model$QuestionRating$Sprite:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;->values()[Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/libraries/hats20/view/RatingFragment$3;->$SwitchMap$com$google$android$libraries$hats20$model$QuestionRating$Sprite:[I

    :try_start_0
    sget-object v1, Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;->SMILEYS:Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/google/android/libraries/hats20/view/RatingFragment$3;->$SwitchMap$com$google$android$libraries$hats20$model$QuestionRating$Sprite:[I

    sget-object v1, Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;->STARS:Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
