.class public final Lcom/android/systemui/clipboardoverlay/ClipboardOverlayControllerFactory;
.super Ljava/lang/Object;
.source "ClipboardOverlayControllerFactory.java"


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayControllerFactory;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayControllerFactory;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    iput-object p3, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayControllerFactory;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method
