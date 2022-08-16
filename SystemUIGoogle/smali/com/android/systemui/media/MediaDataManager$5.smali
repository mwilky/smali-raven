.class public final Lcom/android/systemui/media/MediaDataManager$5;
.super Ljava/lang/Object;
.source "MediaDataManager.kt"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/MediaDataManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaDataManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager$5;->this$0:Lcom/android/systemui/media/MediaDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/media/MediaDataManager$5;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iget-object p2, p1, Lcom/android/systemui/media/MediaDataManager;->context:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/media/MediaDataManagerKt;->ART_URIS:[Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "qs_media_recommend"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p2}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p1, Lcom/android/systemui/media/MediaDataManager;->allowMediaRecommendations:Z

    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager$5;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iget-boolean p1, p0, Lcom/android/systemui/media/MediaDataManager;->allowMediaRecommendations:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/media/MediaDataManager;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    iget-object p1, p1, Lcom/android/systemui/media/SmartspaceMediaData;->targetId:Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/media/MediaDataManager;->dismissSmartspaceRecommendation(JLjava/lang/String;)V

    :cond_1
    return-void
.end method
