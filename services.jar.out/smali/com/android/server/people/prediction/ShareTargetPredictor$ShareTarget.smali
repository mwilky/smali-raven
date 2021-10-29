.class Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
.super Ljava/lang/Object;
.source "ShareTargetPredictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/prediction/ShareTargetPredictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShareTarget"
.end annotation


# instance fields
.field private final mAppTarget:Landroid/app/prediction/AppTarget;

.field private final mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

.field private final mEventHistory:Lcom/android/server/people/data/EventHistory;

.field private mScore:F


# direct methods
.method constructor <init>(Landroid/app/prediction/AppTarget;Lcom/android/server/people/data/EventHistory;Lcom/android/server/people/data/ConversationInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mAppTarget:Landroid/app/prediction/AppTarget;

    iput-object p2, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mEventHistory:Lcom/android/server/people/data/EventHistory;

    iput-object p3, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mScore:F

    return-void
.end method


# virtual methods
.method getAppTarget()Landroid/app/prediction/AppTarget;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mAppTarget:Landroid/app/prediction/AppTarget;

    return-object v0
.end method

.method getConversationInfo()Lcom/android/server/people/data/ConversationInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    return-object v0
.end method

.method getEventHistory()Lcom/android/server/people/data/EventHistory;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mEventHistory:Lcom/android/server/people/data/EventHistory;

    return-object v0
.end method

.method getScore()F
    .locals 1

    iget v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mScore:F

    return v0
.end method

.method setScore(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mScore:F

    return-void
.end method
