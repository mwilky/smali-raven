.class public final Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_RECEIVER_SUCCEEDED$undoClickListener$1;
.super Ljava/lang/Object;
.source "ChipStateSender.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $controllerSender:Lcom/android/systemui/media/taptotransfer/sender/MediaTttChipControllerSender;

.field public final synthetic $routeInfo:Landroid/media/MediaRoute2Info;

.field public final synthetic $uiEventLogger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;

.field public final synthetic $undoCallback:Lcom/android/internal/statusbar/IUndoMediaTransferCallback;


# direct methods
.method public constructor <init>(Landroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;Lcom/android/systemui/media/taptotransfer/sender/MediaTttChipControllerSender;Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;)V
    .locals 0

    iput-object p4, p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_RECEIVER_SUCCEEDED$undoClickListener$1;->$uiEventLogger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;

    iput-object p2, p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_RECEIVER_SUCCEEDED$undoClickListener$1;->$undoCallback:Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    iput-object p3, p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_RECEIVER_SUCCEEDED$undoClickListener$1;->$controllerSender:Lcom/android/systemui/media/taptotransfer/sender/MediaTttChipControllerSender;

    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_RECEIVER_SUCCEEDED$undoClickListener$1;->$routeInfo:Landroid/media/MediaRoute2Info;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_RECEIVER_SUCCEEDED$undoClickListener$1;->$uiEventLogger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;

    sget-object v0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;->MEDIA_TTT_SENDER_UNDO_TRANSFER_TO_RECEIVER_CLICKED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;->logUndoClicked(Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;)V

    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_RECEIVER_SUCCEEDED$undoClickListener$1;->$undoCallback:Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    invoke-interface {p1}, Lcom/android/internal/statusbar/IUndoMediaTransferCallback;->onUndoTriggered()V

    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_RECEIVER_SUCCEEDED$undoClickListener$1;->$controllerSender:Lcom/android/systemui/media/taptotransfer/sender/MediaTttChipControllerSender;

    new-instance v0, Lcom/android/systemui/media/taptotransfer/sender/ChipSenderInfo;

    sget-object v1, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->TRANSFER_TO_THIS_DEVICE_TRIGGERED:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    iget-object v2, p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_RECEIVER_SUCCEEDED$undoClickListener$1;->$routeInfo:Landroid/media/MediaRoute2Info;

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_RECEIVER_SUCCEEDED$undoClickListener$1;->$undoCallback:Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/media/taptotransfer/sender/ChipSenderInfo;-><init>(Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;Landroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->displayChip(Lcom/android/systemui/media/taptotransfer/common/ChipInfoCommon;)V

    return-void
.end method
