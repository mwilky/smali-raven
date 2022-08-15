.class public final enum Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;
.super Ljava/lang/Enum;
.source "DreamUiEventLogger.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamUiEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DreamUiEventEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

.field public static final enum DREAM_START:Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

.field public static final enum DREAM_STOP:Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    const-string v1, "DREAM_START"

    const/4 v2, 0x0

    const/16 v3, 0x241

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;->DREAM_START:Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    new-instance v1, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    const-string v3, "DREAM_STOP"

    const/4 v4, 0x1

    const/16 v5, 0x242

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;->DREAM_STOP:Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;->$VALUES:[Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

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

    iput p3, p0, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;
    .locals 1

    const-class v0, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    return-object p0
.end method

.method public static values()[Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;
    .locals 1

    sget-object v0, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;->$VALUES:[Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    invoke-virtual {v0}, [Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;->mId:I

    return p0
.end method
