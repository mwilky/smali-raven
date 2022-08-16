.class final enum Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;
.super Ljava/lang/Enum;
.source "ScreenshotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/ScreenshotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PendingInteraction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

.field public static final enum EDIT:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

.field public static final enum PREVIEW:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

.field public static final enum QUICK_SHARE:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

.field public static final enum SHARE:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    const/4 v1, 0x0

    const-string v2, "PREVIEW"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;->PREVIEW:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    const/4 v3, 0x1

    const-string v4, "EDIT"

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;->EDIT:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    new-instance v4, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    const/4 v5, 0x2

    const-string v6, "SHARE"

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;->SHARE:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    new-instance v6, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    const/4 v7, 0x3

    const-string v8, "QUICK_SHARE"

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;->QUICK_SHARE:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;->$VALUES:[Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;
    .locals 1

    const-class v0, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;
    .locals 1

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;->$VALUES:[Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    invoke-virtual {v0}, [Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    return-object v0
.end method
