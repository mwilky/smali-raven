.class public final enum Lcom/android/systemui/media/MediaViewController$TYPE;
.super Ljava/lang/Enum;
.source "MediaViewController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/MediaViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/media/MediaViewController$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/media/MediaViewController$TYPE;

.field public static final enum PLAYER:Lcom/android/systemui/media/MediaViewController$TYPE;

.field public static final enum RECOMMENDATION:Lcom/android/systemui/media/MediaViewController$TYPE;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/media/MediaViewController$TYPE;

    const/4 v1, 0x0

    const-string v2, "PLAYER"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/media/MediaViewController$TYPE;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/media/MediaViewController$TYPE;->PLAYER:Lcom/android/systemui/media/MediaViewController$TYPE;

    new-instance v2, Lcom/android/systemui/media/MediaViewController$TYPE;

    const/4 v3, 0x1

    const-string v4, "RECOMMENDATION"

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/media/MediaViewController$TYPE;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/systemui/media/MediaViewController$TYPE;->RECOMMENDATION:Lcom/android/systemui/media/MediaViewController$TYPE;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/android/systemui/media/MediaViewController$TYPE;

    aput-object v0, v4, v1

    aput-object v2, v4, v3

    sput-object v4, Lcom/android/systemui/media/MediaViewController$TYPE;->$VALUES:[Lcom/android/systemui/media/MediaViewController$TYPE;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/media/MediaViewController$TYPE;
    .locals 1

    const-class v0, Lcom/android/systemui/media/MediaViewController$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaViewController$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/media/MediaViewController$TYPE;
    .locals 1

    sget-object v0, Lcom/android/systemui/media/MediaViewController$TYPE;->$VALUES:[Lcom/android/systemui/media/MediaViewController$TYPE;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/media/MediaViewController$TYPE;

    return-object v0
.end method
