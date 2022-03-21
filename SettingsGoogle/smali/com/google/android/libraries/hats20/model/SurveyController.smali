.class public Lcom/google/android/libraries/hats20/model/SurveyController;
.super Ljava/lang/Object;
.source "SurveyController.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/hats20/model/SurveyController$MalformedSurveyException;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/libraries/hats20/model/SurveyController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private answerUrl:Ljava/lang/String;

.field private promptMessage:Ljava/lang/String;

.field private promptParams:Ljava/lang/String;

.field private questions:[Lcom/google/android/libraries/hats20/model/Question;

.field private showInvitation:Z

.field private thankYouMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/hats20/model/SurveyController$1;

    invoke-direct {v0}, Lcom/google/android/libraries/hats20/model/SurveyController$1;-><init>()V

    sput-object v0, Lcom/google/android/libraries/hats20/model/SurveyController;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->showInvitation:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->showInvitation:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->showInvitation:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [Lcom/google/android/libraries/hats20/model/Question;

    iput-object v1, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->questions:[Lcom/google/android/libraries/hats20/model/Question;

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->questions:[Lcom/google/android/libraries/hats20/model/Question;

    const-class v3, Lcom/google/android/libraries/hats20/model/Question;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/hats20/model/Question;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->promptMessage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->thankYouMessage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->promptParams:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->answerUrl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/libraries/hats20/model/SurveyController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/model/SurveyController;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static assertSurveyIsValid(Lcom/google/android/libraries/hats20/model/SurveyController;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/hats20/model/SurveyController$MalformedSurveyException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/model/SurveyController;->getQuestions()[Lcom/google/android/libraries/hats20/model/Question;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/model/SurveyController;->getAnswerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/model/SurveyController;->getPromptParams()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/model/SurveyController;->getQuestions()[Lcom/google/android/libraries/hats20/model/Question;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_9

    iget-object v1, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->questions:[Lcom/google/android/libraries/hats20/model/Question;

    aget-object v1, v1, v0

    iget-object v2, v1, Lcom/google/android/libraries/hats20/model/Question;->questionText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "Question #"

    if-nez v2, :cond_8

    instance-of v2, v1, Lcom/google/android/libraries/hats20/model/Question$QuestionWithSelectableAnswers;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/google/android/libraries/hats20/model/Question$QuestionWithSelectableAnswers;

    invoke-interface {v2}, Lcom/google/android/libraries/hats20/model/Question$QuestionWithSelectableAnswers;->getAnswers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2}, Lcom/google/android/libraries/hats20/model/Question$QuestionWithSelectableAnswers;->getOrdering()Ljava/util/List;

    move-result-object v2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/google/android/libraries/hats20/model/SurveyController$MalformedSurveyException;

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x4a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " was missing an ordering, this likely is a GCS issue."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/hats20/model/SurveyController$MalformedSurveyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/google/android/libraries/hats20/model/SurveyController$MalformedSurveyException;

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " was missing answers."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/hats20/model/SurveyController$MalformedSurveyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/model/Question;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    check-cast v1, Lcom/google/android/libraries/hats20/model/QuestionRating;

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/model/QuestionRating;->getLowValueText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/model/QuestionRating;->getHighValueText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/model/QuestionRating;->getSprite()Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    move-result-object v2

    sget-object v3, Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;->SMILEYS:Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    if-ne v2, v3, :cond_4

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/model/QuestionRating;->getNumIcons()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Lcom/google/android/libraries/hats20/model/SurveyController$MalformedSurveyException;

    const-string v0, "Smiley surveys must have 5 options."

    invoke-direct {p0, v0}, Lcom/google/android/libraries/hats20/model/SurveyController$MalformedSurveyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/model/QuestionRating;->getSprite()Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;->STARS:Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    if-eq v1, v2, :cond_7

    if-ne v1, v3, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Lcom/google/android/libraries/hats20/model/SurveyController$MalformedSurveyException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Rating question has unsupported sprite: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/hats20/model/SurveyController$MalformedSurveyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lcom/google/android/libraries/hats20/model/SurveyController$MalformedSurveyException;

    const-string v0, "A rating question was missing its high/low text."

    invoke-direct {p0, v0}, Lcom/google/android/libraries/hats20/model/SurveyController$MalformedSurveyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    new-instance p0, Lcom/google/android/libraries/hats20/model/SurveyController$MalformedSurveyException;

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " had no question text."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/hats20/model/SurveyController$MalformedSurveyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    return-void

    :cond_a
    new-instance p0, Lcom/google/android/libraries/hats20/model/SurveyController$MalformedSurveyException;

    const-string v0, "Survey did not have prompt params, this is a GCS issue."

    invoke-direct {p0, v0}, Lcom/google/android/libraries/hats20/model/SurveyController$MalformedSurveyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Lcom/google/android/libraries/hats20/model/SurveyController$MalformedSurveyException;

    const-string v0, "Survey did not have an AnswerUrl, this is a GCS issue."

    invoke-direct {p0, v0}, Lcom/google/android/libraries/hats20/model/SurveyController$MalformedSurveyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Lcom/google/android/libraries/hats20/model/SurveyController$MalformedSurveyException;

    const-string v0, "Survey has no questions."

    invoke-direct {p0, v0}, Lcom/google/android/libraries/hats20/model/SurveyController$MalformedSurveyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static initWithSurveyFromJson(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/google/android/libraries/hats20/model/SurveyController;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/google/android/libraries/hats20/model/SurveyController$MalformedSurveyException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "params"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    new-instance v0, Lcom/google/android/libraries/hats20/model/SurveyController;

    invoke-direct {v0}, Lcom/google/android/libraries/hats20/model/SurveyController;-><init>()V

    const-string/jumbo v1, "tags"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/android/libraries/hats20/model/SurveyController;->retrieveTagDataFromJson(Lcom/google/android/libraries/hats20/model/SurveyController;Lorg/json/JSONArray;Landroid/content/res/Resources;)V

    invoke-static {p0}, Lcom/google/android/libraries/hats20/model/Question;->getQuestionsFromSurveyDefinition(Lorg/json/JSONObject;)[Lcom/google/android/libraries/hats20/model/Question;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/libraries/hats20/model/SurveyController;->questions:[Lcom/google/android/libraries/hats20/model/Question;

    const-string p1, "promptParams"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/libraries/hats20/model/SurveyController;->promptParams:Ljava/lang/String;

    const-string p1, "answerUrl"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/libraries/hats20/model/SurveyController;->answerUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/libraries/hats20/model/SurveyController;->assertSurveyIsValid(Lcom/google/android/libraries/hats20/model/SurveyController;)V

    return-object v0
.end method

.method private static retrieveTagDataFromJson(Lcom/google/android/libraries/hats20/model/SurveyController;Lorg/json/JSONArray;Landroid/content/res/Resources;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const-string v3, "HatsLibSurveyController"

    const/4 v4, 0x1

    if-ge v1, v2, :cond_8

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v4, "Tag couldn\'t be split: %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    aget-object v5, v2, v0

    aget-object v2, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_1
    move v6, v7

    goto :goto_2

    :sswitch_0
    const-string v6, "promptMessage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x6

    goto :goto_2

    :sswitch_1
    const-string v6, "hatsClient"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x5

    goto :goto_2

    :sswitch_2
    const-string v6, "hats20"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x4

    goto :goto_2

    :sswitch_3
    const-string v6, "format"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x3

    goto :goto_2

    :sswitch_4
    const-string/jumbo v8, "thankYouMessage"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_1

    :sswitch_5
    const-string/jumbo v6, "showInvitation"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    move v6, v4

    goto :goto_2

    :sswitch_6
    const-string v6, "hatsNoRateLimiting"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    move v6, v0

    :cond_7
    :goto_2
    packed-switch v6, :pswitch_data_0

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v5, v2, v0

    const-string v4, "Skipping unknown tag \'%s\'"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_0
    iput-object v2, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->promptMessage:Ljava/lang/String;

    goto :goto_3

    :pswitch_1
    iput-object v2, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->thankYouMessage:Ljava/lang/String;

    goto :goto_3

    :pswitch_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->showInvitation:Z

    :goto_3
    :pswitch_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    iget-boolean p1, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->showInvitation:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->promptMessage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    new-array p1, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->promptMessage:Ljava/lang/String;

    aput-object v1, p1, v0

    const-string v0, "Survey is promptless but a prompt message was parsed: %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-boolean p1, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->showInvitation:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->promptMessage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    sget p1, Lcom/google/android/libraries/hats20/R$string;->hats_lib_default_prompt_title:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->promptMessage:Ljava/lang/String;

    :cond_a
    iget-object p1, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->thankYouMessage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    sget p1, Lcom/google/android/libraries/hats20/R$string;->hats_lib_default_thank_you:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->thankYouMessage:Ljava/lang/String;

    :cond_b
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6936ed00 -> :sswitch_6
        -0x59bca98a -> :sswitch_5
        -0x4fa7268e -> :sswitch_4
        -0x4ba00809 -> :sswitch_3
        -0x48faa68a -> :sswitch_2
        -0x464f28dd -> :sswitch_1
        -0x1b0659fd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAnswerUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->answerUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getPromptMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->promptMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getPromptParams()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->promptParams:Ljava/lang/String;

    return-object p0
.end method

.method public getQuestions()[Lcom/google/android/libraries/hats20/model/Question;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->questions:[Lcom/google/android/libraries/hats20/model/Question;

    return-object p0
.end method

.method public getThankYouMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->thankYouMessage:Ljava/lang/String;

    return-object p0
.end method

.method public shouldIncludeSurveyControls()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->questions:[Lcom/google/android/libraries/hats20/model/Question;

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/model/Question;->getType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    iget-object p0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->questions:[Lcom/google/android/libraries/hats20/model/Question;

    aget-object p0, p0, v1

    check-cast p0, Lcom/google/android/libraries/hats20/model/QuestionRating;

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/model/QuestionRating;->getSprite()Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    move-result-object p0

    sget-object v0, Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;->SMILEYS:Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :cond_1
    :goto_0
    return v2
.end method

.method public showInvitation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->showInvitation:Z

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->showInvitation:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->questions:[Lcom/google/android/libraries/hats20/model/Question;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->questions:[Lcom/google/android/libraries/hats20/model/Question;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->promptMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->thankYouMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->promptParams:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/libraries/hats20/model/SurveyController;->answerUrl:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
