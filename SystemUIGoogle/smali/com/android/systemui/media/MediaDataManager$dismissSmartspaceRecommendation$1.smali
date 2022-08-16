.class public final Lcom/android/systemui/media/MediaDataManager$dismissSmartspaceRecommendation$1;
.super Ljava/lang/Object;
.source "MediaDataManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/MediaDataManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaDataManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager$dismissSmartspaceRecommendation$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager$dismissSmartspaceRecommendation$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    iget-object v0, v0, Lcom/android/systemui/media/SmartspaceMediaData;->targetId:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/media/MediaDataManager;->notifySmartspaceMediaDataRemoved(Ljava/lang/String;Z)V

    return-void
.end method
