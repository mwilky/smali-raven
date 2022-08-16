.class public final Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon$displayChip$2;
.super Ljava/lang/Object;
.source "MediaTttChipControllerCommon.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->displayChip(Lcom/android/systemui/media/taptotransfer/common/ChipInfoCommon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon$displayChip$2;->this$0:Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon$displayChip$2;->this$0:Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;

    const-string v0, "TIMEOUT"

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->removeChip(Ljava/lang/String;)V

    return-void
.end method
