.class public final enum Lcom/android/systemui/media/dialog/MediaOutputDialog$MediaOutputEvent;
.super Ljava/lang/Enum;
.source "MediaOutputDialog.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/dialog/MediaOutputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaOutputEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/media/dialog/MediaOutputDialog$MediaOutputEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/media/dialog/MediaOutputDialog$MediaOutputEvent;

.field public static final enum MEDIA_OUTPUT_DIALOG_SHOW:Lcom/android/systemui/media/dialog/MediaOutputDialog$MediaOutputEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputDialog$MediaOutputEvent;

    invoke-direct {v0}, Lcom/android/systemui/media/dialog/MediaOutputDialog$MediaOutputEvent;-><init>()V

    sput-object v0, Lcom/android/systemui/media/dialog/MediaOutputDialog$MediaOutputEvent;->MEDIA_OUTPUT_DIALOG_SHOW:Lcom/android/systemui/media/dialog/MediaOutputDialog$MediaOutputEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/systemui/media/dialog/MediaOutputDialog$MediaOutputEvent;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/systemui/media/dialog/MediaOutputDialog$MediaOutputEvent;->$VALUES:[Lcom/android/systemui/media/dialog/MediaOutputDialog$MediaOutputEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "MEDIA_OUTPUT_DIALOG_SHOW"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x28f

    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputDialog$MediaOutputEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/media/dialog/MediaOutputDialog$MediaOutputEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/media/dialog/MediaOutputDialog$MediaOutputEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/dialog/MediaOutputDialog$MediaOutputEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/media/dialog/MediaOutputDialog$MediaOutputEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/media/dialog/MediaOutputDialog$MediaOutputEvent;->$VALUES:[Lcom/android/systemui/media/dialog/MediaOutputDialog$MediaOutputEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/media/dialog/MediaOutputDialog$MediaOutputEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/media/dialog/MediaOutputDialog$MediaOutputEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/dialog/MediaOutputDialog$MediaOutputEvent;->mId:I

    return p0
.end method
