.class Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;
.super Ljava/lang/Object;
.source "ContextHubClientBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/ContextHubClientBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingIntentRequest"
.end annotation


# instance fields
.field private mNanoAppId:J

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mValid:Z

.field final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;


# direct methods
.method constructor <init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mValid:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;Landroid/app/PendingIntent;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mValid:Z

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mPendingIntent:Landroid/app/PendingIntent;

    iput-wide p3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mNanoAppId:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mValid:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public getNanoAppId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mNanoAppId:J

    return-wide v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public hasPendingIntent()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mValid:Z

    return v0
.end method
