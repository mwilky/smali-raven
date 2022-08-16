.class public Lcom/android/systemui/clipboardoverlay/ClipboardListener;
.super Lcom/android/systemui/CoreStartable;
.source "ClipboardListener.java"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# static fields
.field public static final EXTRA_SUPPRESS_OVERLAY:Ljava/lang/String; = "com.android.systemui.SUPPRESS_CLIPBOARD_OVERLAY"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SHELL_PACKAGE:Ljava/lang/String; = "com.android.shell"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final mClipboardManager:Landroid/content/ClipboardManager;

.field public mClipboardOverlayController:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

.field public final mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

.field public final mOverlayFactory:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayControllerFactory;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/clipboardoverlay/ClipboardOverlayControllerFactory;Landroid/content/ClipboardManager;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/CoreStartable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    iput-object p3, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mOverlayFactory:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayControllerFactory;

    iput-object p4, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardManager:Landroid/content/ClipboardManager;

    iput-object p5, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method public static shouldSuppressOverlay(Landroid/content/ClipData;Ljava/lang/String;Z)Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p2, "com.android.shell"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string p1, "com.android.systemui.SUPPRESS_CLIPBOARD_OVERLAY"

    invoke-virtual {p0, p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public final onPrimaryClipChanged()V
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipSource()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    const-string/jumbo v3, "ro.boot.qemu"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->shouldSuppressOverlay(Landroid/content/ClipData;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "ClipboardListener"

    const-string v1, "Clipboard overlay suppressed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v3, v1, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardOverlayController:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mOverlayFactory:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayControllerFactory;

    iget-object v6, v1, Lcom/android/systemui/CoreStartable;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    iget-object v7, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayControllerFactory;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v8, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayControllerFactory;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    new-instance v9, Lcom/android/systemui/screenshot/TimeoutHandler;

    invoke-direct {v9, v6}, Lcom/android/systemui/screenshot/TimeoutHandler;-><init>(Landroid/content/Context;)V

    iget-object v10, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayControllerFactory;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/screenshot/TimeoutHandler;Lcom/android/internal/logging/UiEventLogger;)V

    iput-object v11, v1, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardOverlayController:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    iget-object v3, v1, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v5, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_ENTERED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    invoke-interface {v3, v5, v4, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v3, v1, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v5, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_UPDATED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    invoke-interface {v3, v5, v4, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    :goto_0
    iget-object v3, v1, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardOverlayController:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    iget-object v5, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mExitAnimator:Landroid/animation/Animator;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    :cond_3
    iget-object v5, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mView:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object v5, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mView:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v5, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mActionContainerBackground:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v5, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mEditChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v5, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mRemoteCopyChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->resetActionChips()V

    iget-object v5, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mTimeoutHandler:Lcom/android/systemui/screenshot/TimeoutHandler;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v8

    const-string v9, "android.content.extra.IS_SENSITIVE"

    invoke-virtual {v8, v9}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v5

    goto :goto_1

    :cond_4
    move v8, v4

    :goto_1
    const v9, 0x7f1301ef

    const v10, 0x7f1301f9

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v11

    if-nez v11, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-virtual {v2, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string/jumbo v12, "systemui"

    if-nez v11, :cond_8

    invoke-virtual {v2, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    const-string v10, "clipboard_overlay_show_actions"

    invoke-static {v12, v10, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getTextLinks()Landroid/view/textclassifier/TextLinks;

    move-result-object v10

    if-eqz v10, :cond_6

    new-instance v10, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda1;

    invoke-direct {v10, v3, v2, v0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;Landroid/content/ClipData;Ljava/lang/String;)V

    invoke-static {v10}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_6
    if-eqz v8, :cond_7

    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f1301ee

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->showEditableText(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    :cond_7
    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->showEditableText(Ljava/lang/CharSequence;Z)V

    :goto_2
    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mActionContainerBackground:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    new-instance v8, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda2;

    invoke-direct {v8, v4, v3, v2}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    const v8, 0x7f1301fc

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :cond_8
    invoke-virtual {v2, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v2, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    new-instance v11, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v11, v5, v3, v0}, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v13, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual {v13, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_9

    const-string v15, "image"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    move v14, v5

    goto :goto_3

    :cond_9
    move v14, v4

    :goto_3
    const v15, 0x7f1301f1

    const/4 v7, 0x0

    if-eqz v8, :cond_a

    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mHiddenPreview:Landroid/widget/TextView;

    iget-object v8, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    const v10, 0x7f1301fd

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mHiddenPreview:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->showSinglePreview(Landroid/view/View;)V

    if-eqz v14, :cond_c

    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mHiddenPreview:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mHiddenPreview:Landroid/widget/TextView;

    sget-object v8, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    iget-object v10, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v8, v10, v7}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/String;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    goto :goto_4

    :cond_a
    if-eqz v14, :cond_b

    :try_start_0
    iget-object v8, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v6, 0x7f070635

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    new-instance v8, Landroid/util/Size;

    mul-int/lit8 v5, v6, 0x4

    invoke-direct {v8, v6, v5}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v13, v0, v8, v7}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v5, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mImagePreview:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->showSinglePreview(Landroid/view/View;)V

    iget-object v5, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mImagePreview:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mImagePreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mImagePreview:Landroid/widget/ImageView;

    sget-object v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    iget-object v6, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6, v7}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/String;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v5, "ClipboardOverlayCtrlr"

    const-string v6, "Thumbnail loading failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mTextPreview:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->showTextPreview(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    move v14, v4

    goto :goto_4

    :cond_b
    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mTextPreview:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->showTextPreview(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_c
    :goto_4
    if-eqz v14, :cond_d

    const-string v0, "clipboard_overlay_show_edit_button"

    invoke-static {v12, v0, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mEditChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mActionContainerBackground:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mEditChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mEditChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    iget-object v5, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    const v6, 0x7f1301f2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_d
    if-eqz v14, :cond_e

    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mActionContainerBackground:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    new-instance v5, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda2;

    invoke-direct {v5, v4, v3, v2}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    const v5, 0x7f1301f7

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_e
    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_f
    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mTextPreview:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->showTextPreview(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_10
    :goto_5
    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mTextPreview:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->showTextPreview(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.REMOTE_COPY"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    const v7, 0x7f13021a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_11
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v2, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mRemoteCopyChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    iget-object v6, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    const v7, 0x7f1301fb

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mRemoteCopyChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mRemoteCopyChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    new-instance v6, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda17;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v3, v5}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda17;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mActionContainerBackground:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_12
    const/4 v7, 0x1

    iget-object v2, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mRemoteCopyChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_7
    new-instance v2, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda5;

    invoke-direct {v2, v7, v3, v0}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->withWindowAttached(Ljava/lang/Runnable;)V

    iget-object v0, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mTimeoutHandler:Lcom/android/systemui/screenshot/TimeoutHandler;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/TimeoutHandler;->resetTimeout()V

    iget-object v0, v1, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardOverlayController:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda8;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    iput-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mOnSessionCompleteListener:Ljava/lang/Runnable;

    return-void
.end method

.method public final start()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "systemui"

    const-string v1, "clipboard_overlay_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    :cond_0
    return-void
.end method
