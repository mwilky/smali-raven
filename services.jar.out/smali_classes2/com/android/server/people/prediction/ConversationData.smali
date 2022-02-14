.class Lcom/android/server/people/prediction/ConversationData;
.super Ljava/lang/Object;
.source "ConversationData.java"


# instance fields
.field private final mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

.field private final mEventHistory:Lcom/android/server/people/data/EventHistory;

.field private final mPackageName:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/android/server/people/data/ConversationInfo;Lcom/android/server/people/data/EventHistory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/prediction/ConversationData;->mPackageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/people/prediction/ConversationData;->mUserId:I

    iput-object p3, p0, Lcom/android/server/people/prediction/ConversationData;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    iput-object p4, p0, Lcom/android/server/people/prediction/ConversationData;->mEventHistory:Lcom/android/server/people/data/EventHistory;

    return-void
.end method


# virtual methods
.method getConversationInfo()Lcom/android/server/people/data/ConversationInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/prediction/ConversationData;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    return-object v0
.end method

.method getEventHistory()Lcom/android/server/people/data/EventHistory;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/prediction/ConversationData;->mEventHistory:Lcom/android/server/people/data/EventHistory;

    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/prediction/ConversationData;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getUserId()I
    .locals 1

    iget v0, p0, Lcom/android/server/people/prediction/ConversationData;->mUserId:I

    return v0
.end method
