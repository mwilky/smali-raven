.class public final enum Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;
.super Ljava/lang/Enum;
.source "ClipboardOverlayEvent.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_ACTION_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_DISMISSED_OTHER:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_DISMISS_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_EDIT_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_ENTERED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_REMOTE_COPY_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_SHARE_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_SWIPE_DISMISSED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_TAP_OUTSIDE:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_TIMED_OUT:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_UPDATED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const-string v1, "CLIPBOARD_OVERLAY_ENTERED"

    const/4 v2, 0x0

    const/16 v3, 0x3b5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_ENTERED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    new-instance v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const-string v3, "CLIPBOARD_OVERLAY_UPDATED"

    const/4 v4, 0x1

    const/16 v5, 0x3b6

    invoke-direct {v1, v3, v4, v5}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_UPDATED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    new-instance v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const-string v5, "CLIPBOARD_OVERLAY_EDIT_TAPPED"

    const/4 v6, 0x2

    const/16 v7, 0x3b7

    invoke-direct {v3, v5, v6, v7}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_EDIT_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    new-instance v5, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const-string v7, "CLIPBOARD_OVERLAY_SHARE_TAPPED"

    const/4 v8, 0x3

    const/16 v9, 0x42b

    invoke-direct {v5, v7, v8, v9}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_SHARE_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    new-instance v7, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const-string v9, "CLIPBOARD_OVERLAY_ACTION_TAPPED"

    const/4 v10, 0x4

    const/16 v11, 0x3b8

    invoke-direct {v7, v9, v10, v11}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_ACTION_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    new-instance v9, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const-string v11, "CLIPBOARD_OVERLAY_REMOTE_COPY_TAPPED"

    const/4 v12, 0x5

    const/16 v13, 0x3b9

    invoke-direct {v9, v11, v12, v13}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_REMOTE_COPY_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    new-instance v11, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const-string v13, "CLIPBOARD_OVERLAY_TIMED_OUT"

    const/4 v14, 0x6

    const/16 v15, 0x3ba

    invoke-direct {v11, v13, v14, v15}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_TIMED_OUT:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    new-instance v13, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const-string v15, "CLIPBOARD_OVERLAY_DISMISS_TAPPED"

    const/4 v14, 0x7

    const/16 v12, 0x3bb

    invoke-direct {v13, v15, v14, v12}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_DISMISS_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    new-instance v12, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const-string v15, "CLIPBOARD_OVERLAY_SWIPE_DISMISSED"

    const/16 v14, 0x8

    const/16 v10, 0x3bc

    invoke-direct {v12, v15, v14, v10}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_SWIPE_DISMISSED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    new-instance v10, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const-string v15, "CLIPBOARD_OVERLAY_TAP_OUTSIDE"

    const/16 v14, 0x9

    const/16 v8, 0x435

    invoke-direct {v10, v15, v14, v8}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_TAP_OUTSIDE:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    new-instance v8, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const-string v15, "CLIPBOARD_OVERLAY_DISMISSED_OTHER"

    const/16 v14, 0xa

    const/16 v6, 0x436

    invoke-direct {v8, v15, v14, v6}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_DISMISSED_OTHER:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    const/16 v6, 0xb

    new-array v6, v6, [Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v12, v6, v0

    const/16 v0, 0x9

    aput-object v10, v6, v0

    aput-object v8, v6, v14

    sput-object v6, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->$VALUES:[Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->$VALUES:[Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->mId:I

    return p0
.end method
