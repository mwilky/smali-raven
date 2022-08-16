.class public final Lcom/android/systemui/media/MediaDataManager$3$1;
.super Ljava/lang/Object;
.source "MediaDataManager.kt"

# interfaces
.implements Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/MediaDataManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaDataManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager$3$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTargetsAvailable(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceTarget;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager$3$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager;->smartspaceMediaDataProvider:Lcom/android/systemui/media/SmartspaceMediaDataProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SmartspaceMediaDataProvider;->onTargetsAvailable(Ljava/util/List;)V

    return-void
.end method
