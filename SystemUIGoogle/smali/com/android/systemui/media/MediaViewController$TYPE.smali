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
.field private static final synthetic $VALUES:[Lcom/android/systemui/media/MediaViewController$TYPE;

.field public static final enum PLAYER:Lcom/android/systemui/media/MediaViewController$TYPE;

.field public static final enum RECOMMENDATION:Lcom/android/systemui/media/MediaViewController$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/media/MediaViewController$TYPE;

    const-string v1, "PLAYER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/media/MediaViewController$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/media/MediaViewController$TYPE;->PLAYER:Lcom/android/systemui/media/MediaViewController$TYPE;

    new-instance v1, Lcom/android/systemui/media/MediaViewController$TYPE;

    const-string v3, "RECOMMENDATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/media/MediaViewController$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/media/MediaViewController$TYPE;->RECOMMENDATION:Lcom/android/systemui/media/MediaViewController$TYPE;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/systemui/media/MediaViewController$TYPE;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/android/systemui/media/MediaViewController$TYPE;->$VALUES:[Lcom/android/systemui/media/MediaViewController$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/media/MediaViewController$TYPE;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/media/MediaViewController$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaViewController$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/media/MediaViewController$TYPE;
    .locals 4

    sget-object v0, Lcom/android/systemui/media/MediaViewController$TYPE;->$VALUES:[Lcom/android/systemui/media/MediaViewController$TYPE;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/systemui/media/MediaViewController$TYPE;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
