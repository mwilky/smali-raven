.class public final Lcom/android/systemui/media/taptotransfer/sender/MediaTttChipControllerSender;
.super Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;
.source "MediaTttChipControllerSender.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon<",
        "Lcom/android/systemui/media/taptotransfer/sender/ChipSenderInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public currentlyDisplayedChipState:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

.field public final uiEventLogger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/content/Context;Lcom/android/systemui/media/taptotransfer/common/MediaTttLogger;Landroid/view/WindowManager;Lcom/android/systemui/util/view/ViewUtil;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/gesture/TapGestureDetector;Landroid/os/PowerManager;Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;)V
    .locals 10

    move-object v9, p0

    const v8, 0x7f0e0142

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;-><init>(Landroid/content/Context;Lcom/android/systemui/media/taptotransfer/common/MediaTttLogger;Landroid/view/WindowManager;Lcom/android/systemui/util/view/ViewUtil;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/gesture/TapGestureDetector;Landroid/os/PowerManager;I)V

    move-object/from16 v0, p9

    iput-object v0, v9, Lcom/android/systemui/media/taptotransfer/sender/MediaTttChipControllerSender;->uiEventLogger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;

    new-instance v0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttChipControllerSender$commandQueueCallbacks$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttChipControllerSender$commandQueueCallbacks$1;-><init>(Lcom/android/systemui/media/taptotransfer/sender/MediaTttChipControllerSender;)V

    move-object v1, p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method


# virtual methods
.method public final removeChip(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttChipControllerSender;->currentlyDisplayedChipState:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->isMidTransfer()Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    const-string v0, "TIMEOUT"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-super {p0, p1}, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->removeChip(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttChipControllerSender;->currentlyDisplayedChipState:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    return-void
.end method

.method public final updateChipView(Lcom/android/systemui/media/taptotransfer/common/ChipInfoCommon;Landroid/view/ViewGroup;)V
    .locals 6

    check-cast p1, Lcom/android/systemui/media/taptotransfer/sender/ChipSenderInfo;

    iget-object v0, p1, Lcom/android/systemui/media/taptotransfer/sender/ChipSenderInfo;->state:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    iput-object v0, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttChipControllerSender;->currentlyDisplayedChipState:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    iget-object v1, p1, Lcom/android/systemui/media/taptotransfer/sender/ChipSenderInfo;->routeInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v1, v2, v2}, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->setIcon$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/android/systemui/media/taptotransfer/sender/ChipSenderInfo;->routeInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b06a3

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getChipTextString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b03a5

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->isMidTransfer()Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0b0720

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/media/taptotransfer/sender/ChipSenderInfo;->routeInfo:Landroid/media/MediaRoute2Info;

    iget-object p1, p1, Lcom/android/systemui/media/taptotransfer/sender/ChipSenderInfo;->undoCallback:Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    iget-object v5, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttChipControllerSender;->uiEventLogger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;

    invoke-virtual {v0, v2, p1, p0, v5}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->undoClickListener(Landroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;Lcom/android/systemui/media/taptotransfer/sender/MediaTttChipControllerSender;Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    move p0, v4

    :goto_1
    if-eqz p0, :cond_2

    move p0, v4

    goto :goto_2

    :cond_2
    move p0, v3

    :goto_2
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    const p0, 0x7f0b0282

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->isTransferFailure()Z

    move-result p1

    if-eqz p1, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
